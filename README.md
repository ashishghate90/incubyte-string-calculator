## incubyte-string-calculator-TDD

This repository contains an implementation of the String Calculator using Ruby and RSpec, following the Test-Driven Development (TDD) approach.

### Problem Statement
Build a simple string calculator that supports the following:

- Returns 0 for an empty string

- Returns the number itself for a single input (e.g., "1" → 1)

- Returns the sum of comma-separated numbers (e.g., "1,5" → 6)

- Handles any number of inputs

- Supports newline (\n) as a delimiter (e.g., "1\n2,3" → 6)

- Supports custom delimiters using the format: "//[delimiter]\n[numbers]"
Example: "//;\n1;2" → 3

- Throws an exception when negative numbers are included
Example: "1,-2,-4" → negative numbers not allowed -2,-4

### TDD Approach
This is solved using the following TDD workflow:

- Followed test first approach.
- Write the simplest test cases to cover scenarios.
- Write the minimum code to make the test pass.

### Structure
- app/services/string_calculator.rb : Core logic of the calculator
- spec/services/string_calculator_spec.rb : RSpec test suite

### Technologies
- Ruby-3.2.2
- RSpec (Test Suite)

### Getting Started
- Install ruby-3.2.2(If not available on your system)

- Clone the repository
git clone https://github.com/ashishghate90/incubyte-string-calculator.git

- Go inside the repository
cd string-calculator-tdd

- Perform bundle install, to install dependencies.
bundle install

- run all specs
rspec spec/
