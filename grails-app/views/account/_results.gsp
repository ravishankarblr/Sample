			<g:if test="${accountInstanceList?.size() > 0 }">
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
					
						<g:sortableColumn property="id" title="${message(code: 'account.id.label', default: 'account Id')}" />
						
						<g:sortableColumn property="accountQBId" title="${message(code: 'account.accountQBId.label', default: 'account QB Id')}" />

						<g:sortableColumn property="inSync" title="${message(code: 'account.inSync.label', default: 'In Sync')}" />
					
					
						<g:sortableColumn property="itemName" title="${message(code: 'account.itemName.label', default: 'Item Name')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'account.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'account.quantity.label', default: 'Quantity')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<%--
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "deleteFlag")}</g:link></td>
						--%>
						<td>${fieldValue(bean: accountInstance, field: "id")}</td>
						<td>${fieldValue(bean: accountInstance, field: "accountQBId")}</td>

						<td><g:formatBoolean boolean="${accountInstance.inSync}" /></td>
					
					
						<td>${fieldValue(bean: accountInstance, field: "itemName")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "quantity")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountInstanceTotal}" />
			</div>
			</g:if>
			<g:else>
				No accounts found
			</g:else>