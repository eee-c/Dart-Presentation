!SLIDE
# Functional Dart

!SLIDE
# Javascript #

    @@@ javascript
    function fib(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

!SLIDE
# Dart

    @@@ javascript
    fib(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

!SLIDE
# Calling Javascript Functions

    @@@ javascript
    function fib(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

    fib(10); // => 55

!SLIDE
# Call Dart Functions

    @@@ javascript
    fib(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

    fib(10); // => 55

!SLIDE
# Anonymous Functions in Javascript

    @@@ javascript
    function(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

!SLIDE
# Anonymous Functions in Dart

    @@@ javascript
    (i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

!SLIDE
# Using Dart Functions

    @@@ javascript
    var list = [1, 5, 8, 10];
    list.forEach((i) {fib_printer(i)});

    fib_printer(i) {
      print("Fib($i): " + fib(i));
    }

    fib(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

!SLIDE
# Iterators

    @@@ javascript
    var list = [1, 5, 8, 10];
    list.forEach((i) {fib_printer(i)});

!SLIDE
# Interpolating Strings

    @@@ javascript
    fib_printer(i) {
      print("Fib(${i}): " + fib(i));
    }

    fib_printer(10);
    > Fib(10): 55

!SLIDE
# Putting It Together

    @@@ javascript
    var list = [1, 5, 8, 10];
    list.forEach((i) {fib_printer(i)});

    fib_printer(i) {
      print("Fib($i): " + fib(i));
    }

    fib(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

!SLIDE
# Shortcut #1

    @@@ javascript
    var list = [1, 5, 8, 10];
    list.forEach((i) => fib_printer(i));

    fib_printer(i) {
      print("Fib($i): " + fib(i));
    }

    fib(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

!SLIDE
# Shortcut #2

    @@@ javascript
    var list = [1, 5, 8, 10];
    list.forEach(fib_printer);

    fib_printer(i) {
      print("Fib($i): " + fib(i));
    }

    fib(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

!SLIDE
# Shortcut #3

    @@@ javascript
    [1, 5, 8, 10].forEach((i) {
      print("Fib($i): " + fib(i));
    });

    fib(i) {
      if (i < 2) return i;
      return fib(i-2) + fib(i-1);
    }

!SLIDE
# First Order Support

    @@@ javascript
    add(x, y, z) {
      return x + y + z;
    }

    makeAdder1(fn, arg1) {
      return (y, z) {
        return fn(arg1, y, z);
      };
    }

    var add10 = makeAdder1(add, 10);

!SLIDE
# Optional Arguments

    @@@ javascript
    f(a, [b1, b2, b3, b4, b5, b6, b7]) {
      // ...
    }

    f('foo', b6:'bar', b3:'baz');

!SLIDE bullets incremental
# Limitations

* No Reflection
* No `arguments`
* No `method_missing`

_under construction!!!_

!SLIDE bullets incremental
# Implications

* Must pass exact number of arguments

!SLIDE bullets incremental
# Future Topics

* Classes
* Types
* Message Passing
* DOM // Canvas

!SLIDE
# More Info

## http://dart4hipsters.com
## http://japhr.blogspot.com
## @eee_c
