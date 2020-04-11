<#--основной шаблон страницы html -->
<#-- head body footer большая малая страница-->
<#macro page isBig title="Unnamed Page" >
    <#import "../fragments/head.ftl" as h>
    <!DOCTYPE html>
    <html lang="en">
        <#include "security.ftl">
        <@h.head title></@h.head>
        <#setting locale="en">
        <#setting date_format="yyyy-MM-dd">
        <#setting time_format = "HH:mm">
        <body>
            <div class=" bg-gradient-light <#if isBig> page-big <#else >page-small </#if> ">
                <#include "header.ftl">
                <#include "commonmessage.ftl">
                <#if isBig>
                    <#nested>
                <#else>
                   <div class="row align-middle">
                        <div class="col-md-4"><!--offset--></div>
                            <div class="col-md-4 mr-md-auto">
                                <#nested>
                            </div>
                   </div>
                </#if>

                <#include "footer.ftl">
            </div>

            <script src="https://www.google.com/recaptcha/api.js"></script>
            <script src='/js/moika2.js'></script>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
        </body>
    </html>

</#macro>