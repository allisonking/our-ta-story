$(".static_pages.team").ready(function(){
  var all_team_members = $(".team-member");
  for (var i = 0; i < all_team_members.length; i++) {
    $(all_team_members[i]).remove();
  }
  //the fisher yates algorithm, from http://stackoverflow.com/questions/2450954/how-to-randomize-a-javascript-array
  var i = all_team_members.length;
  if ( i == 0 ) return false;
  while ( --i ) {
    var j = Math.floor( Math.random() * ( i + 1 ) );
    var tempi = all_team_members[i];
    var tempj = all_team_members[j];
    all_team_members[i] = tempj;
    all_team_members[j] = tempi;
  }
  for(var i = 0; i < all_team_members.length; i++) {
    if (i%2 == 0) {
      $(all_team_members[i]).addClass('orient-left');
    } else {
      $(all_team_members[i]).addClass('orient-right');
    }
    $(all_team_members[i]).appendTo($('.featured-wrapper'));
  }
})
