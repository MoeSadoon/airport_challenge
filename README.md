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

```
$ irb
2.2.3 :001 > plane = Plane.new
 => #<Plane:0x007f899a90c290 @flying=true>
2.2.3 :002 > airport = Airport.new
 => #<Airport:0x007f899a251478 @planes=[], @capacity=1>
2.2.3 :003 > plane.land
 => false
2.2.3 :004 > airport.land_plane(plane)
 => [#<Plane:0x007f899a90c290 @flying=false>]
2.2.3 :005 >

```
