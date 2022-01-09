# Menor que: <
# Maior que: >
# Menos que ou igual a: <=
# Melhor que ou igual a: >=
# É igual a: ==
# NÃO é igual a: !=
# o operador AND (&)
# o operador OR (|)
# o operador NOT, também conhecido como operador bang (!)

stopLight <- "green"
pedestrians <- 0

if (stopLight == 'green' & pedestrians == 0) {
  print('Go!');
} else {
  print('Stop');
}

day <- "Sunday"

if (day == 'Saturday' | day == 'Sunday') {
  print('Enjoy the weekend!')
} else {
  print('Do some work.')
}