# Проект Moika2
## Назначение
Шаблон Web приложения на Java
## Основные фреймворки и технологии 
* maven
* spring boot
    - spring-boot-starter-security
    - spring-boot-starter-validation
    - spring-boot-starter-mail
    - spring-session-jdbc
    - spring-boot-devtools
* postgresql
* hibernate
* freemarker
* junit
* lombok
## Основные функции проекта
* обеспечение регистрации и санкционированного входа 
на сайт его пользованелей
* обеспечение санкционированного доступа ( на основе Spring security) доступа к информации сайта
* Отображение всех сущностей (таблиц) базы данных 
на основе универсальног механизма, что значительно сокращает 
время разработки (подробности смотри ниже).
* для всех таблиц базы данных работает механизм их отображения через rest service c HATEOAS
(по адресу 188.235.6.74/api работает The HAL Browser (for Spring Data REST)
## Механизм отображения таблиц системы
* механизм отображения таблиц охватывает 
-   сами таблицы
-   связи One to Many между таблицами
* таблицы отображаются на основе
-   java- аннотаций при определении их полей
-   generic - сервисов доступа к таблицам (TableFromRepoService, TableFromListService)
-   generic - контроллеров (RepoTableControllerб, ListTableController)

## Построение и запуск проекта
* Построение mvn clean install
* Запуск mvn spring-boot:run
* Backup начальной база данных  moika2deploy.backup  лежит в корне проекта
* Пользователь с правани админа: login - user, пароль- 111.  

    




