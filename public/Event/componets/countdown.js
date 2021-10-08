const second = 1000;
const minute = second * 60;
const hour = minute * 60;
const day = hour * 24;

let count_down = new Date('10/29/2021 18:00:00').getTime();
let x = setInterval(() => countDown(), second);

function countDown() {
    let now = new Date(Date.now()).getTime();
    let diff = count_down - now;

    for(x = 1; x <= 2; x++) {
        document.getElementById('days-' + x).innerHTML = Math.floor(diff / day);
        document.getElementById('hours-' + x).innerHTML = Math.floor(diff % day / hour);
        document.getElementById('minutes-' + x).innerHTML = Math.floor(diff % hour / minute);
        document.getElementById('seconds-' + x).innerHTML = Math.floor(diff % minute / second);
    }

}