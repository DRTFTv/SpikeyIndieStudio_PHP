const cordsCenter = [-47.0049181888172, -24.311158358043915];
const cordsLocal = [-47.00767784082442, -24.30891691976426];
const cordsHospital = [-47.00215017049989, -24.31336061134826];

const iconPhantom = new ol.Feature({
    geometry: new ol.geom.Point(ol.proj.fromLonLat(cordsLocal)),
    name: 'Local',
});

const iconHospital = new ol.Feature({
    geometry: new ol.geom.Point(ol.proj.fromLonLat(cordsHospital)),
    name: 'Hospital',
});

const sourceIconPhantom = new ol.source.Vector({
    url: '/data/layers/7day-M2.5.json',
    format: new ol.format.GeoJSON(),
    features: [iconPhantom]
});

const sourceIconHospital = new ol.source.Vector({
    url: '/data/layers/7day-M2.5.json',
    format: new ol.format.GeoJSON(),
    features: [iconHospital]
});

const map = new ol.Map({
    target: 'map',
    layers: [
        new ol.layer.Tile({
            source: new ol.source.OSM(),
        }),
        new ol.layer.Vector({
            source: sourceIconPhantom,
            style: new ol.style.Style({
                image: new ol.style.Icon({
                    anchor: [0.5, 1],
                    anchorXUnits: 'fraction',
                    anchorYUnits: 'pixels',
                    src: '../Event/lib/images/phantom.png',
                })
            })
        }),
        new ol.layer.Vector({
            source: sourceIconHospital,
            style: new ol.style.Style({
                image: new ol.style.Icon({
                    anchor: [0.5, 1],
                    anchorXUnits: 'fraction',
                    anchorYUnits: 'pixels',
                    src: '../Event/lib/images/hospital.png',
                })
            })
        })
    ],
    view: new ol.View({
        center: ol.proj.fromLonLat(cordsCenter),
        zoom: 16,
        maxZoom: 17,
        minZoom: 15,
    }),
});