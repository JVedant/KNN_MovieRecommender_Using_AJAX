/**
 * 
 */

function get_result() {

	var movie = document.getElementById("movieName");
	var numberOfRecommendations = document
			.getElementById("numberOfRecommendations");

	var htp = new XMLHttpRequest();

	htp.onreadystatechange = function() {

		if (htp.readyState == 4) {
			alert()
			var j = JSON.parse(htp.responseText);
		}
	}

	htp
			.open("get", "http://127.0.0.1:5000/predict?Movie=" + movie.value
					+ "&numberOfRecommendations="
					+ numberOfRecommendations.value, true);

	htp.send();
}

function increaseValue() {
	var value = parseInt(
			document.getElementById('numberOfRecommendations').value, 10);
	value = isNaN(value) ? 0 : value;
	value++;
	document.getElementById('numberOfRecommendations').value = value;
}

function decreaseValue() {
	var value = parseInt(
			document.getElementById('numberOfRecommendations').value, 10);
	value = isNaN(value) ? 0 : value;
	value < 1 ? value = 1 : '';
	value--;
	document.getElementById('numberOfRecommendations').value = value;
}