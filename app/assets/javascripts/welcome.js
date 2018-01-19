var ready = function () {

  // initialize active point being shown while hiding others
  $('.point-content').hide();
  $('#content-schedule').show();

  //binding click event to point link
  $('.point-link').on('click', function (event) {

    event.preventDefault();
    $('.point-link').removeClass('active');
    $(this).addClass('active');

    var divId = event.target.closest('figure').id.replace('point', '#content');
    $('.point-content').hide();
    $(divId).show();
  });
}

$(document).ready(ready);
$(document).on('page:load', ready);