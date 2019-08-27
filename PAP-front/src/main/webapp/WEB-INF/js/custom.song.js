(function () {
    // Function-level strict mode syntax
    'use strict';
}());

// dashboard-registration-listiongs
// json보내는 메서드
function firstServiceSave(){
    //button preview가 저장하기 버튼임
    // var btnEle = document.getElementById(buttonID);
    // btnEle.addEventListener("click",function () {

        // 이벤트명 (서비스명)  service_title
        var service_title = document.getElementById("search-field").value;

        console.log(typeof service_title,service_title);

        // 카테고리 category_subject
        var category_subject = document.getElementsByClassName("chosen-select-no-single")[0].value;

        console.log(typeof category_subject,category_subject);
        // 카테고리 상세지정 (ab, cd, ef ,gh, check-a1)
        // category_type 	유형

        var youhyung = document.getElementById("check-a1");
        var category_type = ($(youhyung).prop("checked"))? "체험" : "교육";

        console.log(typeof category_type,category_type);

        // category_scale 	기간
        var gigan = document.getElementById("check-c1");
        var category_scale = ($(gigan).prop("checked"))? "정기" : "비정기";

        console.log(typeof category_scale,category_scale);

        // category_period 	규모
        var gyumo = document.getElementById("check-e1");
        var category_period = ($(gyumo).prop("checked"))? "개인" : "그룹";

        console.log(typeof category_period,category_period);

        // category_place 	장소
        var jangso = document.getElementById("check-g1");
        var category_place = ($(jangso).prop("checked"))? "실내" : "실외";

        console.log(typeof category_place,category_place);

        // 해시태그 hashTag  [array로 들어감]

        var hash = document.getElementsByClassName("tags-wrapper")[0].textContent;
        var tempHash = hash.split("⨂");

        var hashArray = new Array();
        for (var i = 0; i<tempHash.length-1;i++){
            hashArray[i] = tempHash[i]
            console.log(hashArray[i])
        }



        // 이벤트 소개 (서비스 내용) service_description
        var service_description = document.getElementById("summary").value;
        console.log(typeof service_description,service_description);

        // 사진 service_img_uri
        var service_img_uri;


        // 계좌은행명 account_bank    chosen-select
        var account_bank = document.getElementById("chosen-select").value;
        console.log(typeof account_bank,account_bank);

        // 계좌번호 account_number
        var account_number = document.getElementById("account_num").value;
        console.log(typeof account_number,account_number);

        // 보낼 객체 생성
        var sendJson = new Object();
        sendJson.servicetitle = service_title;
        sendJson.categorysubject = category_subject;
        sendJson.categorytype = category_type;
        sendJson.categoryscale = category_scale;
        sendJson.categoryperiod = category_period;
        sendJson.categoryplace = category_place;
        sendJson.hashTag = hashArray;
        sendJson.servicedescription = service_description;
        sendJson.accountbank = account_bank;
        sendJson.accountnumber = account_number;
        // sendJson.service_img_uri;

        var jsonAddress = JSON.stringify(sendJson);
        alert(jsonAddress);
//    }
//    ); //addEventListener
}


//dashboard-registration-lisings.html에서 json 파일 보내는 것
function secondServiceSave(){

    // var btnEle = document.getElementById("button preview");
    // btnEle.addEventListener("click",function () {

        // 우편번호
        var entry_postcode6 = document.getElementById("entry_postcode6").value;
        entry_postcode6.toString();

        // 도로명주소
        var entry_address = document.getElementById("entry_address").value;
        entry_address.toString();

        // 상세주소
        var entry_details = document.getElementById("entry_details").value;
        entry_details.toString();


        // 지번주소
        var entry_jibeon_address = document.getElementById("entry_jibeon_address").value;
        entry_jibeon_address.toString();

        // 지번주소를 파싱
        var spliceStr = entry_jibeon_address.split(' ');

        // 					객체생성
        var sendJson = new Object();
        sendJson.addressstate = spliceStr[0];
        sendJson.addresscity = spliceStr[1];
        sendJson.addressdong = spliceStr[2];
        sendJson.addressdetail = spliceStr[3]+ " " + entry_details;

        // JSON은 날짜데이터 가공 후 같이 보내기

//=====================		날짜 데이터 가져오기        =============================================================

        // 날짜 데이터를 가져오기
        var datetimeString = document.getElementsByName("datetimes")[0].value;

        console.log(typeof datetimeString, datetimeString);

        // 날짜데이터에서 - 기준으로 데이터 나누기
        var spliteDate = datetimeString.split("-");


        // 날짜데이터에서 '/' 없애기 -> ':'없애기 -> ' '없애기			-> 201908211200오후
        var staDate = spliteDate[0].replace(/\//gi,"").replace(/ /gi, "").replace(":","");
        var endDate = spliteDate[1].replace(/\//gi,"").replace(/ /gi, "").replace(":","");

        // 날짜데이터에 '오후'가 있으면 12시간 추가해주기. 그다음 YYYYMMDDHHMMSS로 형태로 변환
        function DateConverter(a) {
            if(a.includes('오후')){
                var ifDate = a.replace(/[^0-9]/g,"");
                ifDate = ifDate+"00";
                return Number(ifDate)+120000;

            }else{
                var ifDateElse = a.replace(/[^0-9]/g,"");
                ifDateElse = ifDateElse+"00";
                return Number(ifDateElse);
            }
        };

        var staDateFinal = DateConverter(staDate);
        var endDateFinal = DateConverter(endDate);

        // 주소가 저장된 object에 key value값으로 날짜데이터를 object에 넣기
        sendJson.serviceregisterdate = staDateFinal;
        sendJson.serviceenddate = endDateFinal;

        // 가격 가져오기
        var priceDate = document.getElementById("service_price");
        var priceDescriptionData = document.getElementById("service_price_description");

        // 가격을 저장된 object에 key value값으로 넣기
        sendJson.serviceprice = Number(priceDate.value);
        sendJson.servicedatedescription = priceDescriptionData.value;


        // object를 JSON형태로 만들기

        var jsonAddress = JSON.stringify(sendJson);

        alert(jsonAddress);
    }
    // );
// }