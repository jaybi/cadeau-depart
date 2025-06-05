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
            
// Paramètres du cadre
cadre_largeur = 100; // Largeur du cadre
cadre_hauteur = 35; // Hauteur du cadre
cadre_epaisseur = 4; // Epaisseur du cadre en relief
cadre_epaisseur_trait = 2; // Epaisseur du trait du cadre

// Position du cadre, à adapter pour qu'il entoure le texte
cadre_pos_x = 0; // centré comme le texte
cadre_pos_y = 0; // centré comme le texte
cadre_pos_z = 20; // même profondeur que le texte, ou ajuster si besoin

// Ajout du cadre

difference() {
color("gold")
rotate([315,0,0])
    translate([cadre_pos_x, cadre_pos_y, cadre_pos_z])
        difference() {
            linear_extrude(height = cadre_epaisseur, center = false)
                offset(r = cadre_epaisseur_trait)
                    square([cadre_largeur, cadre_hauteur], center=true);
            linear_extrude(height = cadre_epaisseur+0.1, center = false)
                square([cadre_largeur-2*cadre_epaisseur_trait, cadre_hauteur-2*cadre_epaisseur_trait], center=true);
        }


// Ajout du cadre
color("gold")
rotate([315,0,0])
    translate([cadre_pos_x, cadre_pos_y, cadre_pos_z+2.9])
        difference() {
            linear_extrude(height = cadre_epaisseur, center = false)
                offset(r = cadre_epaisseur_trait)
                    square([cadre_largeur+5, cadre_hauteur+5], center=true);
            linear_extrude(height = cadre_epaisseur+0.1, center = false)
                square([(cadre_largeur+5)-2*cadre_epaisseur_trait, (cadre_hauteur+5)-2*cadre_epaisseur_trait], center=true);
        }
    }