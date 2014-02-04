/**
 * 
 */

// Google Earth Plugin
//<script type="text/javascript" src="https://www.google.com/jsapi">

var ge;
google.load("earth", "1", {
	"other_params" : "sensor=false"
});

function init() {
	google.earth.createInstance('GoogleEarthContainer', initCB, failureCB);
}

function initCB(instance) {
	ge = instance;
	ge.getWindow().setVisibility(true);

	ge.getLayerRoot().enableLayerById(ge.LAYER_BORDERS, true);
	ge.getLayerRoot().enableLayerById(ge.LAYER_ROADS, true)
	ge.getNavigationControl().setVisibility(ge.VISIBILITY_AUTO);

	// Add controls for the window
	ge.getOptions().setStatusBarVisibility(true);
	document.getElementById('GoogleEarthPluginVersion').innerHTML += ge.getPluginVersion().toString();

	// ponto inicial da visualização
	var lookAt = ge.createLookAt('');
	lookAt.setLatitude(-5.8678);
	lookAt.setLongitude(-35.1826);
	lookAt.setRange(3000.0); //default is 0.0
	ge.getView().setAbstractView(lookAt);
	
	var debug = ele('GoogleEarthDebug');

	var latitude = document.createElement('p');
	var latId = document.createAttribute('id');
	latId.value = 'dinDebugLat';
	latitude.setAttributeNode(latId);
	//var latText = document.createTextNode("texto de latitude..");
	//latitude.appendChild(latText);

	var longitude = document.createElement('p');
	var lonId = document.createAttribute('id');
	lonId.value = 'dinDebugLon';
	longitude.setAttributeNode(lonId);
	//var lonText = document.createTextNode("texto de longitude...");
	//longitude.appendChild(lonText);

	var info = document.createElement("h4");
	var infoId = document.createAttribute('id');
	infoId.value = 'GEDebugInfo';
	info.setAttributeNode(infoId);
	var infoText = document.createTextNode("tags criadas em tempo de execucao:");
	info.appendChild(infoText);

	debug.appendChild(info);
	debug.appendChild(latitude);
	debug.appendChild(longitude);

	google.earth.addEventListener(ge.getView(), 'viewchange', followCamera);
}

function followCamera(){
	var la = ge.getView().copyAsLookAt(ge.ALTITUDE_RELATIVE_TO_GROUND);

	ele('GEDebugLat').innerHTML = "Latitude: " + la.getLatitude().toPrecision(14);
	ele('GEDebugLon').innerHTML = "Longitude: " + la.getLongitude().toPrecision(14);

	ele('dinDebugLat').innerHTML = "(2)Latitude: " + la.getLatitude().toPrecision(12);
	ele('dinDebugLon').innerHTML = "(2)Longitude: " + la.getLongitude().toPrecision(12);
	
	// formata a latitude e longitude com vírgula(,) para casa decimal no lugar de ponto(.)
	var lat = la.getLatitude().toPrecision(14);
	lat = lat.toString();
	lat = lat.replace('.', ',');	
	ele('formCreateFieldLatitude').value = lat.valueOf();
	
	var lon = la.getLongitude().toPrecision(14);
	lon = lon.toString();
	lon = lon.replace('.', ',');
	ele('formCreateFieldLongitude').value = lon.valueOf();
	


}

function setCoordenadas(latitude, longitude){
	var lookAt = ge.getView().copyAsLookAt(ge.ALTITUDE_RELATIVE_TO_GROUND);

	// ponto inicial da visualização
	//var lookAt = ge.createLookAt('');
	lookAt.setLatitude(latitude);
	lookAt.setLongitude(longitude);
	lookAt.setRange(3000.0); //default is 0.0
	ge.getView().setAbstractView(lookAt);
	
}


function ele(e){
	return document.getElementById(e);
}

function failureCB(errorCode) {
}

google.setOnLoadCallback(init);
