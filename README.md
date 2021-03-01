# Basic2D
This is a very basic 2D physics engine and simulator. Right now, its capable of doing basic physics simulations, hence thats why its called Basic2D.

## Capabilities 
* Basic physics simulations 
  * Force, acceleration, velocity and etc.
  
### Coming soon...
* Gravity, friction, air and fluid resistance
* Attraction

> NOTE: Basic2D is currently only available for processing(java).

I have wrote examples for Basic2D to show how to work with it.

## How Basic2D works
In Basic2D, you have the Object and Main files. The Object file is where all the functions and classes of the simulator are. In the main file, you bring in those functions and simulate your environment. 

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
* [x] Editing variables and functions inside the main file.
* [x] Force and mass.
* [ ] Air and fluid resistance 
* [ ] Gravitational attraction.
* [ ] And whataver ideas you have :)

> To help support Basic2D, feel free to point out bugs and issues in the engine!!! 

## Credits
HUGE thanks to @Daniel Shiffman for inspiring me to make this physics engine/simulator!!!
