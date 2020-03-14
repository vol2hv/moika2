<#--Вывод одного поля -->
<#import "../fragments/inputfields.ftl" as ifiels>

<#macro fieldVert fieldProp field = "" >
    <#if !(ifiels.checkpropertis (fieldProp))> <#return > </#if>

    <#if (fieldProp.type == "STRING")>
        <@ifiels.stringfield fieldProp field/>
    <#elseif (fieldProp.type == "INTEGER")>
        <@ifiels.integerfield fieldProp field/>
    <#elseif (fieldProp.type == "BIGDECIMAL")>
        <@ifiels.bigdecimalfield fieldProp field/>
    <#elseif (fieldProp.type == "DATE")>
        <@ifiels.datefield fieldProp field/>
    <#elseif (fieldProp.type == "TIME")>
        <@ifiels.timefield fieldProp field/>
    <#elseif (fieldProp.type == "BOOLEAN")>
        <@ifiels.booleanfield fieldProp field/>
    <#elseif (fieldProp.type == "PASSWORD")>
        <@ifiels.passwordfield fieldProp field/>
    <#elseif (fieldProp.type == "EMAIL")>
        <@ifiels.emailfield fieldProp field/>
    <#elseif (fieldProp.type == "ENUMONE")>
        <@ifiels.enumonefield fieldProp field/>
    <#elseif (fieldProp.type == "ENUMSET")>
        <@ifiels.enumsetfield fieldProp field/>
    <#elseif (fieldProp.type == "CHILD")>
       ${""}
    <#else >
        <p>Ввод полей типа ${fieldProp.type} в системе не предусмотрен</p>
    </#if>
</#macro>

