$(document).ready(function() {
  $('.next-tweets').on('submit', function(event){
    event.preventDefault();
    setInterval(function() {
      var keyword = $("input[name='keyword']").val()
      var newest = $('.container').find('.tweet').first().text()
      var topicData = {keyword, newest}
      var req = $.ajax({
        method: 'GET',
        url: '/tweets',
        data: topicData
      });
      req.done(function(response){
        // console.log(response.length)
        if (response.length > 63) {
        var animatedResponse = $($(response).animate({height: '20px',}, 500)).delay(10000).animate({opacity: 0.05,}, 25000);

        $('.container').prepend(animatedResponse)
        var containerSize = $('.tweet').length
        if (containerSize === 15){
          $('.container').find('.tweet').last().remove();
        }
        }
      });
    }, 1000 * 60 * .06);
  });
});
