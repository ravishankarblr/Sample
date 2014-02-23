<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Insert title here</title>
</head>
<body>
	<div class="body">
		Total number of accounts = <b>
			${totalCount}
		</b>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="name"
						title="${message(code: 'organization.name.label', default: 'Name')}" />

					<g:sortableColumn property="status"
						title="${message(code: 'organization.approved.label', default: 'Status')}" />

					<th id="actions-col" class="table-header-left">Actions</th>
				</tr>
			</thead>
			<tbody>
				<g:each in="${accountInstanceList}" status="Active"
					var="accountInstance">
					<tr>
						<td>
							<%--${fieldValue(bean : accountInstance, field : "name")}
								--%> ${accountInstance.name}
						</td>
						<td>
							${fieldValue(bean : accountInstance, field : "status")}
						</td>
						<td>N/A</td>
					</tr>
				</g:each>
			</tbody>

		</table>
	</div>
</body>
</html>