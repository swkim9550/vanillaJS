const loveDay = document.querySelector("#loveday");
const today = new Date();
const inputDay = new Date('2019/11/08 10:00:00');
const diffDay = Math.ceil((today.getTime()-inputDay.getTime())/(1000*3600*24));
const diffHour = Math.ceil((today.getTime()-inputDay.getTime())/(1000*60*60));
const diffMinutes = Math.ceil((today.getTime()-inputDay.getTime())/(1000*60));
const diffSeconds = Math.ceil((today.getTime()-inputDay.getTime())/(1000));
let clickCount = 0;

function getLoveday() {
    if(clickCount ===0){
        loveDay.innerHTML = `${diffDay}일`;
        clickCount++;
    }
    else if(clickCount===1){
        loveDay.innerHTML = `${diffHour}시간`;
        clickCount++;
    }else if(clickCount===2){
        loveDay.innerHTML = `${diffMinutes}분`;
        clickCount++;
    }else if(clickCount===3){
        loveDay.innerHTML = `${diffSeconds}초`;
        clickCount =0;//초기화
        init();
    }
    //loveDay.style.color = "blue";
}

function init() {
    getLoveday();
    loveDay.addEventListener("click",getLoveday);
    //setInterval(getLoveday,1000);
}

init();