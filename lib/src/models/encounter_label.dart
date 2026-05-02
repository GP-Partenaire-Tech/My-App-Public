enum EncounterLabel {
  keep,
  recall,
  avoid,
  neverAgain,
  regret,
  none;

  static EncounterLabel fromScore(double? score) {
    if (score == null) {
      return EncounterLabel.none;
    }
    if (score >= 4.5) {
      return EncounterLabel.keep;
    }
    if (score >= 3.5) {
      return EncounterLabel.recall;
    }
    if (score >= 2.5) {
      return EncounterLabel.avoid;
    }
    if (score >= 1.5) {
      return EncounterLabel.neverAgain;
    }
    return EncounterLabel.regret;
  }
}
