import '7-basketball-shots.dart';

main() {
    var teamA = { 'Free throws': 23, '2 pointers': 32, '3 pointers': 16 };
    var teamB = { 'Free throws': 31, '2 pointers': 27, '3 pointers': 13 };
    print(whoWins(teamA, teamB));
    teamA = { 'Free throws': 45, '2 pointers': 0, '3 pointers': 1 };
    teamB = { 'Free throws': 0, '2 pointers': 2, '3 pointers': 99 };
    print(whoWins(teamA, teamB));
    teamA = { 'Free throws': 1, '2 pointers': 2, '3 pointers': 3 };
    teamB = { 'Free throws': 1, '2 pointers': 2, '3 pointers': 3 };
    print(whoWins(teamA, teamB));
}
