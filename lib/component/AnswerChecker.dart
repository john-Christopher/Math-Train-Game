
Map<String, List<String>> keyCorrection = {
  'Exponential Equation' : ['2^x = 16^2x+1', '2^x+2 - 5 = 27', '7 + 4^X = 23', '0.25 = 5^X'],
  'Exponential Inequality' : ['3^x >= 243', '5^x+4 -1 < 20', '2x +1 > 129', '4^x - 3 <= 61'],
  'Exponential Function' : ['f(x) = (1/2)^3 - x', '10^x+2 = y', 'y=1/9 + 3^x', 'f(x) = 2^x + 1'],
  'None of these' : ['x^2+2 = 66', 'y = 3x^2 + 7', 'f(x) = 3x^3 - 8', 'x^4 - 7  = 21'],
};

void tabacoMatchAnswer (userAns) {
  int correctAns = 0;
  int incorrectAns = 0;
  int totalNum = keyCorrection.values.length;
  int score = 0;

  userAns.forEach((question, answers) {
    if(keyCorrection[question] == userAns){
      correctAns++;
      incorrectAns = totalNum - correctAns;
    }
  });
  score = correctAns - incorrectAns;

  // ignore: avoid_print
  print(score); 
}