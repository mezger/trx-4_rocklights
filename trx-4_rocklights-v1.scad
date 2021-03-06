module rocklight()
{
    difference()
    {
        union()
        {
            color("Green") translate([0.75, 0.75, 0]) cube([12, 9.5, 0.7]);
            translate([0, 0, 0.7]) cube([13.5, 11, 1.5]);
            difference()
            {
                color("red") hull()
                {
                    translate([0, 2.4, 0.7]) cube([13.5, 6.2, 1.8]);
                    translate([13.5+1.75, 5.5, 0.7]) cylinder(d=6, h=1.8);
                    translate([-1.75, 5.5, 0.7]) cylinder(d=6, h=1.8);
                }
                translate([13.5+1.75, 5.5, 0.7]) cylinder(d=2.6, h=1.8);
                translate([-1.75, 5.5, 0.7]) cylinder(d=2.6, h=1.8);
            }
            color("blue") translate([13.5/2, 11/2, 0]) cylinder(d=9, h=5);
        }
        //LED Loch
        translate([13.5/2, 11/2, 0]) cylinder(d=5, h=5);
        translate([13.5/2, 11/2, 4.2]) cylinder(d=5.5, h=0.8);
    }
}

$fn=50;
rocklight();