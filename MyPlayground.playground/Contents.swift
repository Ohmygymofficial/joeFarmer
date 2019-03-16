//DECLARATIONS DES CONSTANTES ET VARIABLES
// le prix du voyage
let price = 1499.0

// le nombre de jours pendant lesquels je dois economiser
var numberOfDay = 0

// Tableau avec Lait, Ble, Laine
var barn = [0,0,0]


// L'argent total de JOE
var money = 0.0


//calcul de ce que JOE gagne et depense
while money < price {
    //joe nourrit les vaches tous les jours
    money -= 4
    
    // on stocke dans la grange et on vends ca sur le marché quand on arrive a 500 pièces
    
    var barnSize = 0
    for fluxStock in barn {
        barnSize += fluxStock
    }
    
    // Si on a plus de 500 pieces en stock, on vend tout
    if barnSize >= 500 {
        // on vend
        money += Double(barn[0]) * 0.50 // le lait
        money += Double(barn[1]) * 0.30 // le Ble
        money += Double(barn[2]) * 1 // Les moutons
        barn = [0,0,0]
    
        //SINON, on stocke dans la grange tous les jours
    } else {
        
        //sur certains jours du mois, Joe vends differentes choses
        if numberOfDay % 30 == 1 {
            // Joe moissone le blé et fais 100 pieces une fois par mois
            barn[1] += 100
            // d'apres le contexte, il trait aussi les vaches les jours de moissons
            barn[0] += 30
            
        } else if numberOfDay % 30 == 10 || numberOfDay % 30 == 20 {
            // Joe tond les moutons et fais 30 pieces 2 fois dans le mois
            barn[2] += 30
            // d'apres le contexte, il trait aussi les vaches les jours de moutons
            barn[0] += 30
            
        } else {
            // Joe vends traites les vaches les autres jours

            barn[0] += 30
        }
        
        
    }
    
  
    
    
    // on passe au jour suivant
    numberOfDay += 1
        
}

print("Il aura fallu \(numberOfDay) jours à Joe pour économiser \(money) Euro")





