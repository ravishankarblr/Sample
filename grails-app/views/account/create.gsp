<%@ page import="sample.Account"%>
<!DOCTYPE html>
<html>
<head>
<%--<meta name="layout" content="LayoutAceNav">
--%><g:set var="entityName"
	value="${message(code: 'account.label', default: 'Account')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div id="create-account" class="content scaffold-create" role="main">
		<g:form action="save" class="form-horizontal">
			<fieldset>
				<div class="page-header position-relative">
					<h1>Create Account</h1>
				</div>
				<g:render template="/pieces/flashmsg" plugin="ds-ui" />
				<fieldset class="form">
					<g:render template="form" />
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save"
						value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</fieldset>
		</g:form>
	</div>
</body>
</html>
