#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Professeur
#------------------------------------------------------------

CREATE TABLE Professeur(
        id_prof     Int NOT NULL ,
        nom_prof    Varchar (50) NOT NULL ,
        prenom_prof Varchar (50) NOT NULL ,
        login_prof  Varchar (50) NOT NULL ,
        mdp_prof    Varchar (50) NOT NULL
	,CONSTRAINT Professeur_PK PRIMARY KEY (id_prof)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Etudiant
#------------------------------------------------------------

CREATE TABLE Etudiant(
        id_etudiant             Int NOT NULL ,
        login_etudiant          Varchar (50) NOT NULL ,
        mdp_etudiant            Varchar (50) NOT NULL ,
        dateResultat_etudiant   Datetime NOT NULL ,
        niveauBonheur_etudiant  Int NOT NULL ,
        niveauAnxiete_etudiant  Int NOT NULL ,
        niveauColere_etudiant   Int NOT NULL ,
        niveauSocial_etudiant   Int NOT NULL ,
        centreInteret1_etudiant Int NOT NULL ,
        centreInteret2_etudiant Int NOT NULL ,
        centreInteret3_etudiant Int NOT NULL ,
        id_prof                 Int NOT NULL
	,CONSTRAINT Etudiant_PK PRIMARY KEY (id_etudiant)

	,CONSTRAINT Etudiant_Professeur_FK FOREIGN KEY (id_prof) REFERENCES Professeur(id_prof)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Centres dinteret
#------------------------------------------------------------

CREATE TABLE Centres_d_interet(
        id_centre_interet          Int NOT NULL ,
        titre_centre_interet       Varchar (50) NOT NULL ,
        description_centre_interet Varchar (250) NOT NULL
	,CONSTRAINT Centres_d_interet_PK PRIMARY KEY (id_centre_interet)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Possede
#------------------------------------------------------------

CREATE TABLE Possede(
        id_centre_interet Int NOT NULL ,
        id_etudiant       Int NOT NULL
	,CONSTRAINT Possede_PK PRIMARY KEY (id_centre_interet,id_etudiant)

	,CONSTRAINT Possede_Centres_d_interet_FK FOREIGN KEY (id_centre_interet) REFERENCES Centres_d_interet(id_centre_interet)
	,CONSTRAINT Possede_Etudiant0_FK FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id_etudiant)
)ENGINE=InnoDB;

