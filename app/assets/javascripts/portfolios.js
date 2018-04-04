let ready = undefined;
let set_positions = undefined;

set_positions = function() {
  $('.card').each(function(i) {
    $(this).attr('data-pos', i + 1);
  });
};

ready = function() {
  set_positions();
  $('.sortable').sortable();
  $('.sortable').sortable().bind('sortupdate', function(e, ui) {
    const update_order = [];
    set_positions();
    $('.card').each(function(i) {
      update_order.push({
        id: $(this).data('id'),
        position: i + 1
      });
    });
    $.ajax({
      type: 'PUT',
      url: '/portfolios/sort',
      data: { order: update_order
    }
    });
  });
};

$(document).ready(ready);
