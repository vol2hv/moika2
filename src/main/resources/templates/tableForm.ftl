<#import "fragments/fieldVert.ftl" as f>
<#import "fragments/page.ftl" as p>

<#--
    данные в модели
"tableName"         - имя таблицы (имя класса в домене CarWash)
"title"             - заголовок страницы и формы
"fieldsProperties"  - свойства отображаемых полей таблицы
"baseURL"           - базовый URL
"operation"         - операция
"record"            - запись таблицы
-->


<@p.page true title>
    <div class="card border-secondary">
        <div class="card-header">
            <h3 class="mb-0 my-2"> ${title} </h3>
            <p>${record}</p>
        </div>

        <div class="card-body">
            <#assign action = baseURL +"/cru/?operation=${operation}">
            <form class="form" role="form" autocomplete="on" onsubmit="onsubminrecord();"
                <#if operation !="READ"> action="${action}" method="post"</#if> >
                <input type="hidden" value="${_csrf.token}" name="_csrf" />

            <#--Вывод строк таблицы-->
                <#if operation =="READ"> <fieldset disabled> </#if>
                    <#list fieldsProperties as prop>
                    <#--${record[prop.name]!"пусто"}-->
                        <@f.fieldVert prop record[prop.name] />
                    </#list>
                <#if operation =="READ"> </fieldset> </#if>

            <#--Кнопки завершения работы формы-->
                <div class="row">
                    <#assign href = "/data/" + tableName + "/list">
                    <div class="col-2 offset-1">
                        <a href="${href}" class="btn btn-secondary ">Finish</a>
                    </div>
                    <div class="col-2 ">
                            <#if operation !="READ">
                                <input type="submit" class="btn btn-primary " value="Save" />
                            </#if>
                    </div>
                </div>

            </form>

        </div>

    </div>
</@p.page>
