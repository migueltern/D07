<%--
 * edit.jsp
 *
 * Copyright (C) 2017 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>



<display:table name="xxx" id="row" class="displaytag">

	<spring:message code="xxx.ticker" var="tickerHeader" />
	<display:column property="ticker" title="${tickerHeader}"
		sortable="false" />

	<spring:message code="xxx.format.date1" var="pattern"></spring:message>
	<spring:message code="xxx.createdMoment" var="createdMomentHeader" />
	<display:column property="createdMoment" title="${createdMomentHeader}"
		sortable="false" format="${pattern}">
	</display:column>

	<spring:message code="xxx.format.date1" var="pattern"></spring:message>
	<spring:message code="xxx.displayMoment" var="displayMomentHeader" />
	<display:column property="displayMoment" title="${displayMomentHeader}"
		sortable="false" format="${pattern}">
	</display:column>

	<spring:message code="xxx.gauge" var="gaugeHeader" />
	<display:column property="gauge" title="${gaugeHeader}"
		sortable="false" />

	<spring:message code="xxx.text" var="textHeader" />
	<display:column property="text" title="${textHeader}" sortable="false" />


	<spring:message code="xxx.trip.link" var="tripHeader" />
	<display:column title="${tripHeader }">
		<spring:url value="trip/display.do" var="displayTripURL">
			<spring:param name="tripId" value="${row.trip.id}" />
		</spring:url>
		<a href="${displayTripURL }"><jstl:out value="${row.trip.title }" /></a>
	</display:column>
</display:table>







