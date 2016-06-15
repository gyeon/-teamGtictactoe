### Instructor Feedback

* This is a good start
* I see some opportunities to move your model classes behavior into service objects: move, update, player_move, etc. These actions should be moved into service objects. Printing the board could be left on the model, since it deals with displaying the state of itself

* Model classes should be named singularly (class User, not Users)
* I'd also suggest moving the logic from your environment file into a Runner class. This class should handle running of the game. You can load (require) all the different files into an environment.rb file. This lets all your classes talk to each other (because they know they exist).
