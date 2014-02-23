<g:if test='${flash.error}'>
<div class="alert alert-error">
	<i class="icon-remove-sign red"></i>
	${flash.error}
</div>
</g:if>
<g:if test='${flash.warn}'>
<div class="alert alert-error">
	<i class="icon-remove-sign red"></i>
	${flash.message}
</div>
</g:if>
<g:if test='${flash.message}'>
<div class="alert alert-success">
	<i class="icon-ok green"></i>
	${flash.message}
</div>
</g:if>
 ${flash?.clear()}