$(function() {
  
  new WOW().init();

  $('.tabs').tabs();
  //M.Timepicker.init(document.querySelectorAll('.timepicker'), { twelveHour: false });
  $('.modal').modal();
  
  $.ajax({
    url: 'php/request.php/up',
    type: 'post',
    dataType: 'json',
    success: function(result) {
      $('#connectionsNumber').html(`Le site recense ${ result } connexions différentes`)
    },
    error: function(resultat, statut, erreur) {}
  });

})

/*
function getBook() {
  $.ajax({
    url: 'php/request.php/getBook',
    type: 'post',
    dataType: 'json',
    success: function(result) {
      $('#bookDisplayBox').empty()
      for (let k in result) {
        let date = new Date(result[k].date);
        $('#bookDisplayBox').append(`
          <div class="col s12">
            <div class="card">
              <div class="card-content">
                <div class="grey-text" style="float:right">${ result[k].name+' le '+date.getDate()+'/'+(date.getMonth()+1)+' à '+date.getHours()+'h'+date.getMinutes() }</div>
                <div>${ result[k].comment }</div>
              </div>
            </div>
          </div>`)
      }
    },
    error: function(resultat, statut, erreur) {

    }
  });
}

function addArticle() {

  event.preventDefault();
  let name = $("#bookName").val()
  let comment = $("#bookText").val()
  
  if(name.length<3 || comment.length<3){
    $('.modal p').html('Veillez compléter les champs')
    $('#modal').modal('open');
    return 0
  }

  $.ajax({
    url: 'php/request.php/addArticle',
    type: 'post',
    dataType: 'json',
    data: { name, comment },
    success: function(result) {
      if (result == true) {
        getBook()
        $("#bookText, #bookName").val('')
      } else {
        $('.modal p').html('Une erreur s\'est produite, veuillez ressayer.')
        $('#modal').modal('open');
      }
    },
    error: function(resultat, statut, erreur) {

    }
  });
}
*/