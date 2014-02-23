<%@ page import="sample.Account"%>

<%--
<div class="control-group ${hasErrors(bean: accountInstance, field: 'deleteFlag', 'error')} ">
	<label class="control-label" for="deleteFlag">
		<g:message code="account.deleteFlag.label" default="Delete Flag" />
		
	</label><div class="controls">
	<g:checkBox name="deleteFlag" value="${accountInstance?.deleteFlag}" />
</div></div>

<g:if test="${accountInstance?.id }">
<div class="control-group ${hasErrors(bean: accountInstance, field: 'inSync', 'error')} ">
	<label class="control-label" for="inSync">
		<g:message code="account.inSync.label" default="In Sync" />
		
	</label>
	<div class="controls"> <g:textField  name="inSyncUi" value="${accountInstance?.inSync ? 'Yes' : 'No'}" readonly="true"/>
</div></div>
</g:if>
<g:if test="${accountInstance?.accountQBId }">
<div class="control-group ${hasErrors(bean: accountInstance, field: 'accountQBId', 'error')} ">
	<label class="control-label" for="accountQBId">
		<g:message code="account.accountQBId.label" default="account QBI d" />
		
	</label><div class="controls">
	<g:textField name="accountQBId" value="${accountInstance?.accountQBId}" />
</div></div>
</g:if>
<div class="control-group ${hasErrors(bean: accountInstance, field: 'businessPartner', 'error')} ">
	<label class="control-label" for="client">
		* <g:message code="account.client.label" default="Client" />
		
	</label>
	<div class="controls">
		<g:select id="businessPartner" name="businessPartner.id" from="${accountVisibiltyList}" optionKey="id" 
		value="${accountInstance.businessPartner?.id}" class="span2.5"
		noSelection="['':'-Select Client-']"/>
</div></div>

<div class="control-group ${hasErrors(bean: accountInstance, field: 'itemName', 'error')} ">
	<label class="control-label" for="itemName">
		<g:message code="account.itemName.label" default="Item Name" />
		
	</label><div class="controls">
	<g:textField name="itemName" value="${accountInstance?.itemName}" />
</div></div>

<div class="control-group ${hasErrors(bean: accountInstance, field: 'price', 'error')} ">
	<label class="control-label" for="price">
		<g:message code="account.price.label" default="Price" />
		
	</label><div class="controls">
	<g:field type="number" name="price" value="${accountInstance.price}" />
</div></div>

--%>




<div
	class="control-group ${hasErrors(bean: accountInstance, field: 'name', 'error')} ">
	<label class="control-label" for="name"> <g:message
			code="account.name.label" default="Account Name" />

	</label>
	<div class="controls">
		<g:textField name="name" value="${accountInstance?.name}" />
	</div>
</div>

<div
	class="control-group ${hasErrors(bean: accountInstance, field: 'email', 'error')} ">
	<label class="control-label" for="email"> <g:message
			code="account.email.label" default="Email" />

	</label>
	<div class="controls">
		<g:textField name="email" value="${accountInstance?.email}" />
	</div>
</div>

<div
	class="control-group ${hasErrors(bean: accountInstance, field: 'city', 'error')} ">
	<label class="control-label" for="city"> <g:message
			code="account.city.label" default="City" />

	</label>
	<div class="controls">
		<g:textField name="city" value="${accountInstance?.city}" />
	</div>
</div>

<div
	class="control-group ${hasErrors(bean: accountInstance, field: 'phone', 'error')} ">
	<label class="control-label" for="phone"> <g:message
			code="account.phone.label" default="Phone" />

	</label>
	<div class="controls">
		<g:field type="number" name="phone" value="${accountInstance.phone}" />
	</div>
</div>

<div
	class="control-group ${hasErrors(bean: accountInstance, field: 'country', 'error')} ">
	<label class="control-label" for="countries"> * <g:message
			code="account.country.label" default="Country" />

	</label>
	<div class="controls">
		<g:select id="country" name="country"
			from="${countries}"
			value="${accountInstance.country}" class="span2.5"
			noSelection="['':'-Select Country-']" />
	</div>
</div>

<div
	class="control-group ${hasErrors(bean: accountInstance, field: 'accountVisibilty', 'error')} ">
	<label class="control-label" for="accountVisibiltyList"> * <g:message
			code="account.visibility.label" default="Account Visibilty" />

	</label>
	<div class="controls">
		<g:select id="accountVisibilty" name="accountVisibilty"
			from="${accountVisibiltyList}"
			value="${accountInstance.accountVisibilty}" class="span2.5"
			noSelection="['':'-Select Account-']" />
	</div>
</div>

<div
	class="control-group ${hasErrors(bean: accountInstance, field: 'accountOwner', 'error')} ">
	<label class="control-label" for="accountOwners"> * <g:message
			code="account.owner.label" default="Account Owner" />

	</label>
	<div class="controls">
		<g:select id="accountOwner" name="accountOwner"
			from="${accountOwners}"
			value="${accountInstance.accountOwner}" class="span2.5"
			noSelection="['':'-Select Owner-']" />
	</div>
</div>

<div
	class="control-group ${hasErrors(bean: accountInstance, field: 'status', 'error')} ">
	<label class="control-label" for="accountStatuses"> * <g:message
			code="account.owner.label" default="Status" />

	</label>
	<div class="controls">
		<g:select id="status" name="status"
			from="${accountStatuses}"
			value="${accountInstance.status}" class="span2.5"
			noSelection="['':'-Select Owner-']" />
	</div>
</div>


