/*
    ship with train holder
    
    print with brim (and remove all the brim!)
    
*/
include <train_tube_track.scad>;


for( j=[0:2] ) {
    translate([0, ship_length*1.5*j, 0])
    union() {
        ttt_ship_body_m_4();
        translate([0,ship_length/5,ship_height/2-d])
        translate([-0.75,0,0])
        cube([1.5,4,10]);
    }
}


for( j=[0:2] ) {
    translate([ship_width*2, ship_length*1.5*j, 0])
    union() {
        ttt_ship_body_m_4();
        translate([0,ship_length/3,ship_height/2-d])
        union() {
            cylinder(h=10, d=1.7);
            cylinder(r1=1.8, r2=0, h=1.5);
        }
    }
}

for( j=[0:2] ) {
    translate([ship_width*4, ship_length*1.5*j, 0])
    union() {
        ttt_ship_body_m_4();
        translate([0,ship_length/3-3,ship_height/2-d])
        union() {
            cylinder(h=10, d=1.7);
            cylinder(r1=1.8, r2=0, h=1.5);
        }
        translate([0,ship_length/3+2,ship_height/2-d])
        union() {
            cylinder(h=10, d=1.7);
            cylinder(r1=1.8, r2=0, h=1.5);
        }
    }
}
