$(function() {
  $('#add-departure').click(function () {
    $.post("departures", function(data) {
      var elementHtml = '<tr data-id="' + data['id'] + '"><td>Flight ' + data['id'] + '</td><td>Scheduled</td></tr>'
      var firstElement = $('#departures').find('> tbody > tr:first');
      if(firstElement.length > 0) {
        firstElement.before(elementHtml);
      }
      else {
        $('#departures').find('> tbody').html(elementHtml);
      }
    });
  });

  PrivatePub.subscribe("/departures", function(data, channel) {
    $('#departures').find('tr[data-id="'+data['id']+'"]').html('<td>Flight '+data['id']+'</td><td>'+data['departed_at']+'</td>');
  });
});
