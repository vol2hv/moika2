<#macro head title>
<head>
    <meta charset="UTF-8" />
    <title>${title}</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
          integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous" />
    <link rel="stylesheet" href="/static/css/theme.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />
    <link rel="stylesheet" href="/static/css/main1.css" />
    <#--Обеспечение адаптивного дизайна-->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <#-- яндекс карты -->
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript">  </script>
    <script type="text/javascript">
        var myMap;
        var myPlacemark;
        ymaps.ready(function(){
            myMap = new ymaps.Map("my_map", {
                center: [51.66, 39,20],
                zoom: 10
            });

            myPlacemark = new ymaps.Placemark([51.65, 39.12,20]);
            myMap.geoObjects.add(myPlacemark);

            myPlacemark = new ymaps.Placemark([51.55, 39.21,20]);
            myMap.geoObjects.add(myPlacemark);
            myPlacemark = new ymaps.Placemark([51.66, 39.20,20]);
            myMap.geoObjects.add(myPlacemark);
        });
    </script>
</head>
</#macro>


