# :lock: Value Objects

Here's the explanation of value objects from [Wikipedia](https://en.wikipedia.org/wiki/Value_object): 

_"In computer science, a value object is a small object that represents a simple entity whose equality is not based on identity: 
i.e. two value objects are equal when they have the same value, not necessarily being the same object."_

A very interesting aspect of value objects is their immutability - they are [immutable objects](https://en.wikipedia.org/wiki/Immutable_object). 

As Wikipedia says: 
_"In object-oriented and functional programming, an immutable object (unchangeable object) is an object whose state cannot be modified after it is created."_ 

That means they have their final state after creation. A more than interesting concept for your software design. Therefore I wrote two examples in ABAP, inspired by the book "Clean ABAP".
