'use strict';

$(() => {

  let settings = {
    "async": true,
    "crossDomain": true,
    "url": "https://api.themoviedb.org/3/movie/now_playing?region=greece&page=1&language=en-US&api_key=bbb0e77b94b09193e6f32d5fac7a3b9c",
    "method": "GET",
    "headers": {},
    "data": "{}"
  };

  let request = () =>
    $.ajax(settings).done(function (response) {
      console.log(response);
    });


  // let timer = function(){
  //   setInterval(function (){
  //     $.ajax(settings).done(function (response) {
  //       console.log(response);
  //     }, 5000);
  //   })
  // }

  // timer();

    let failure = () => console.log("you got a problem");
    let success = () => {
      $('.show-movies').html("request received");
    };

    let getMovies = function (event){
      event.preventDefault();
      request()
      .then(success)
      .catch(failure);

    };

  $('.get-movies-button').on('click', getMovies);

});
