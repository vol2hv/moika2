<#import "fragments/page.ftl" as p>

<@p.page true "Главная страница Po-moika">
    <div class="row" >
        <div class="col-md-6" >
            <div class="card">
                <img src="images/moika.jpg" width="100%" class="card-img-top" />
                <div class="card-body">
                    <h1 class="card-title">Лучшая сеть автомоек "Po-moika"</h1>
                    <p class="card-text">
                        Автомоечная сеть "Po-moika" - это сотни чистых автомобилей каждый день.
                        Мы рады предложить широкий спектр услуг частным лицам и корпоративным клиентам.
                    </p>
                </div>
            </div>
<#--            <h1 align="center">Лучшая сеть автомоек "Po-moika"</h1>
            <h3>Автомоечная сеть "Po-moika" - это сотни чистых автомобилей каждый день.
            Мы рады предложить широкий спектр услуг частным лицам и корпоративным клиентам.</h3>
            <img src="images/moika.jpg" width="100%" />-->
        </div>

        <div class="col-md-6 border border-primary">
            <div>
                <img src="images/brain.png" class="leftimg"/>
                <ul>
                    <li>
                        По <a  href="${baseAPI}">этому адресу</a>
                        доступен Rest api интерфейс.
                    </li>
                    <li>
                        Некоторые функции доступны только зарегистрированным пользователям.
                        При регистрации, пожалуйста, указываете правильные адреса.
                        Вы не зарегистрируетесь без подтверждения электронного адреса, а мне - критика от
                        Яндекса за спам в почте.
                    </li>
                </ul>
            </div>
            <h1 align="center">Наши автомойки</h1>
            <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A931a06c879dc13b5008625557c0ca15d7f19d141a65fdeae01737312ba256e42&amp;width=607&amp;height=516&amp;lang=ru_RU&amp;scroll=true"></script>
            <#--<div id="my_map" style="width: 90%; height: 90%"></div>-->
            <#--<h4>Ccылки для разработки</h4>-->
            <#--<h6>1. Visit <a href="/admin">Admin page (Spring Security protected, Need Admin Role)</a></h6>-->
            <#--<h6>2. Visit <a href="/client">Client page (Spring Security protected, Need Client Role)</a></h6>-->
            <#--<h6>3. Visit <a href="/about">Normal page</a></h6>-->
            <#--<h6>-----</h6>-->
            <#--<h6><a href="/tl/example1">Example1</a></h6>-->
            <#--<h6><a href="/tl/example2?par1=READ&par2=параметр2">Example2</a></h6>-->
            <#--<h6><a href="/tl/example3">Example3</a></h6>-->
            <#--<h6><a href="/data/user/">Список Users</a></h6>-->
            <#--<h6><a href="/data/carwashes">Список CarWash</a></h6>-->
            <#--<h6><a href="/tl/testallfields">Тест вывода полей всех типов</a></h6>-->
            <#--<h6><a href="/data/sample/list">Список Sample generic Controller</a></h6>-->
            <#--<h6><a href="/data/box/list">Список моечных боксов generic Controller</a></h6>-->
            <#--<h6><a href="/tl/datetime"> datetime</a></h6>-->
            <#--<h6><a href="/data">Таблицы системы</a></h6>-->
            <#--<h6><a href="/tl/debuging"> debuging</a></h6>-->
        </div>
    </div>
</@p.page>