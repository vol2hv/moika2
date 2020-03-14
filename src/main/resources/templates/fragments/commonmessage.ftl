<#--Ошибка от SPRING_SECURITY-->
<#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
    <div class="alert alert-danger" role="alert">
        ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
    </div>
</#if>

<#if successMes??>
    <#list successMes as mes>
         <div class="alert alert-success" role="alert">
             ${mes}
         </div>
    </#list>
</#if>

<#if infosMes??>
    <#list infoMes as mes>
         <div class="alert alert-info" role="alert">
             ${mes}
         </div>
    </#list>
</#if>

<#if warningMes??>
    <#list warningMes as mes>
         <div class="alert alert-warning" role="alert">
             ${mes}
         </div>
    </#list>
</#if>

<#if dangerMes??>
    <#list dangerMes as mes>
         <div class="alert alert-danger" role="alert">
             ${mes}
         </div>
    </#list>
</#if>
