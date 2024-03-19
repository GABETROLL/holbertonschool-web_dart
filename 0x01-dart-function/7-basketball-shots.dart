/// Expects the maps to have 'Free throws', '2 pointers' and '3 pointers' as keys, with positive ints as values.
/// If they're not present, or the value is null, the function defaults it to 0.
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    int teamAScore = (teamA['Free throws'] ?? 0) + (teamA['2 pointers'] ?? 0) * 2 + (teamA['3 pointers'] ?? 0) * 3;
    int teamBScore = (teamB['Free throws'] ?? 0) + (teamB['2 pointers'] ?? 0) * 2 + (teamB['3 pointers'] ?? 0) * 3;

    return teamAScore > teamBScore ? 1 : (teamAScore < teamBScore ? 2 : 0);
}
