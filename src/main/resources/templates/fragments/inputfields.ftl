<#import "common.ftl" as com>
<#--Ввод однострочного текстового поля -->
<#macro stringfield fieldProp value = "" check = false >
    <#if !advCheckProp (fieldProp, "STRING", check)>
        <#return >
    </#if>

    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>
    <div class="form-group row">
        <label class="col-3 col-form-label form-control-label">${tmpLabel}</label>
        <input class="col-9" type="${tmpType}" name="${fieldProp.name}" value="${value}"
               placeholder = "${fieldProp.placeholder}" />

        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
    </div>

</#macro>
<#--Ввод целого числа-->
<#macro integerfield fieldProp value = "" >
    <#if !advCheckProp (fieldProp, "INTEGER", check)>
        <#return >
    </#if>

    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>
    <div class="form-group row">
        <label class="col-3 col-form-label form-control-label">${tmpLabel}</label>
        <input class="col-9" type="${tmpType}" name="${fieldProp.name}" value="${value}"
               placeholder = "${fieldProp.placeholder}" />

        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
    </div>

</#macro>

<#--Ввод Bigdecimal-->
<#macro bigdecimalfield fieldProp value = "" >
    <#if !advCheckProp (fieldProp, "BIGDECIMAL", check)>
        <#return >
    </#if>
    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>
    <div class="form-group row">
        <label class="col-3 col-form-label form-control-label">${tmpLabel}</label>
        <input class="col-9" type="${tmpType}" name="${fieldProp.name}"
               placeholder = "${fieldProp.placeholder}" step="0.01"
               value="<#if value?has_content>${value?string["0.##"]}"</#if> />
        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
    </div>
</#macro>

<#--Ввод Date-->
<#macro datefield fieldProp value = "" >
    <#if !advCheckProp (fieldProp, "DATE", check)>
        <#return >
    </#if>
    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>
    <div class="form-group row">
        <label class="col-3 col-form-label form-control-label">${tmpLabel}</label>
        <input class="col-9" type="${tmpType}" name="${fieldProp.name}"
               <#if value?has_content >value="${value}"</#if>
               placeholder = "${fieldProp.placeholder}" />
        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
    </div>
</#macro>

<#--Ввод Time-->
<#macro timefield fieldProp value = "" >
    <#if !advCheckProp (fieldProp, "TIME", check)>
        <#return >
    </#if>
    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>
    <div class="form-group row">
        <label class="col-3 col-form-label form-control-label">${tmpLabel}</label>
        <input class="col-9" type="${tmpType}" name="${fieldProp.name}"
               <#if value?has_content >value="${value}"</#if>
               placeholder = "${fieldProp.placeholder}" />
        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
    </div>
</#macro>

<#--Ввод BOOLEAN-->
<#macro booleanfield fieldProp value = "" >
    <#if !advCheckProp (fieldProp, "BOOLEAN", check)>
        <#return >
    </#if>
    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>
    <div class="form-group row">
        <#local value = (value?has_content)?then(value, false) />
        <input type="hidden" name="${fieldProp.name}" id="${fieldProp.name}"  value="${value?c}" />
        <label class="col-3 col-form-label form-control-label">${tmpLabel}</label>
        <input class="col-1" type="${tmpType}" name="${fieldProp.name}__" " id="${fieldProp.name}__"
           placeholder = "${fieldProp.placeholder}" ${value?string("checked", "")}
           onchange="changeBoolean('${fieldProp.name}__','${fieldProp.name}')" />
        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
    </div>
</#macro>

<#--Ввод Password-->
<#macro passwordfield fieldProp value = "" >
    <#if !advCheckProp (fieldProp, "PASSWORD", check)>
        <#return >
    </#if>
    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>
    <div class="form-group row">
        <label class="col-3 col-form-label form-control-label">${tmpLabel}</label>
        <input class="col-9" type="${tmpType}" name="${fieldProp.name}"
               <#if value != "" >value="${value}"</#if>
               placeholder = "${fieldProp.placeholder}" />
        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
    </div>
</#macro>

<#--Ввод Email-->
<#macro emailfield fieldProp value = "" >
    <#if !advCheckProp (fieldProp, "EMAIL", check)>
        <#return >
    </#if>
    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>
    <div class="form-group row">
        <label class="col-3 col-form-label form-control-label">${tmpLabel}</label>
        <input class="col-9" type="${tmpType}" name="${fieldProp.name}"
               <#if value != "" >value="${value}"</#if>
               placeholder = "${fieldProp.placeholder}" />
        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
    </div>
</#macro>

<#--Раскрывающийся список из Enum-->
<#macro enumonefield fieldProp value = "" >
    <#if !advCheckProp (fieldProp, "ENUMONE", check)>
        <#return >
    </#if>
    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>

    <div class="form-group row">
        <label class="col-3 col-form-label form-control-label">${tmpLabel}</label>
       <select name="${fieldProp.name}">
           <option value="" selected disabled hidden>Выберите из списка</option>
            <#list fieldProp.listOfValues as t>
                 <option ${(t == value)?string("selected","")}>${t}</option>
            </#list>
       </select>
        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
    </div>
</#macro>
<#--Множественный выбор из множества Enum-->
<#macro enumsetfield fieldProp value = "" >
    <#if !advCheckProp (fieldProp, "ENUMSET", check)>
        <#return >
    </#if>
    <#if  fieldProp.isHidden>
        <#local tmpType = "hidden" tmpLabel ="" />
    <#else>
        <#local tmpType = "${fieldProp.type.getinputType()}" tmpLabel ="${fieldProp.title}" />
    </#if>
    <div class="form-group row">
        <#--<label class="col-3 col-form-label form-control-label">${tmpLabel}</label>-->
        <input class="col-9" type="hidden" name="${fieldProp.name}" id="${fieldProp.name}"
           value="${com.getfieldrendering(value, fieldProp)}" />
    </div>
    <div class="form-group row">
        <div class="col-3">
            <h6>${fieldProp.name}</h6>
        </div>
        <div class="col-9">
            <#list fieldProp.listOfValues as item>
                <label class="col-3 col-form-label form-control-label">${item}</label>
                <input class="col-2 ${fieldProp.name}" type="checkbox" name="${item}" id="${item}"
                    ${value?seq_contains(item)?string("checked", "")} />
            </#list>
        <#local errName ="${fieldProp.name}Error" >
        <@com.messageOut errName />
        </div>

    </div>
</#macro>

<#function checkpropertis fieldProp>
    <#if !(fieldProp.name??)>
        <p>"Не определено свойство поля ИМЯ"</p>
        <#return false>
    <#elseif !(fieldProp.type??)>
        <p>"Не определено свойство TYPE поля ${fieldProp.name}"</p>
        <#return false>
    <#elseif !(fieldProp.title??)>
        <p>"Не определено свойство TITLE поля ${fieldProp.name}"</p>
        <#return false>
    <#elseif !(fieldProp.placeholder??)>
        <p>"Не определено свойство PLACEHOLDER поля ${fieldProp.name}"</p>
        <#return false>
    <#elseif !(fieldProp.isHidden??)>
        <p>"Не определено свойство isHidden поля ${fieldProp.name}"</p>
        <#return false>
    <#elseif !(fieldProp.fildnumber??)>
        <p>"Не определено свойство FILDNUMBER поля ${fieldProp.name}"</p>
        <#return false>
    <#elseif ((fieldProp.type = "ENUMONE") || (fieldProp.type = "ENUMSET"))&& !(fieldProp.listOfValues??)>
        <p>"Не определено свойство listOfValues поля ${fieldProp.name}"</p>
        <#return false>
    </#if>
    <#return true>
</#function>

<#function advCheckProp fieldProp  oper check = false>
    <#if check>
        <#if !(checkpropertis (fieldProp))> <#return false> </#if>
    </#if>
    <#if (fieldProp.type != oper)>
        <p> "Нельзя выполнить операцию: "${fieldProp.type} </p>
        <#return false>
    </#if>
    <#return true>
</#function>
