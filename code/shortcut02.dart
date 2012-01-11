main() {
  var list = [1, 5, 8, 10];
  list.forEach(fib_printer);
}

fib_printer(i) {
  print("Fib($i): " + fib(i));
}

fib(i) {
  if (i < 2) return i;
  return fib(i-2) + fib(i-1);
}
