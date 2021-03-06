<#import "fragments/page.ftl" as p>
<#import "fragments/common.ftl" as com>

<#--
"tableName"         -имя таблицы
"title"             -заголовок вебстраницы и таблицы
"fieldsProperties"  -свойства полей таблицы для отображения
"baseURL"           -базовый URL страниц для работы с таблицей
"list"              -список записей таблицы
"idParent"          - id записи родительско таблицы
'fieldChild"        -имя поля ссылки на дочернюю таблицу

!!!!! доступа к детям детей нет
-->

<@p.page true title>
        <h5 class="text-center">${title}</h5>
        <div class="table-responsive">
            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <#list fieldsProperties as prop>
                        <#if (!prop.isHidden) || (prop.type.name() == "CHILD") >
                            <th>${prop.title}</th>
                        </#if>
                    </#list>
                    <th>View</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>

                <tbody>
                    <#list list as item>
                    <tr>
                        <#list fieldsProperties as prop>
                            <#if !prop.isHidden >
                                <td>
                                    <#if item[prop.name]??>
                                        <#if prop.type.name() == "CHILD">
                                            <#-- доступа к детям детей нет -->
                                            ""
                                        <#else >
                                            ${com.getfieldrendering(item[prop.name], prop)}
                                        </#if>
                                    <#else >
                                        ${""}
                                    </#if>
                                </td>
                            </#if>
                        </#list>

                        <#assign href = baseURL + '/cru?operation=READ&idParent=${idParent}&idChild=${item.id}' />
                        <td><a href="${href}" class="link"><i class="far fa-eye"></i></a></td>
                        <#assign href=baseURL + '/cru?operation=UPDATE&idParent=${idParent}&idChild=${item.id}' />
                        <td><a href="${href}" class="link"><i class="fas fa-edit"></i></a></td>
                        <#assign href=baseURL + '/delete?idParent=${idParent}&idChild=${item.id}' />
                        <td>
                            <a href="${href}"" class="link"><i class="far fa-trash-alt"></i></i></a>
                        </td>
                    </tr>
                    </#list>
                </tbody>

            </table>

            <#--Кнопки завершения работы формы-->
            <div class="row">
                <div class="col-2 offset-1">
                    <#assign href = baseURL + "/cru?operation=CREATE&idParent=${idParent}&idChild=0">
                    <a href="${href}" class="btn btn-primary ml-5"><i class="fas fa-plus-circle"></i> Add new</a>
                </div>
                <div class="col-2 offset-6">
                    <a href="${referer}" class="btn btn-primary ml-5"><i class="fas fa-arrow-alt-circle-up"></i> Main Table</a>
                </div>
            </div>
        </div>
</@p.page>