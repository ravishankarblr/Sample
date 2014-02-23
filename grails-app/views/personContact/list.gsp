<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
  	Total number of contacts = <b>${totalContCount} </b>  	
  	<br>Total Salary = <b> $${salSum} </b>
  					<table>
					<thead>
						<tr>

							<g:sortableColumn property="name"
								title="${message(code: 'personContact.name.label', default: 'Name')}" />
							
							<g:sortableColumn property="status"
								title="${message(code: 'personContact.status.label', default: 'Status')}" />
								
							<th id="actions-col" class="table-header-left">Actions</th>
						</tr>
					</thead>
					
					<tbody>
						<g:each in="${personContactList}" var="personContactInstance">
							<tr>
								<td>
									${personContactInstance.personName}
								</td>
								
								<td>
									${fieldValue(bean : personContactInstance, field : "personStatus")}
									<!--  ${personContactInstance.personStatus}-->
								</td>
								
							</tr>
						</g:each>
					</tbody>

				</table>
  	
  </div>
</body>
</html>