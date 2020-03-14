<#-- не доделана затраты привыщают выгоду от использования -->
<#import "../fragments/page.ftl" as p>
<#import "../fragments/common.ftl" as ccc>
<#-- пример рекурсии-->
<#macro dumpFoo foo>
    <#if !(lever?has_content)>
        <#global level =1/>
    </#if>
    <br/>${level} ${foo.bar}
    <#assign level = level + 1/>
    <#list foo.foos as childFoo>
        <@dumpFoo childFoo />
    </#list>
    <#assign level = level - 1/>
</#macro>
<#-- рендеринг дерева от переменной Var -->
<#macro dump var >
    <#if !(lever?has_content)>
        <#global level =1/>
    </#if>

    <#assign type = ccc.getVarType(var)>
    <#if (type == "string") || (type == "number") >
        <#local value = var />
    <#elseif  (type == "boolean")>
        <#local value = "${var?c}" />
    <#else >
        <#local value = type />
    </#if>
    <#-- печать строки-->
    <tr>
        <td> ${level}</td>
        <td> ${type}</td>
        <td> имя </td>
        <td>
            ${value}
        </td>
    </tr>
<#-- Рекурсивно выводим подпеременные -->
    <#if type == "hash">
        <#assign level = level + 1/>
        <#list var as k, v>
            <@dump k />
        </#list>]
        <#assign level = level - 1/>
    <#elseif  (type == "sequence") || (type == "collection")>
        <#assign level = level + 1/>
        <#list var as item>
            <@dump k />
        </#list>
        <#assign level = level - 1/>
    </#if>

</#macro>

<@p.page true title>
    <#assign someVar = 12>
    <#list .main?keys as var>
        ${var}
    </#list>
        <div class="table-responsive">
           <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <th>Уровень</th>
                    <th>Тип</th>
                    <th>Имя</th>
                    <th>Значение</th>
                </tr>
                </thead>

                <tbody>
                    <@dump .data_model></@dump>
                </tbody>

            </table>
        </div>
    </@p.page>


<#--    <@dumpFoo myFoo />
    <br/>${(ccc.getVarType(num))}
    <#assign user = "Vovan55" s = "Hello ${user}!">
   <br/>  ${s}
   <br/> ${.data_model["num"]}
   <br/> ${((.data_model["RequestParameters"])?is_hash_ex)?c}
    ${((.data_model["RequestParameters"])?is_hash)?c}
    <br/> ${ccc.getVarType(.data_model["RequestParameters"]) }
    <br/> ${ccc.getVarType(.data_model["Request"]) }
    &lt;#&ndash;${.data_model["Request"]}&ndash;&gt;

    &lt;#&ndash;<#list .data_model as k, v>&ndash;&gt;
        &lt;#&ndash;<br/>${ccc.getVarType(k)} ${k} c&ndash;&gt;
    &lt;#&ndash;</#list>&ndash;&gt;-->