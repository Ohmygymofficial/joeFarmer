//DECLARATIONS DES CONSTANTES ET VARIABLES
// le prix du voyage
let price = 1499.0

// le nombre de jours pendant lesquels je dois economiser
var numberOfDay = 0

// Tableau avec lait, Ble, Farine
var barn = [0,0,0]

// L'argent de JOE (au premier jour)
var money = 0.0

//calcul de ce que JOE gagne et depense
while money < price {
    //joe nourrit les vaches tous les jours
    money -= 4
    
    //sur certains jours du mois, Joe vends differentes choses
    if numberOfDay % 30 == 1 {
        // Joe moissone
        money += 100 * 0.30
    } else if numberOfDay % 30 == 10 || numberOfDay % 30 == 20 {
        // Joe tond les moutons
        money += 30 * 1
    } else {
        // Joe vends son lait
        money += 30 * 0.50
    }
    // on passe au jour suivant
    numberOfDay += 1
        
}


print(money)

