$(document).ready(function () {

	var $externalDate = $('.external-data .date');
	var $externalData = $('.external-data .value .data');

	setInterval(function() {
		$externalDate.text(moment().format('LTS'));
	}, 1000);


	setInterval(function() {
		$.ajax({
			url: '/external_api/v1/get_data',
			method: 'get'
		}).success(response => $externalData.text(response.value.toFixed(2)));
	}, 10000);

});