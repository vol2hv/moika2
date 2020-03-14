<#macro page>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sweater</title>
    <link rel="stylesheet" href="/static/style.css">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
<#--<#include "navbar.ftl">-->
<div class="container mt-5">
    <#nested>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>
</#macro>

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

