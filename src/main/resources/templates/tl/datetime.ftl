<#import "../fragments/page.ftl" as p>

<@p.page false "Дата и время">
    ${rowtabl.isBoolean?c}


    <form action="/tl/datetime" method="post">
        <input type="hidden" value="${_csrf.token}" name="_csrf" />
        <#if rowtabl.id ??>
            <input type="hidden" value="${rowtabl.id}" name="Id" />
        </#if>

        <p>
            <label for="name">Имя: </label>
            <input type="text" name="name" value="<#if rowtabl.name?? >${rowtabl.name}</#if>"/>
        </p>

        <p>
            <#if rowtabl.localDate??>${rowtabl.localDate?date}</#if>
            <label for="date">Дата: </label>
            <input type="date" name="localDate" value="<#if rowtabl.localDate??>${rowtabl.localDate?date}</#if>"/>
        </p>
        <p>
            <#if rowtabl.localTime??>${rowtabl.localTime?time}</#if>
            <label for="time">Время: </label>
            <input type="time"  name="localTime" value="<#if rowtabl.localTime??>${rowtabl.localTime?time}</#if>"/>
        </p>

        <p>
            <#if rowtabl.bigDecimal??>${rowtabl.bigDecimal?string["0.##"]}</#if>
            <label for="bigDecimal">bigDecimal: </label>
            <input type="number"  name="bigDecimal" step="0.01"
                   value="<#if rowtabl.bigDecimal??>${rowtabl.bigDecimal?string["0.##"]}</#if>"/>
        </p>

        <#--<p>-->
            <#--<#if rowtabl.bigDecimal??>${rowtabl.bigDecimal?string["0.##"]}</#if>-->
            <#--<label for="time">bigDecimal: </label>-->
            <#--<input type="number"  name="bigDecimal" value="<#if rowtabl.bigDecimal??>${rowtabl.bigDecimal?string["0.##"]}</#if>"/>-->
        <#--</p>-->

        <#--<!-- boolean вариант c select &ndash;&gt;-->
        <#--<p><select size="2" multiple name="isBoolean">-->
            <#--<option value="true">true</option>-->
            <#--<option selected value="false">false</option>-->
        <#--</select></p>-->


        <!-- boolean вариант type = text -->
        <#--<p>-->
            <#--<label for="isBoolean">isBoolean: </label>-->
            <#--<#assign tmp =(rowtabl.isBoolean??) && rowtabl.isBoolean >-->
            <#--<input type="text"  name="isBoolean" id="isBoolean" value="${tmp?c}" list="bool" />-->
            <#--<datalist id="bool">-->
                <#--<option>true</option>-->
                <#--<option>false</option>-->
            <#--</datalist>-->
        <#--</p>-->
        <!-- вариант boolean c checkbox-->
        <p>
        <#assign tmp =(rowtabl.isBoolean??) && rowtabl.isBoolean>
                ${tmp?c}
            <input type="hidden" name="isBoolean" id="isBoolean"  value="${tmp?c}" />
            <label for="isBoolean">isBoolean: </label>
            <input type="checkbox"  name="isBoolean__" id="isBoolean__"
               ${tmp?string("cheked", "")} -=i98/>
        </p>
        <p>
            <button type="submit" >Отправить</button>
        </p>
    </form>

</@p.page>