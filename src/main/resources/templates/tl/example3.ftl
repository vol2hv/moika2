<#import "../fragments/page.ftl" as p>

<@p.page false "Example3">
    <h1>Заебись!!!</h1>
    <form class="form" role="form" autocomplete="on" action="/tl/example3" method="post">
        <input type="hidden" value="${_csrf.token}" name="_csrf" />
        <p><select  name="boxtype">
            <option value="" selected disabled hidden>Выберите из списка</option>
            <#list types as t>
                <option ${(t == value)?string("selected","")}>${t}</option>
            </#list>

        </select></p>
        <p><select name="list1">
            <option value="" selected disabled hidden>Выберите из списка</option>
            <option>Option</option>
            <option>Textarea</option>
            <option>Label</option>
            <option >Fieldset</option>
            <option>Legend</option>
        </select></p>

        <input type="submit" class="btn btn-primary " value="Save" />
    </form>
</@p.page>
