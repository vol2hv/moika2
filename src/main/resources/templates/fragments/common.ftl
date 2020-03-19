<#function getVarType var >
    <#if var??>
        <#if var?is_string>
            <#return "string">
        <#elseif var?is_number >
            <#return "number">
        <#elseif var?is_boolean >
            <#return "boolean">
        <#elseif var?is_date_like >
            <#return "date_like">
        <#elseif var?is_method >
            <#return "method">
        <#elseif var?is_transform >
            <#return "transform">
        <#elseif var?is_macro >
            <#return "macro">
        <#elseif var?is_hash >
            <#return "hash">
        <#elseif var?is_sequence >
            <#return "sequence">
        <#elseif var?is_collection >
            <#return "collection">
        <#elseif var?is_directive >
            <#return "directive">
        <#elseif var?is_node >
            <#return "node">
        <#elseif var?is_markup_output >
            <#return "markup_output">
        <#else >
            <#return "Переменная другого типа">
        </#if>
    <#else >
        <#return "Пустая переменная">
    </#if>
</#function>

<#function avg nums...>
    <#local sum = 0>
    <#list nums as num>
        <#local sum += num>
    </#list>
    <#if nums?size != 0>
        <#return sum / nums?size>
    </#if>
</#function>

<#function getfieldrendering field fieldProp>
    <#if field??>
        <#if fieldProp.type.name() == "BOOLEAN">
            <#return field?c>
        <#elseif fieldProp.type.name() == "ENUMSET">
            <#local res="">
            <#list field as item>
                <#local res = res + item + ", ">
            </#list>
            <#return res?remove_ending(", ")>
        <#else >
            <#return field>
        </#if>
    <#else >
        <#return "">
    </#if>
</#function>
<#--Вывод сообщения-->
<#macro messageOut errName type="alert-danger">
    <#--
    type
    alert-success
    alert-info
    alert-warning
    alert-danger
    alert-primary
    alert-secondary
    alert-success
    alert-danger
    alert-warning
    alert-info
    alert-light
    alert-dark
    -->
    <#if  (errName?eval)??>
         <div class="alert col-12 ${type}" role="alert">
             ${(errName?eval)}
         </div>
    </#if>
</#macro>

