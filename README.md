# Byebug debug Workshop

This workshop is intended to show the main features of byebug when debugging a ruby program.  
It can also be used within a rails application

## Getting Started

just install the dependencies by running `bundle install`

## Running the examples

The examples have been tested with ruby 2.6.2p47, though they will be probably compatible with any ruby v2+ version.

To run each example, just run `ruby examples/example_file.rb`

Each example has a `debugger` set in some place of the program. This is intended to explain each of the features
offered by byebug. It is up to the user to move the debugger to some other place to ease the debugging, but it is not
strictly necessary.


## Running the presentation

The presentation is run via reveal.js  
To initialise it and run the server run

```bash
cd presentation
npm install
npm start
```

the slides are available at http://localhost:8000
