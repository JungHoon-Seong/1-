<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jqGrid Test</title>

<!-- jQuery -->
<script type="text/javascript" src="./jquery-3.4.1.min.js"></script>

<!-- jQgrid -->
<link rel="stylesheet" type="text/css" media="screen" href="/resources/jQueryUI/jquery-ui.css" />
<link rel="stylesheet" type="text/css" media="screen" href="/resources/jqGrid_4.4.3/css/ui.jqgrid.css" />

<script type="text/javascript" src="/resources/jqGrid_4.4.3/js/jquery-1.7.2.min.js"></script>
<!--<script type="text/javascript" src="./jqGrid_4.4.3/js/jquery.jqGrid.src.js" ></script> -->
<script type="text/javascript" src="/resources/jqGrid_4.4.3/js/i18n/grid.locale-kr.js" ></script>
<script type="text/javascript" src="/resources/jqGrid_4.4.3/js/jquery.jqGrid.min.js" ></script>

<style type="text/css">

.ui-jqgrid .ui-jqgrid-bdiv { overflow-y: scroll }

</style>



</head>
<body>
  <table id="jqGrid"></table>
<div id="jqGridPager"></div>
<button type="button" id="btn">버튼</button>

<script type="text/javascript"> 
       
		var jsonData;
		
		$(document).ready(function () {
			
		
            $("#jqGrid").jqGrid({
                mtype: "GET",
                datatype: "local",
				colNames:['1','2','3','4','5'],
                colModel: [
                    { name: 'OrderID', 	index: 'OrderID', 	key: true, width: 75 },
                    { name: 'CustomerID', index: 'Customer ID', width: 150 },
                    { name: 'OrderDate', 	index: 'Order Date', 	width: 150 },
                    { name: 'Freight', 	index: 'Freight', 	width: 150 },
                    { name: 'ShipName', 	index:'Ship Name', 	width: 150 }
                ],
                viewrecords: true,
                height: 230,
                rowNum: 10,
				rowList:[10,20,30],
                pager: "#jqGridPager"
            });
			
			var url = 'http://trirand.com/blog/phpjqgrid/examples/jsonp/getjsonp.php?callback=?&qwery=longorders';
			$.getJSON(url, function(data) {
				jsonData = data.rows;
				$.each(data, function(i, item){
				});
			});

        });
		
		$('#btn').click(function(){
			
			//데이터 추가
            for(var i=0; i<jsonData.length ; i++ ){
                //console.log(i);
				$('#jqGrid').jqGrid('addRowData', i, jsonData[i]);
            }
			//다시 로드 
			$("#jqGrid").trigger('reloadGrid');

		});

    </script>
</script>

</body>
</html>