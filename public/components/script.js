window.onload = Check;
window.onresize = Check;
window.onscroll = Show;

function Check() {
    let res = navigator.saysWho
    let pos = res.substring(0, res.indexOf('-'));
    let error = document.getElementById("container-error");

    if(pos == "Firefox") {
        error.style.display = "flex";
    }else {
        error.style.display = "none";
    }

    Galaxy();
}

navigator.saysWho = (() => {
    const {
        userAgent
    } = navigator
    let match = userAgent.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || []
    let temp

    if (/trident/i.test(match[1])) {
        temp = /\brv[ :]+(\d+)/g.exec(userAgent) || []

        return `IE ${temp[1] || ''}`
    }

    if (match[1] === 'Chrome') {
        temp = userAgent.match(/\b(OPR|Edge)\/(\d+)/)

        if (temp !== null) {
            return temp.slice(1).join(' ').replace('OPR', 'Opera')
        }

        temp = userAgent.match(/\b(Edg)\/(\d+)/)

        if (temp !== null) {
            return temp.slice(1).join(' ').replace('Edg', 'Edge (Chromium)')
        }
    }

    match = match[2] ? [match[1], match[2]] : [navigator.appName, navigator.appVersion, '-?']
    temp = userAgent.match(/version\/(\d+)/i)

    if (temp !== null) {
        match.splice(1, 1, temp[1])
    }

    return match.join('-')
})()

function Galaxy() {
    for (let x = 1; x <= 3; x++) {
        for (let y = 1; y <= 2; y++) {
            let p = Particle();
            let star = document.getElementById("particle-" + x + "-" + y + "");
            star.style.boxShadow = p;
        }
    }
}

function Particle() {
    let particle = '0px 0px black';
    for (let i = 1; i < window.innerHeight; i++) {
        let windowWidth = window.innerWidth;
        let windowHeight = window.innerHeight;
        let x = parseInt(Math.random() * (windowWidth - 1) + 1);
        let y = parseInt(Math.random() * (windowHeight - 1) + 1);
        particle += ', ' + x + 'px ' + y + 'px black';
    }
    return particle;
}

function Show() {
    let d = document.documentElement;
    let v = parseInt(100 * d.scrollTop / (d.scrollHeight - d.clientHeight));

    let lg = document.getElementById("logoAnimation");
    let gb = document.getElementById("gamesBtn");
    let cb = document.getElementById("cultureBtn");
    let pb = document.getElementById("partnersBtn");
    let tb = document.getElementById("teamBtn");
    let ln = document.getElementById("logoName");
    let cg = document.getElementById("contentGeneral");

    let x = [lg, gb, cb, pb, tb, ln];

    if (v > 90) {
        for (let i = 0; i < x.length; i++) {
            x[i].classList.add("showAnimation");
            x[i].style.display = "flex";
            cg.style.display = "flex";
        }
    } else {
        for (let i = 0; i < x.length; i++) {
            x[i].classList.remove("showAnimation");
            x[i].style.display = "none";
            cg.style.display = "none";
        }
    }
}

function ShowContent(btnId) {
    let cg = document.getElementById("contentGames");
    let cb = document.getElementById("contentCulture");
    let cp = document.getElementById("contentPartners");
    let ct = document.getElementById("contentTeam");

    switch (btnId) {
        case "gamesBtn":
            cg.classList.toggle("contentGeneralAnimation");
            cb.classList.remove("contentGeneralAnimation");
            cp.classList.remove("contentGeneralAnimation");
            ct.classList.remove("contentGeneralAnimation");
            break;
        case "cultureBtn":
            cg.classList.remove("contentGeneralAnimation");
            cb.classList.toggle("contentGeneralAnimation");
            cp.classList.remove("contentGeneralAnimation");
            ct.classList.remove("contentGeneralAnimation");
            break;
        case "partnersBtn":
            cg.classList.remove("contentGeneralAnimation");
            cb.classList.remove("contentGeneralAnimation");
            cp.classList.toggle("contentGeneralAnimation");
            ct.classList.remove("contentGeneralAnimation");
            break;
        case "teamBtn":
            cg.classList.remove("contentGeneralAnimation");
            cb.classList.remove("contentGeneralAnimation");
            cp.classList.remove("contentGeneralAnimation");
            ct.classList.toggle("contentGeneralAnimation");
            break;
    }
}