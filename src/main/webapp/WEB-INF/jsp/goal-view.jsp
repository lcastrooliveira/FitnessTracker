<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- <div> -->
<!-- 	<h1>Inside Add Goal Angular!!!</h1> -->
<!-- </div> -->

<div ng-switch="currentState">
	<div ng-switch-when="LIST_STATE" ng-include="'ui/goal-list.jsp'"></div>
	<div ng-switch-when="INSERT_STATE" ng-include="'ui/goal-insert.jsp'"></div>
</div>