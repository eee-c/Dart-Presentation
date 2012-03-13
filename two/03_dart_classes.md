!SLIDE
# Dart Classes

## B'more on Rails
## Chris Strom
## @eee_c

!SLIDE

# Quick Review

 * Familiar syntax
 * Can be compiled to JS
 * Can serve both JS and Dart depending on browser

!SLIDE

    @@@ Javascript
    class Hipster {
      // describe class operations here...
    }


!SLIDE
# Instance Variables

    @@@ Javascript
    class Hipster {
      bool glasses;
      bool flannel;
      List other;
    }


!SLIDE
# Instance Getters

    @@@ Javascript
    class Hipster {
      bool glasses;
      bool flannel;
      List other;
    }

    var chris = new Hipster();
    chris.glasses = true;
    chris.flannel = false;
    chris.other = ['Toe shoes'];

!SLIDE
# Private Instance Variables

    @@@ Javascript
    class Hipster {
      bool _lovesMadonna;
    }

    var chris = new Hipster();
    chris._lovesMadonna = true;
    // => No such method!

!SLIDE
# Instance Methods

    @@@ Javascript
    class Hipster {
      String sayHi(friend) {
        return "Howdy $friend!";
      }
    }

    var chris = new Hipster();
    chris.sayHi("Bob");
    // => "Howdy Bob!"

!SLIDE
# Instance Methods

    @@@ Javascript
    class Hipster {
      String sayHi(friend) =>
        "Howdy $friend!";
    }

    var chris = new Hipster();
    chris.sayHi("Bob");
    // => "Howdy Bob!"

!SLIDE
# Getters and Setters


!SLIDE
# Getters and Setters

    @@@ Javascript
    class Hipster {
      List other;
    }

    var chris = new Hipster();
    chris.other = ['Toe shoes'];

!SLIDE
# Getters

    @@@ Javascript
    class Hipster {
      bool glasses;
      bool flannel;

      bool get isPoser() =>
        !(glasses && flannel);
    }

    var chris = new Hipster();
    chris.glasses = true;
    chris.flannel = false;
    chris.isPoser;
    // => true

!SLIDE
# Setters

    @@@ Javascript
    class Hipster {
      // ...
      void set poser(bool am_i) {
        _poser = bool;
      }

      bool get isPoser() {
        if (_poser != null) return _poser;
        return !(glasses && flannel);
      }
    }

!SLIDE
# Setters

    @@@ Javascript
    class Hipster {
      // ...
      void set poser(bool am_i) { /* ... */ }
      bool get isPoser() { /* ... */ }
    }

    var chris = new Hipster();
    chris.poser = false;
    chris.isPoser;
    // => false

!SLIDE
# Operator Methods

`==`, `<`, `>`, `<=`, `>=`, `-`, `+`, `/`, `~/`,  `*`, `%`, `|`, `^`, `&`, `<<`, `>>`, `[]=`, `[]`, `~` and `!`

    @@@ Javascript
    class Hipster {
      List other;
      operator [](index) =>
        other[index];
    }

    var chris = new Hipster();
    chris.other = ['Toe shoes'];
    chris[0];
    // => 'Toe shoes'

!SLIDE
# Class Methods

Use the "static" keyword

    @@@ Javascript
    class Hipster {
      static List traits() =>
        ['glasses', 'flannel'];
    }

    Hipster.traits();
    // => ['glasses', 'flannel']

!SLIDE
# Interfaces

    @@@ Javascript
    class Hipster implements HashMap {
      var _traits = {};

      // expected to quack
      operator [](attr) =>
        _traits[attr];
    }


!SLIDE
# Sub-classes

    @@@ Javascript
    class Hipster {
      String sayHi(name) =>
        "Howdy, $name";
    }

    class BmoreHipster extends Hipster {
      String sayHi(name) =>
        "Hi, hon";
    }

    var chris = new BmoreHipster();
    chris.sayHi();
    // => "Hi, hon"

!SLIDE
# Constructors

    @@@ Javascript
    class Hipster {
      bool glasses;
      bool flannel;

      Hipster(glasses, flannel) {
        this.glasses = glasses;
        this.flannel = flannel;
      }
    }

    var chris = new Hipster(true, false);
    chris.flannel;
    // => false;

!SLIDE
# Constructor Shortcut!

    @@@ Javascript
    class Hipster {
      bool glasses;
      bool flannel;

      Hipster(this.glasses, this.flannel);
    }

    var chris = new Hipster(true, false);
    chris.flannel;
    // => false;

!SLIDE
# Advanced Topics

 * Optional parameters
 * Named Constructors
 * Factory Constructors

!SLIDE
# Optional Parameters

    @@@ Javascript
    class Hipster {
      bool glasses;
      bool flannel;

      Hipster([this.glasses, this.flannel]);
    }

    var chris = new Hipster(glasses: true);
    chris.glasses;
    // => true;

!SLIDE
# Named Constructors

    @@@ Javascript
    class Hipster {
      bool glasses, flannel;

      Hipster.booleans([
        this.glasses, this.flannel
      ]);
    }

    var chris = new Hipster.booleans(
      glasses: true,
      flannel: false
    );
    chris.glasses;
    // => true;

!SLIDE
# Named Constructors

    @@@ Javascript
    class Hipster {
      bool glasses, flannel;

      Hipster.booleans([
        this.glasses, this.flannel
      ]);
    }

    var chris = new Hipster();
    chris.glasses;
    // => null;

!SLIDE
# Factory Constructors

Use the `factory` keyword.

    @@@ Javascript
    class PrettyName {
      factory PrettyName(name) {
        return "Pretty $name";
      }
    }

    new PrettyName("Chris");
    // => "Pretty Chris"

!SLIDE
# More Info

## http://dart4hipsters.com
## http://japhr.blogspot.com
## @eee_c
