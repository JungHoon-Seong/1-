package com.company.board.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.company.board.model.vo.Board;
import com.company.board.service.BoardService;
import com.company.member.model.vo.Member;
import com.google.api.client.util.Value;
import com.google.cloud.storage.BlobInfo;
import com.google.cloud.storage.Storage;
import com.google.cloud.storage.StorageOptions;
import com.google.cloud.storage.Storage.BlobTargetOption;
import com.google.cloud.storage.Storage.PredefinedAcl;


@Controller
public class BoardController {
	
	private static Storage storage = StorageOptions.getDefaultInstance().getService();
	
	@Value("${file.storage}")
	private Resource localFilePath;

	
	@Autowired 
	private BoardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value="board", method = RequestMethod.GET)
	public ModelAndView selectBoardList(ModelAndView mv,String clickedPage, 
			@RequestParam(value = "p", defaultValue = "1")String pageNum,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		
		logger.info("게시물 페이지에 온걸 환영하는 logger");
		//System.out.println("컨트롤러 최초접근");
		final int PAGE_SIZE = 5;
		final int PAGE_BLOCK = 3;
		int currentPage = 1;
		int listCount = 0;
		int pageCount = 0;
		try {
			listCount = boardService.getListCount();
			
			
		} catch (Exception e) {
			mv.addObject("msg", "게시판 오류발생");
			mv.addObject("url", "index");
			e.printStackTrace();
		}
		
		if (pageNum != null) {
			clickedPage = pageNum;
		}
		
		int startPage = ((int)((double)currentPage / PAGE_SIZE + 0.9) - 1) * PAGE_SIZE  + 1;
		
		pageCount = (listCount / PAGE_SIZE) + (listCount % PAGE_SIZE == 0 ? 0 : 1);
		
		int endPage = startPage + PAGE_SIZE - 1;
		if(endPage > pageCount) endPage=pageCount;
		int maxPage = (int)((double)listCount / PAGE_SIZE + 0.9);
		if (clickedPage != null) {
			if (Integer.parseInt(clickedPage) <= 0) {
				currentPage = 1;
			} else if(Integer.parseInt(clickedPage) > maxPage){
				currentPage = maxPage;
			}else {
				currentPage = Integer.parseInt(clickedPage);
			}
		}
		
		if (currentPage % PAGE_BLOCK == 0) {
			startPage = (currentPage / PAGE_BLOCK - 1) * PAGE_BLOCK + 1;
		}else {
			startPage = (currentPage / PAGE_BLOCK) * PAGE_BLOCK + 1;
		}
		
		
		List<Board> blist = null;
				
		try {
			blist = boardService.selectBoardList(currentPage, PAGE_SIZE);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("blist",blist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("pageCount",pageCount);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage);
//		if (memberId != null) {
//			mv.addObject("memberId",memberId.getHouseNum());
//		}
		//System.out.println("컨트롤러 마지막접근");
		mv.setViewName("/board/board_list");
		
		return mv;
	}
	
	
	@RequestMapping(value = "board-view", method = RequestMethod.GET)	
	public ModelAndView selectBoardView(ModelAndView mv, @RequestParam(value="no", defaultValue="0")int brno,
			HttpServletRequest request) {
		String viewPage = "";
		
		Member memberId= (Member)request.getSession().getAttribute("member");
		
		List<Board> boardList = null;
		try {
			boardList = boardService.selectBoardView(brno);
			viewPage = "/board/board_contentview";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//todo 조회수 +1하는 기능 추가해야함
		
		
		mv.addObject("blist",boardList);
		if(memberId != null) {
			mv.addObject("memberId", memberId.getMm_userId());
		}
		mv.setViewName(viewPage);
		
		return mv;
	}
	
	@RequestMapping(value="board_insert", method=RequestMethod.GET)
	public String insertBoard() {
		
		return "./board/board_insert.jsp";
	}
	
	@RequestMapping(value="board-insert", method=RequestMethod.POST)
	public ModelAndView insertBoard(ModelAndView mv,@RequestParam(value="t" , defaultValue = "0")String title,
			@RequestParam(value="c" , defaultValue = "0")String Content,
			@RequestParam("image") MultipartFile image,
			@RequestParam("file") MultipartFile file,
			HttpServletRequest request
			) {
		
		
		int boardResult = 0;
		
		String imgsrc = "";
		String filesrc = "";
		//이미지를 서버에 저장
		imgsrc = googleCloudPlatformUpload(image);
			if(imgsrc != null){
					logger.info("이미지 저장주소: " + imgsrc);
			}
		//파일을 서버에 저장
		filesrc = googleCloudPlatformUpload(file);
			if(filesrc != null) {
				logger.info("파일 저장주소: " + filesrc);
			}
		
		Member member = (Member)request.getSession().getAttribute("member");
		String userId = member.getMm_userId();
		
		
		if( (image == null) && (file == null) ) {
			Board bvo = new Board(userId,title,Content);
			boardResult = boardService.insertBoardwithImg(bvo);
		}else {
			Board bvo = new Board(userId,title,Content,imgsrc,filesrc);
			boardResult = boardService.insertBoard(bvo);
		}
		
		if(boardResult == 0) {
			logger.error("입력 실패");
		}else {
			logger.info("입력 성공");
		}
		
		
		mv.addObject("result", boardResult);
		mv.setViewName("redirect: ./board");
		
		return mv;
		
	}
	@RequestMapping(value = "board-update",method = RequestMethod.GET)
	public ModelAndView updateBoard(ModelAndView mv,
			@RequestParam(value="no", defaultValue ="0")int brno) {
		String viewPage = "";
		
		List<Board> boardList = null;
		try {
			boardList = boardService.selectBoardView(brno);
			viewPage = "/board/board_update";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mv.addObject("boardList",boardList);
		mv.setViewName(viewPage);
		
		return mv;
	}
	
	@RequestMapping(value = "board-update", method = RequestMethod.POST)
	public ModelAndView updateBoard(ModelAndView mv, @RequestParam(value="t")String title,
			@RequestParam(value="c") String content,
			@RequestParam(value="no",defaultValue="0") int brno,
			@RequestParam(value="image")MultipartFile image,
			@RequestParam(value="files")MultipartFile file,
			HttpServletRequest request) {
		String viewPage = "";
		int boardResult = 0;
		
		
		String imgsrc = "";
		String filesrc = "";
		//이미지를 서버에 저장
		imgsrc = googleCloudPlatformUpload(image);
			if(imgsrc != null){
					logger.info("이미지 저장주소: " + imgsrc);
			}
		//파일을 서버에 저장
		filesrc = googleCloudPlatformUpload(file);
			if(filesrc != null) {
				logger.info("파일 저장주소: " + filesrc);
			}
				
		if( (image == null) && (file == null) )
		{
			Board bvo = new Board( title, content);
			boardResult = boardService.updateBoard(bvo);
		}else {
			Board bvo = new Board(title, content,imgsrc,filesrc);
			boardResult = boardService.updateBoard(bvo);
		}
		
		if(boardResult == 0) {
			logger.error("업데이트 실패");
		}else {
			logger.info("업데이트 성공");
		}
				
		
		mv.addObject("result", boardResult);
		mv.setViewName(viewPage);
		return mv;
	}
	
	
	
	
	
	
	@RequestMapping(value="jqgrid_list", method = RequestMethod.GET)
	public ModelAndView jqgridBoardList(ModelAndView mv) throws Exception{
		
		mv.setViewName("/jqgrid_list");
		
		return mv;
		
		
	}
		
		
		public String googleCloudPlatformUpload(MultipartFile file) {
			//reName 규칙 설정
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
	        int rdv = (int)(Math.random()*1000);
	        String reName = sdf.format(System.currentTimeMillis())+"_"+rdv;

			try {			
				BlobInfo blobInfo = storage.create(
					BlobInfo.newBuilder("apt_kh_team2", reName+file.getOriginalFilename()).build(), //get original file name
					file.getBytes(), // the file
					BlobTargetOption.predefinedAcl(PredefinedAcl.PUBLIC_READ) // Set file permission
				);
				return blobInfo.getMediaLink(); // Return file url
			}catch(IllegalStateException | IOException e){
				throw new RuntimeException(e);
			} 
			
	  	}
	
	

}
