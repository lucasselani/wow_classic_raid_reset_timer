String hoursLeft(int timeInSeconds) {
  var time = timeInSeconds;
  var hours = timeInSeconds ~/ 3600;
  time -= hours * 3600;
  var minutes = time ~/ 60;
  time -= minutes * 60;
  var seconds = time % 60;
  var formatted = '';
  if (hours > 0) formatted += '${hours.toString().padLeft(2, '0')}h ';
  formatted += '${minutes.toString().padLeft(2, '0')}m ';
  return '$formatted${seconds.toString().padLeft(2, '0')}s';
}

int daysLeft(int timeInSeconds) => timeInSeconds ~/ (3600 * 24);
