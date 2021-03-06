<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/js/jquery-easyui-1.3.3/themes/default/easyui.css">
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/js/jquery-easyui-1.3.3/themes/icon.css">
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/js/jquery-easyui-1.3.3/demo/demo.css">
	    <script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery-easyui-1.3.3/jquery.min.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
         <script type="text/javascript">
				 //设置为点击进入明细界面
			       function titleDetail(value, row, index)
			      {
			        return "<a href='${pageContext.request.contextPath}/user_titleDetail.action?id=" + row.subjectId + "' target='_blank' style='font-size:15px'>"+value+"</a>";
			      }
		</script>
         </script>
       <style type="text/css">
	    	.panel-title{
	    		font-size: 18px;
	    		padding: 6px;
	    	}
	    	.datagrid-header .datagrid-cell span{
	    		font-size:18px;
	    		padding: 6px;
	    		text-align: center;
	    	}
	    	.datagrid-cell {
	    		text-align: center;
	    		font-size:15px;
	    		padding:4px;
	    		padding-left: 8px;
	    		padding-right: 8px;
	    	}
	    	
       </style>
</head>
<body>
         	<table class="easyui-datagrid" title="选题结果" id="dg" data-options="pagination:true" fit="true" url="${pageContext.request.contextPath}/teacher_assignResult.action" rownumbers="true"
		                    >
		           <thead>
		            <tr>
		                    <th field="cb" checkbox="true"></th>
		                    <th field="subjectId" hidden="true">编号</th>
		                    <th field="title"  formatter=titleDetail>标题</th>
		                    <th field="studentName" >已分配学生</th>    	               
		               </tr>
		           </thead>
		     </table>
</body>
</html>