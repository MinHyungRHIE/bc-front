(function () {
    // Function-level strict mode syntax
    'use strict';
}());

// dashboard-registration-listiongs
// json보내는 메서드

// 날짜데이터에 '오후'가 있으면 12시간 추가해주기. 그다음 YYYYMMDDHHMMSS로 형태로 변환
function DateConverter(a) {
        if(a.includes('오후')){
                var ifDate = a.replace(/[^0-9]/g,"");
                ifDate = ifDate+"00";

                //숫자로 전달
                // return Number(ifDate)+120000;

                //스트링으로 전달
                var temIf = Number(ifDate)+120000;
                return String(temIf);
        }else{
                var ifDateElse = a.replace(/[^0-9]/g,"");
                ifDateElse = ifDateElse+"00";
                //스트링으로 전달
                return String(ifDateElse);

                //숫자로 전달
                // return Number(ifDateElse);
        }
}

function firstServiceSave(){
    //button preview가 저장하기 버튼임
    // var btnEle = document.getElementById(buttonID);
    // btnEle.addEventListener("click",function () {

        // 이벤트명 (서비스명)  service_title
        var service_title = document.getElementById("search-field").value;

        // 카테고리 category_subject
        var category_subject = document.getElementsByClassName("chosen-select-no-single")[0].value;

        // 카테고리 상세지정 (ab, cd, ef ,gh, check-a1)
        // category_type 	유형
        var youhyung = document.getElementById("check-a1");
        var category_type = ($(youhyung).prop("checked"))? "체험" : "교육";

        // category_scale 	기간
        var gigan = document.getElementById("check-c1");
        var category_scale = ($(gigan).prop("checked"))? "정기" : "비정기";

        // category_period 	규모
        var gyumo = document.getElementById("check-e1");
        var category_period = ($(gyumo).prop("checked"))? "개인" : "그룹";

        // category_place 	장소
        var jangso = document.getElementById("check-g1");
        var category_place = ($(jangso).prop("checked"))? "실내" : "실외";

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

        // 사진 service_img_uri
        var service_img_uri;

        // 계좌은행명 account_bank    chosen-select
        var account_bank = document.getElementById("chosen-select").value;

        // 계좌번호 account_number
        var account_number = document.getElementById("account_num").value;

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

        return JSON.stringify(sendJson);
        // alert(jsonAddress);
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

//=====================		날짜 데이터 가져오기        =============================================================
        // 날짜 데이터를 가져오기
        var datetimeString = document.getElementsByName("datetimes")[0].value;

        // 날짜데이터에서 - 기준으로 데이터 나누기
        var spliteDate = datetimeString.split("-");

        // 날짜데이터에서 '/' 없애기 -> ':'없애기 -> ' '없애기			-> 201908211200오후
        var staDate = spliteDate[0].replace(/\//gi,"").replace(/ /gi, "").replace(":","");
        var endDate = spliteDate[1].replace(/\//gi,"").replace(/ /gi, "").replace(":","");

        var staDateFinal = DateConverter(staDate);
        var endDateFinal = DateConverter(endDate);

        // 가격 가져오기
        var priceDate = document.getElementById("service_price");
        var priceDescriptionData = document.getElementById("service_price_description");

        // 					객체생성
        var sendJson = new Object();
        sendJson.addressstate = spliceStr[0];
        sendJson.addresscity = spliceStr[1];
        sendJson.addressdong = spliceStr[2];
        sendJson.addressdetail = spliceStr[3]+ " " + entry_details;
        sendJson.serviceregisterdate = staDateFinal;
        sendJson.serviceenddate = endDateFinal;
        sendJson.serviceprice = Number(priceDate.value);
        sendJson.servicedatedescription = priceDescriptionData.value;

        // object를 JSON형태로 만들기
        return JSON.stringify(sendJson);
//        alert(jsonAddress);
    }
    // );
// }
function combineJson(){
        var a = JSON.parse(firstServiceSave());
        var b = JSON.parse(secondServiceSave());

        // a.addressstate = b["addressstate"];
        // a.addresscity = b["addresscity"];
        // a.addressdong = b["addressdong"];
        // a.addressdetail = b["addressdetail"];
        // a.serviceregisterdate = b["serviceregisterdate"];
        // a.serviceenddate = b["serviceenddate"];
        // a.serviceprice = b["serviceprice"];
        // a.servicedatedescription = b["servicedatedescription"];
        // return JSON.stringify(a);

        var c = $.extend({},a,b);
        return JSON.stringify(c);
}