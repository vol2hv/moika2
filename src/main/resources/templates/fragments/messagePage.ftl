<#import "page.ftl" as p>
<#assign types =["success", "info", "warning", "danger"] />


<#macro messagePage typeMessage titlePage = "Выдача сообщения" withButton =  true>
    <#if !(types?seq_contains(typeMessage)) > <#return ></#if>
    <@p.page false titlePage>
        <!-- form card login -->
    <div class="card border-secondary">
        <div class="card-header">
            <div class="row">
                <img src="/images/${typeMessage}.png"  class="col-2" />
                <h3 class="col-10"> ${typeMessage} </h3>
            </div>
        </div>
        <div class="card-body">
            <#nested>
        </div>
        <div class="card-footer">
            <#if withButton >
                <div class="col-2 offset-5">
                    <a href="${redirectURI}" class="btn btn btn-primary ">OK</a>
                </div>
            </#if>
        </div>
    </div>
    <!-- /form card login -->
</@p.page>
</#macro>