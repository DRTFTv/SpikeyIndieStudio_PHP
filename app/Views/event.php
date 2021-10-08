<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" type="image/png" href="<?= base_url()?>/Event/favicon.png" />
    <title>HALLOWEEN PARTY</title>

    <link rel="stylesheet" href="<?= base_url()?>/Event/css/universal.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.8.1/css/ol.css" type="text/css">

</head>

<style>
    @font-face {
        font-family: Title;
        src: url(<?= base_url()?>/Event/lib/fonts/ScaryHalloweenFont.ttf);
    }

    @font-face {
        font-family: Countdown;
        src: url(<?= base_url()?>/Event/lib/fonts/DS-DIGI.TTF);
    }
</style>

<body>
    <div class="mask"></div>

    <div class="container-1">
        <div class="background-1" style=" background-image: url(<?= base_url()?>/Event/lib/images/bk.png);"></div>

        <div class="title">
            HALLOWEEN
            <br>
            PARTY
        </div>

        <div class="countdown-1">
            <table class="countdown-table-1">
                <tr>
                    <td>
                        <span class="countdown-datetime-1" id="days-1"></span>
                    </td>
                    <td>
                        <span class="countdown-datetime-1" id="hours-1"></span>
                    </td>
                    <td>
                        <span class="countdown-datetime-1" id="minutes-1"></span>
                    </td>
                    <td>
                        <span class="countdown-datetime-1" id="seconds-1"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="countdown-subtitle-1">
                            DIAS
                        </label>
                    </td>
                    <td>
                        <label class="countdown-subtitle-1">
                            HORAS
                        </label>
                    </td>
                    <td>
                        <label class="countdown-subtitle-1">
                            MINUTOS
                        </label>
                    </td>
                    <td>
                        <label class="countdown-subtitle-1">
                            SEGUNDOS
                        </label>
                    </td>
                </tr>
            </table>
        </div>

        <div class="background-bottom-1"></div>
    </div>


    <div class="container-2">
        <a href="#">
            <svg class="arrow-up" viewBox="0 0 16 16">
                <path
                    d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm4 9h8a.5.5 0 0 0 .374-.832l-4-4.5a.5.5 0 0 0-.748 0l-4 4.5A.5.5 0 0 0 4 11z" />
            </svg>
        </a>

        <div class="countdown-2">
            <table class="countdown-table-2">
                <tr>
                    <td>
                        <span class="countdown-datetime-2" id="days-2"></span>
                    </td>
                    <td>
                        <span class="countdown-datetime-2" id="hours-2"></span>
                    </td>
                    <td>
                        <span class="countdown-datetime-2" id="minutes-2"></span>
                    </td>
                    <td>
                        <span class="countdown-datetime-2" id="seconds-2"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="countdown-subtitle-2">
                            DIAS
                        </label>
                    </td>
                    <td>
                        <label class="countdown-subtitle-2">
                            HORAS
                        </label>
                    </td>
                    <td>
                        <label class="countdown-subtitle-2">
                            MINUTOS
                        </label>
                    </td>
                    <td>
                        <label class="countdown-subtitle-2">
                            SEGUNDOS
                        </label>
                    </td>
                </tr>
            </table>
        </div>

        <div class="content-1">
            <div class="map" id="map"></div>

            <div class="description">
                Data: 29/10/21 (sexta) e 30/10/21 (sábado) <br>
                <br>
                Horário de início: 18h <br>
                <br>
                Local: Rua Tenente José Ignácio Monte Oliva - n°771 ( RUA DO UPA, NÃO DO AME GALERA ) <br>
                <br>
                • USO OBRIGATÓRIO DE FANTASIA!! 🎭 <br>
                • PROIBIDO BEBIBA ALCOÓLICA 🚫 <br>
                <br>
                Quem for dormir, levar: <br>
                - Troca de roupa <br>
                - Cobertor/ travesseiro <br>
                - Roupa de piscina ( caso queira entrar ) <br>
            </div>
        </div>

        <div class="content-2">
            <div class="map-subtitle">
                <a class="linkLocal"
                    href="https://www.google.com.br/maps/place/R.+Ten.+Jos%C3%A9+Ign%C3%A1cio+Monte+Oliva,+771+-+Residencial+Park+D'Aville,+Peru%C3%ADbe+-+SP,+11750-000/@-24.3089737,-47.0098628,17z/data=!3m1!4b1!4m5!3m4!1s0x94d0266836f392ed:0x33749acb7fa760ce!8m2!3d-24.3089786!4d-47.0076741"
                    target="_blank">
                    <div class="icon-subtitle">
                        <img src="<?= base_url()?>/Event/lib/images/phantom.png">
                    </div>
                    LOCAL
                </a>

                <a class="linkHospital"
                    href="https://www.google.com.br/maps/place/UPA/@-24.3138185,-47.0056232,16.5z/data=!4m13!1m7!3m6!1s0x94d0266836f392ed:0x33749acb7fa760ce!2sR.+Ten.+Jos%C3%A9+Ign%C3%A1cio+Monte+Oliva,+771+-+Residencial+Park+D'Aville,+Peru%C3%ADbe+-+SP,+11750-000!3b1!8m2!3d-24.3089786!4d-47.0076741!3m4!1s0x94d0274936f95f95:0x35bbf53516067661!8m2!3d-24.3133601!4d-47.0021508"
                    target="_blank">
                    <div class="icon-subtitle">
                        <img src="<?= base_url()?>/Event/lib/images/hospital.png">
                    </div>
                    HOSPITAL
                </a>
            </div>

            <div class="btn-content">
                <button class="btn" onclick="confirming()">
                    <label>CONFIRMAR PRESENÇA</label>

                    <svg class="person-check" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                            d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
                        <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                    </svg>
                </button>
            </div>

        </div>


    </div>


    <script src="<?= base_url()?>/Event/componets/main.js"></script>
    <script src="<?= base_url()?>/Event/componets/countdown.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.8.1/build/ol.js"></script>
    <script src="<?= base_url()?>/Event/componets/map.js"></script>

    <!---
                      #######  ##       ########
            #######   #     #  ##       ##    ##  #######
            #######   #        ##       ##    ##  #######
    #######           #######  ##       ########           #######
            #######        ##  ##       ##    ##  #######
            #######   #    ##  ##       ##    ##  #######
                      #######  #######  ##    ##
    -->

</body>

</html>