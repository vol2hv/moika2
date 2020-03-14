<#import  "fragments/messagePage.ftl"  as mes>

<@mes.messagePage "info" "Сброс пароля" false>
     <p>
         Для сброса пароля нам необходимо знать Ваш email- адрес, указанный при регистрации.
         На этот адрес Вам прийдет письмо с инструкцией по сбросу пароля.
     </p>
    <form class="form" action="/reset" method="post" role="form" autocomplete="on">
        <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" placeholder="some@some.com" />
    </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="form-group">
        <button type="submit" class="btn btn-success btn-lg float-right">Reset</button>
    </div>
    </form>
</@mes.messagePage>
