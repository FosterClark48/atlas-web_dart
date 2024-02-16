/// Create a function whoWins() that calculates the total number of points for each team and return the winning team:
/// If teamA points > teamB points return 1
/// If teamA points < teamB points return 2
/// If teamA points = TeamB points return 0
/// A free throw shot counts as 1 Point.
/// A 2 pointer shots counts as 2 Points.
/// A 3 pointer shots counts as 3 Points.

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var teamAPoints = teamA['Free throws']! * 1 + teamA['2 pointers']! * 2 + teamA['3 pointers']! * 3;
  var teamBPoints = teamB['Free throws']! * 1 + teamB['2 pointers']! * 2 + teamB['3 pointers']! * 3;

  if(teamAPoints > teamBPoints) {
    return 1;
  } else if(teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
