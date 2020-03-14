<#--
пример работы с рекурсивным макросом и
моделью в формате json
-->

<#import "../fragments/page.ftl" as p>
<#import "../fragments/common.ftl" as ccc>

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
<#assign
myFoo = {
  "bar": "root",
  "foos": [
    {
      "bar": "child 1",
      "foos": [
        {
          "bar": "child 1.1",
          "foos": [
          {
          "bar": "child 1.1.1",
          "foos": []
          }
          ]
        }
      ]
    },
    {
      "bar": "child 2",
      "foos": []
    },
  {
  "bar": "child 3",
  "foos": []
  }
  ]
}>

<@p.page true title>
    Число элементов в .data_model ${.data_model?size}
    <@dumpFoo myFoo />
<#--    <br/>${(ccc.getVarType(num))}
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
    &lt;#&ndash;</#list>&ndash;&gt;

        <div class="table-responsive">
            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <th>Тип</th>
                    <th>Имя</th>
                    <th>Значение</th>
                </tr>
                </thead>

                <tbody>
                    <#list .data_model as k, v>
                    <tr>
                        <td> ${ccc.getVarType(.data_model[k]) }</td>
                        <td> ${k} </td>
                        <td>
                            <#if v??> ${v} <#else > "" </#if>
                        </td>
                    </tr>
                    </#list>
                </tbody>

            </table>
        </div>-->

</@p.page>