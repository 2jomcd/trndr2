
// console.log("im loading");

// // On page load

// $(document).ready(function(){

// $('.searchResults').on('click', '.favoriteButtons', function(){
  

//   var site = 'undefined';
//   var title = 'undefined';
//   var prevw = 'undefined';
//   var img = 'undefined';
//   var kind = 'undefined';
//   var actors = 'undefined';
//   var country = ($('#selectedCountryDiv').text());
//   var artist = 'undefined'


//   if($(this).attr('url')){
//     var site = ($(this).attr('url'));
//   };

  
//   if($(this).attr('title')){
//     var title = ($(this).attr('title'));
//   };

//   if($(this).attr('preview')){ 
//     var prevw = ($(this).attr('preview'));
//   };

//   if($(this).attr('imgLink')){
//     var img = ($(this).attr('imgLink'));
//   };

//   if($(this).attr('kind')){
//     var kind = ($(this).attr('kind'));
//   };
 
//   if ($(this).attr('actors')){
//     var actors = ($(this).attr('actors'));
//   };

//   $(this.firstChild).css('color', 'purple');

//   $.ajax('/media', {
//       type: 'POST',
//       dataType: 'json',
//       data: {title : title, artist : artist, prevw : prevw, img : img, site : site, kind : kind, actors : actors},
//   }).done(function(response){
//     var mediaId = response
//     $.ajax('/favorites', {
//       type: 'POST',
//       dataType: 'json',
//       data: { country: country, mediaId: mediaId }
//     });
//   });
// });


// // loadFavorites();

//   // setTimeout(populateFavorites(), 10000);
//   // setTimeout(function(){
//   // alert(favoriteArray);

// });


// // Function & Variable Definitions

// window.favoriteArray= [];

// var loadFavorites= function(){
//   $.ajax('/favorites', {
//     type: 'GET',
//     dataType: 'json'
//   }).done(function(response){
//     console.log("response: ", response);
//     var favorites = response;
//     for (i=0; i<favorites.length; i++){
//       console.log("iterating times ", i);
//       var media_id = favorites[i].media_id;
//       // console.log(media_id);
//       $.ajax('/media', {
//         type: 'GET',
//         dataType: 'json',
//         data: { media_id: media_id },
//       }).done(function(data){
//         var fav = data;
//         window.favoriteArray.push(fav);
//       });
//     };
//     console.log("favorites: ", window.favoriteArray)
//   });
// };

// var populateFavorites= function(){
//   $('#favoritesDiv').empty();
//   var content  = '<table width=100%>'
//       for(i=0; i<favoriteArray.length; i++){
//         if (favoriteArray[i].kind == 'iTunes'){
//            content += '<tr><td class="col-sm-3"><img src=' + favoriteArray[i].img + '></td><td class="col-sm-4">' + "<strong>" + favoriteArray[i].title + '</strong></td><td class="col-sm-3">' + '<audio controls="" autostart="0" name="media" source src=' + favoriteArray[i].prevw + ' type="audio/mp4"></audio>' + '</td></tr>'
//         }
//         if (favoriteArry[i].kind == 'youtube'){
//           content += '<tr><td class="col-sm-4"><iframe title="YouTube video player" src="' + favoriteArray[i].site + '" width="430" height="305" frameborder="0" allowfullscreen="1"></iframe></td></tr>'
//         }
//         if (favoriteArray[i].kind == 'boxOffice'){
//            content += '<tr><td class="col-sm-2"><img width="100px" src=' + favoriteArray[i].img+ '></td><td class="col-sm-3"><strong>' + title + '</strong><br>' + favoriteArray[i].actors + '</td></tr>'
//         }
//       }
//   $('#favoritesDiv').append(content);
// };