
var mesAmis = ["pierre", "paul", "Jacques"]

for unAmi in mesAmis {
    print("Salut \(unAmi) !")
}

//Creation d'un tableau avec les notes de la classe
var noteDeLaClasse = [18,4,14,15,17,9,20,19,11,12,14]

// ajout de la note d'un eleve rendu en retard
noteDeLaClasse.append(4)

// CALCUL DE LA MOYENNE
// variable pour la somme des notes
var sommeDesNotes  = 0


for counter in noteDeLaClasse {
    sommeDesNotes = sommeDesNotes + counter
}

// calcul final
var moyenneDesNotes = sommeDesNotes / noteDeLaClasse.count
print("La moyenne de la classe est de \(moyenneDesNotes) !")

