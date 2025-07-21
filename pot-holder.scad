cutout = 163.5;
wall = 4;
height = 10;
hole = 5;
$fn=124;

module hoop() {
difference() {
  cylinder(d = cutout + wall, h = height);
  translate([0,0,-1]) cylinder(d = cutout, h = height + 2);
}
}

module cut() {
    rotate([90,0,0]) translate([0,5,0]) cylinder(d = hole, h = 200);
}


difference() {  
  hoop();

  cut();
  rotate([0,0,120]) cut();
  rotate([0,0,240]) cut();
}

