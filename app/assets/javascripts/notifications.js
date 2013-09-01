$(function() {
  $("#q_reported_at_gteq")
    .val($("#q_reported_at_gteq").val().split(" ")[0])
    .datepicker({
      beforeShow: customRange,
      dateFormat: "yy-mm-dd"
    });
  $("#q_reported_at_lteq")
    .val($("#q_reported_at_lteq").val().split(" ")[0])
    .datepicker({
      beforeShow: customRange,
      dateFormat: "yy-mm-dd 23:59:59"
    })

  function customRange(input) {
      if (input.id == 'q_reported_at_lteq') {
          var minDate = new Date($('#q_reported_at_gteq').val());
          minDate.setDate(minDate.getDate() + 1)

          return {
              minDate: minDate
          };
      }
      if (input.id == 'q_reported_at_gteq') {
          var maxDate = new Date($('#q_reported_at_lteq').val());
          maxDate.setDate(maxDate.getDate() + 1)

          return {
              maxDate: maxDate
          };
      }
      return {}
  }
});