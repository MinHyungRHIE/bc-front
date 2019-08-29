<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="wrapper">
    <tiles:insertAttribute name="header"/>
    <div id="dashboard1">
        <tiles:insertAttribute name="sidebar"/>
        <tiles:insertAttribute name="content"/>
    </div>
</div>
</body>

<!--   Core JS Files and PerfectScrollbar library inside jquery.ui   -->

<script src="js/bootstrap/jquery-ui.min.js" type="text/javascript"></script>
<script src="js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
</html>