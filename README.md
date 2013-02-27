Point in Polygon test
===============

Point in Polygon test for NME (and Haxe).
It uses nme.geom.Point for a structure with a .x and .y property, so switch to whatever you use (Dynamic, etc) to have "haxe only" code. This was ported really quickly, but seeing as I can't find something for haxe or nme I will share the code here until I merge it with the hxcollision repo.

Original algorithm : 
[link](http://erich.realtimerendering.com/ptinpoly/)

Algorithm ported from C : [link](http://stackoverflow.com/a/2922778)

Args :   
 
- pt - The point to test against
- pos - The offset/position/translation of the polygon
- verts - The local(relative) vertices of the polygon 

Returns : 

True if inside, False if not