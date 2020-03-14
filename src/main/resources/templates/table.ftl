<#import "fragments/page.ftl" as p>

<@p.page true >
    <div class="row" >
        <div class="col-md-6" >
            <h1 align="center">Мойка на SpringBoot без Resta</h1>
            <img src="images/moika.jpg" width="100%" />
        </div>

        <div class="col-md-6">
            <h4>Таблицы системы</h4>
            <h6><a href="${base}/user/list">user</a>  Таблица пользователей.</h6>
            <h6><a href="${base}/carwash/list">carwash</a> Мойки.</h6>
            <h6><a href="${base}/box/list">box</a>  Таблица боксов.</h6>
            <h6>==================================================================================</h6>
            <h6><a href="${base}/parententity/list">parententity</a>  Таблица для отладки отображения дочерних таблиц.</h6>
            <h6><a href="${base}/sample/list">sample</a>  Таблица для отображения всех типов полей.
        </div>
    </div>
</@p.page>