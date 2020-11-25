$(document).on('click', '.purchase', function () {
  $.ajax({
    url: "/purchase",
    method: "get",
    data: {table_name: $(this).attr('table-name'), id: this.value },
    success: function(data){
      alert(data.notice)
      location.reload()
    }
  })
})
