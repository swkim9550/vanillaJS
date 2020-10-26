function getTime() {
    const clockTitle = document.querySelector("#clock");
    const date = new Date();
    const minutes = date.getMinutes();
    const hours = date.getHours();
    const seconds = date.getSeconds();

    clockTitle.innerHTML = `${hours < 10 ? `0${hours}` : hours}:
                            ${minutes < 10 ? `0${minutes}` : minutes}:
                            ${seconds < 10 ? `0${seconds}` : seconds}`;
    //clockTitle.style.color = "blue";
    console.log(clockTitle)
}

function init() {
    getTime();
    setInterval(getTime,1000);
}
init();


// const secondHand = document.querySelector('.second-hand');
// const minsHand = document.querySelector('.min-hand');
// const hourHand = document.querySelector('.hour-hand');
//
// function setDate() {
//     const now = new Date();
//
//     const seconds = now.getSeconds();
//     const secondsDegrees = ((seconds / 60) * 360) + 90;
//     secondHand.style.transform = `rotate(${secondsDegrees}deg)`;
//
//     const mins = now.getMinutes();
//     const minsDegrees = ((mins / 60) * 360) + ((seconds/60)*6) + 90;
//     minsHand.style.transform = `rotate(${minsDegrees}deg)`;
//
//     const hour = now.getHours();
//     const hourDegrees = ((hour / 12) * 360) + ((mins/60)*30) + 90;
//     hourHand.style.transform = `rotate(${hourDegrees}deg)`;
// }
//
// setInterval(setDate, 1000);
//
// setDate();