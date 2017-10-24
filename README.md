# Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

***
### Domain models
Below are some domain models representing

#### User story nouns
Person, bike, docking stations

#### User story verbs
Use (bike), release (bike), check (bike)

#### User story tables
| Object | Messages |
|---|---|
|Person| |
|Bike | working? |
|DockingStation | release_bike |

#### User story diagrams
Person -> check_bike -> Bike
Docking_Station -> release_bike -> Bike   

***
#### Errors are Good:
Error type:   
NameError: uninitialized constant DockingStation   
File path:    
/usr/share/rvm/rubies/ruby-2.4.1/bin/irb:11:in \`<main>'   
line number of error:    
1   
What does this error mean:   
This error occurs when the code refers to a class or module that it can't find.
Suggested solution:   
Define a class or module with the name DockingStation.
