// // для яндекс карт
// var myMap;
// var myPlacemark;
// ymaps.ready(function(){
//     myMap = new ymaps.Map("my_map", {
//         center: [51.66, 39,20],
//         zoom: 10
//     });
//
//     myPlacemark = new ymaps.Placemark([51.66, 39,20]);
//     myMap.geoObjects.add(myPlacemark);
//
//     myPlacemark = new ymaps.Placemark([51.80, 39,20]);
//     myMap.geoObjects.add(myPlacemark);
//     myPlacemark = new ymaps.Placemark([51.50, 39,20]);
//     myMap.geoObjects.add(myPlacemark);
// });
// // конец для яндекс карт

function changeBoolean(visible, hidden ){
    document.getElementById(hidden).value =
        document.getElementById(visible).checked ? "true" : "false";
    console.log(document.getElementById(hidden).value);
   // debugger;
    alert("Перед посылкой формы");
    alert(document.getElementById(hidden).value);
}
// функция для работы с полем Set из множества Enum
// на основе checked-флажков устанавливается символьное значение поля Set
function onsubminrecord(){
    console.log("привет семье.");
    let fname = "roles";
    let checkBoxes = document.getElementsByClassName(fname);

    if (typeof checkBoxes != "undefined" ) {
        let res = "";
        let size = checkBoxes.length;
        for (let i = 0; i < size; i++) {
            let item = checkBoxes[i];
            if (item.checked) {
                res = res  + item.id + ",";
            }
            console.log(i, item.name, item.checked, res);
        }
            let len = res.length;
            if (len > 0 ) {
                res =res.substr(0,len-1);
            }
        let setField = document.getElementById(fname);
        if (setField != null) {
            setField.value = res;
            }
        console.log(setField.value);
        }
    // checkBox.ROLE_TOP_MANAGER.checked
    // alert("Перед посылкой формы");
}


