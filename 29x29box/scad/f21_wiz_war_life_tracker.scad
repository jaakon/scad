/*

  f21_wiz_war_life_tracker.scad

  (c) olikraus@gmail.com

  This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. 
  To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

   
  Storage Box Organizer System for 29x29 Game Boxes
  (wiz war, imperial settlers and others)
  
  - The 29x29 cm area is divided into a 9 cols x 3 rows grid
  - Cell size is 31mm (width) x 94mm (height)
  - Game card height usually fits into 94mm 
  - Game cards often fit into a double cell (62mm x 94mm)
  - Each storage box is a multiple of the cell size
  - There two storage box sizes: Full (56mm) and Half (28mm)
  - Each storage box filename convention:
    1. "f" or "h": Height of the storage box (f=56mm, h=28mm)
    2. Cell width factor
    3. Cell height factor
    4. Underscore
    5. Extra words to describe the box  
    
*/
include <29x29box.scad>;

floor=3;
intersection()
{
    cube([2*xt, yt, 2*zt], center=true);
    difference() {
        union() {
            box(2,1,2);
            cylinder(d=63+2*wall, h=zt*2, center=true, $fn=128);
        }
        translate([0,0,floor+0.5])
        cylinder(d=63, h=zt*2+1, center=true, $fn=128);
    }
}

