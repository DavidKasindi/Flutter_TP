//import 'package:flutter/material.dart';
import 'dart:math';
import 'etudiant.dart';

void main() {
  print("================Exercice1\n");
  checkAgeAndGender(5, 'femme');

  print("================Exercice2\n");
  print(generateGreetings(3));

  print("================Exercice3\n");
  calculateQuadraticEquation(1, -3, 2);

  print("================Exercice4\n");
  List<int> numbers = [10, 20, 30, 40, 50];
  double average = calculateAverage(numbers);
  print('La moyenne des nombres est : $average');

  print("================Exercice5\n");
  int number = 5;
  int factorial = calculateFactorial(number);
  print('Le factoriel de $number est : $factorial');

  print("================Exercice6\n");
  Etudiant etudiant = new Etudiant(1, 'MUSURURU', 'KASINDI', 'David', 'Homme',
      19, DateTime(2001, 1, 04), 65.5, 180.0);
  etudiant.afficherInformations();
}

void checkAgeAndGender(int age, String gender) {
  if (age >= 18) {
    if (gender.toLowerCase() == 'homme') {
      print('un majeur.');
    } else if (gender.toLowerCase() == 'femme') {
      print('une majeure.');
    } else {
      print('Genre non spécifié.');
    }
  } else {
    if (gender.toLowerCase() == 'homme') {
      print('un mineur.');
    } else if (gender.toLowerCase() == 'femme') {
      print('une mineure.');
    } else {
      print('Genre non spécifié.');
    }
  }
}

String generateGreetings(int count) {
  String message = "";
  for (int i = 0; i < count; i++) {
    message += "Bonjour le monde\n";
  }
  return message;
}

void calculateQuadraticEquation(double a, double b, double c) {
  double discriminant = (b * b) - (4 * a * c);
  if (discriminant > 0) {
    double root1 = (-b + sqrt(discriminant)) / (2 * a);
    double root2 = (-b - sqrt(discriminant)) / (2 * a);
    print('Les solutions de l\'équation sont : $root1 et $root2');
  } else if (discriminant == 0) {
    double root = -b / (2 * a);
    print("L\'équation a une solution double : $root");
  } else {
    print("L\'équation n\'a pas de solution réelle.");
  }
}

double calculateAverage(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}

int calculateFactorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}
