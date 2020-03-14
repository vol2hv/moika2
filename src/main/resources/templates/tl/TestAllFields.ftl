<#import "../fragments/page.ftl" as p>
<#import "../fragments/inputfields.ftl" as ifiels>
<#assign title = "Тест полей всех типов" />
<@p.page true title>
    <div class="card border-secondary">
        <div class="card-header">
            <h3 class="mb-0 my-2"> ${title} </h3>
        </div>

        <div class="card-body">
            <form class="form" role="form" autocomplete="on" action="/tl/testallfields" method="post">
                <div class="form-group row">
                    <input type="hidden" value="${_csrf.token}" name="_csrf" />
                </div>

                <@ifiels.stringfield pString "" />
                <@ifiels.integerfield iField "12345" />
                <@ifiels.bigdecimalfield bdField "67.99" />
                <@ifiels.datefield dateField "2018-12-30" />
                <@ifiels.timefield timeField "" />
                <@ifiels.booleanfield booleanField "" />
                <#--<@ifiels.passwordfield passwordField "" />-->
                <@ifiels.emailfield emailField "qqq@email.ru" />
                <@ifiels.enumonefield enumoneField status />
            <#--Кнопки завершения работы формы-->
                <div class="row">
                    <#assign href = "/">
                    <div class="col-2 offset-1">
                        <a href="${href}" class="btn btn-secondary ">Finish</a>
                    </div>
                    <div class="col-2 ">
                        <input type="submit" class="btn btn-primary " value="Save" />
                    </div>
                </div>

            </form>

        </div>

    </div>
</@p.page>
