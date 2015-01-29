$(function() {
  $("input,textarea").jqBootstrapValidation({
    submitSuccess: function(form, event) {
      event.preventDefault();

      $.ajax({
        url: 'send_message',
        type: "POST",
        data: form.serialize()
      })
    }
  });
});
