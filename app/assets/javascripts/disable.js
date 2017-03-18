(function() {
  $('form > input').keyup(function() {
    var empty = false;
    $('form > input').each(function() {
      if ($(this).val() == '') {
          empty = true;
      }
    });

    if (empty) {
      $('#text-to-translate').attr('disabled', 'disabled');
    } else {
      $('#text-to-translate').removeAttr('disabled');
    }
  });
})()