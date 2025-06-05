
epaisseur = 3;
font_size = 6;
nom = "prénom nom";
duree = "2024-2027";


//Plaque avec le nom
rotate([0,270,0])
    linear_extrude(height=110, center=true)
        polygon(points=[[0,0],[30,0],[0,30]]);

//Support arrière
translate([-20,0,-epaisseur])
    cube([40,150,epaisseur], center=false);
    
translate([0,150,-epaisseur])
linear_extrude(height=epaisseur, center=false)
    circle(20);

//plage de fond 
translate([0,15,-epaisseur/2])
    cube([110,30,epaisseur], center=true);

//Texte
color("blue")
rotate([315,0,0])
    translate([0,11,15])
        linear_extrude(height=8, center=false)
            text("CIRISI Solenzara", size=font_size, font="Arial", valign="center", halign="center");
            
color("blue")           
rotate([315,0,0])
    translate([0,0,15])
        linear_extrude(height=8, center=false)
            text(nom, size=font_size, font="Arial", valign="center", halign="center");

color("blue")        
rotate([315,0,0])
    translate([0,-10,15])
        linear_extrude(height=8, center=false)
            text(duree, size=font_size, font="Arial", valign="center", halign="center");