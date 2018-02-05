<%--
 * list.jsp
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
<jsp:useBean id="util" class="utilities.Methodutilities" scope="page" />



<!-- List of xxx -->
<display:table name="xxxs" id="row" requestURI="${requestURI}"
	pagesize="5" class="displaytag" keepStatus="true">
	<%!String	estilo;%>
	<jstl:choose>

		<jstl:when test="${row.gauge=='1'}">
			<%=estilo = "red"%>

		</jstl:when>

		<jstl:when test="${row.gauge=='2'}">

			<%=estilo = "yellow"%>
		</jstl:when>

		<jstl:when test="${row.gauge=='3'}">
			<%=estilo = "green"%>
		</jstl:when>


	</jstl:choose>


	<security:authorize access="hasRole('MANAGER')">



		<spring:message code="xxx.edit" var="Edit" />
		<display:column title="${Edit}" sortable="true" class="<%= estilo %>">
			<jstl:if test="${util.publicationDate(row.displayMoment)==true}">

				<spring:url value="xxx/manager/edit.do" var="editURL">
					<spring:param name="xxxId" value="${row.id}" />
				</spring:url>
				<a href="${editURL}"><spring:message code="xxx.edit" /></a>
			</jstl:if>
		</display:column>


		<spring:message code="xxx.display" var="display" />
		<display:column title="${display}" sortable="true"
			class="<%= estilo %>">

			<spring:url value="xxx/manager/display.do" var="displayURL">
				<spring:param name="xxxId" value="${row.id}" />
			</spring:url>
			<a href="${displayURL}"><spring:message code="xxx.display" /></a>

		</display:column>
	</security:authorize>


	<!-- Attributes -->

	<spring:message code="xxx.ticker" var="tickerHeader" />
	<display:column property="ticker" title="${tickerHeader}"
		sortable="true" class="<%= estilo %>" />

	<spring:message code="xxx.format.date1" var="pattern"></spring:message>
	<spring:message code="xxx.createdMoment" var="createdMomentHeader" />
	<display:column property="createdMoment" title="${createdMomentHeader}"
		sortable="true" class="<%= estilo %>" format="${pattern}" />

	<spring:message code="xxx.format.date1" var="pattern"></spring:message>
	<spring:message code="xxx.displayMoment" var="displayMomentHeader" />
	<display:column property="displayMoment" title="${displayMomentHeader}"
		sortable="true" class="<%= estilo %>" format="${pattern}" />

	<spring:message code="xxx.text" var="textHeader" />
	<display:column property="text" title="${textHeader}" sortable="true"
		class="<%= estilo %>" />

	<spring:message code="xxx.gauge" var="gaugeHeader" />
	<display:column property="gauge" title="${gaugeHeader}" sortable="true"
		class="<%= estilo %>" />


	<spring:message code="xxx.trip.link" var="tripHeader" />
	<display:column title="${tripHeader}" sortable="true"
		class="<%= estilo %>">

		<spring:url value="trip/display.do" var="displayTripURL">
			<spring:param name="tripId" value="${row.trip.id}" />
		</spring:url>
		<a href="${displayTripURL}"><jstl:out value="${row.trip.title}"/></a>
	</display:column>



</display:table>
<security:authorize access="hasRole('MANAGER')">
	<div>
		<a href="xxx/manager/create.do"><spring:message code="xxx.create" /></a>
	</div>

</security:authorize>
