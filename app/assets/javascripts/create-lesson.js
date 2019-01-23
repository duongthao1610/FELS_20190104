$('document').ready(function(){
  var word_answers = $('.word-answers');
  var i = 1;
  word_answers.hide();
  word_answers.eq(0).show();
  $('.btn-done').hide();

  $(function(){
    $('.btn-next').on('click', function(e){
      e.preventDefault();
      word_answers.eq(i-1).hide();
      word_answers.eq(i).show();
      i = i+1;
      if (i == word_answers.length){
        $('.btn-done').show();
        $('.btn-next').hide();
      }
    });
  });
});
