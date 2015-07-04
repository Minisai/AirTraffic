$(function() {
  $('#add-departure').click(function () {
    $.post("departures", function(data) {
      $('#departures > tbody > tr:first').before('<tr><td>Flight ' + data['id'] + '</td><td>Scheduled</td></tr>');
    });
  });
});
