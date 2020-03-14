<#global base = "/data" />
<nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-3">
    <a class="navbar-brand" href="/">Мойка</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/about">О проекте</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false"> Таблицы
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="${base}/user/list">Пользователи</a>
                    <a class="dropdown-item" href="${base}/carwash/list">Мойки</a>
                    <a class="dropdown-item" href="${base}/box/list">Боксы</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="${base}/sample/list">Таблица для отображения всех типов полей</a>
                    <a class="dropdown-item" href="${base}/parententity/list">Таблица для отладки отображения дочерних таблиц</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" title="The HAL Browser (for Spring Data REST)" href="/api">Rest API</a>
            </li>
        </ul>
        <a href="/login" class="btn btn-primary btn-md" >Вход</a>
        <a href="/registration" class="btn btn-primary btn-md ml-1" >Регистрация</a>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button class="btn btn-primary btn-md ml-1" type="submit">Выйти</button>
        </form>
    </div>
</nav>
