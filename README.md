# Basic2D
This is a very basic 2D physics engine. Right now, its capable of doing basic physics simulations, hence thats why its called Basic2D.

## Capabilities 
* Basic physics simulations 
  * Force, acceleration, velocity and etc.
  
### Coming soon...
* Gravity, friction, air and fluid resistance
* Attraction

> NOTE: Basic2D is currently only available for processing(java).

I have wrote examples for Basic2D to show how to work with it.

## How Basic2D works
Basic2D has two parts; the object and the main file. You can edit some of the code of the object according to your needs. Then you can use your main file to run the program.

### Object
The object is composed of 4 parts; velocity, acceleration, position and the topspeed. You can tweak these settings according to your needs. 

### Main
The main file is the main part of your code. Its where you bring in the functions in the object file and decide how you want to simulate your environment.

#### How to write the main file
First you need to create an instance of the Object class. Then you need to create two functions; setup and draw (like any other processing project).
```java
  Object object;
  
  void Setup(){
  object = new Object();
  }
  
  void draw(){
  }
```
Then you can call in the functions in the Object class to simulate your object.
```java
  Object object;
  
  void Setup(){
  object = new Object();
  }
  
  void draw(){
  object.update();
  object.checkEdges();
  object.display();
  }
```

## To-Do
* [ ] Air and fluid resistance 
* [ ] Editing variables and functions inside the main file.
* [ ] Gravitational attraction.
* [ ] And whataver ideas you have :)
