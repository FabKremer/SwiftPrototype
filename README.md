Swift Prototype
=======

This is the project to test Swift new languaje.
It will be the backend of a Sample Rails application that manage products.

## Setting up and running

### Backend

- git clone https://github.com/FabKremer/ArticlesPrototype.git
- cd ArticlesPrototype
- rake db:migrate && rake db:seed
- rails s

### Frontend

- Clone frontend: git clone https://github.com/FabKremer/SwiftPrototype.git
- cd SwiftPrototype
- (sudo) gem install cocoapods (if necessary)
- pod install
- open -a Xcode *.xcworkspace
