Airport Challenge
=================

Premise
---------
An airport control simulator written in ruby and test-driven by rspec unit testing.

Running tests
-------
1. Clone this repo
2. Run  the command `gem install bundle` in project directory
3. When the installation completes, run `bundle`
4. Run 'rspec'

Simulating on IRB 
-----
Run the command 'irb' in project directory and then the following:
1. > airport = Airport.new
 => #<Airport:0x007f8e2d209938 @planes=[], @capacity=1> 
2. > plane = Plane.new
 => #<Plane:0x007f8e2d1f1130 @flying=true> 
3. > airport.land(plane)
 *=> [#<Plane:0x007f8e2d1f1130 @flying=false>] 
 

 
