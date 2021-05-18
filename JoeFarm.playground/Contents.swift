import UIKit

//Prix du voyage aux Caraïbes
let price :Double = 1499

//Nombre de jours
var numbOfDay = 0

//Argent de Joe
var money :Double = 0.0

//Lait, blé, laine
var barn = ["milk":0,"wheat":0,"wool":0]


while money < price {
    
    //Nourrissage des vaches chaque jours
    money -= 4
    
    //Compte du stock de la grange
    func calculStock() -> Int{
    var sommeStock = 0
    for (_,marchandise) in barn{
        sommeStock += marchandise
    }
        return sommeStock
    }
    
    //fonction vente des produits
    func sell(){
        money += Double(barn["milk"]!) * 0.50 // Le lait
        money += Double(barn["wheat"]!) * 0.30 // Le blé
        money += Double(barn["wool"]!) * 1 // La laine
        
        // On vide la grange
        barn = ["milk":0,"wheat":0,"wool":0]
    }
    //Vente des stock à 500 marchandises
    if calculStock()>500{
        // On vends !
                sell()
    }else{
        //Journée normale
    if numbOfDay % 30 == 1 {
        //Moisson
        barn["wheat"]! += 100
    }else if numbOfDay % 30 == 10 || numbOfDay % 30 == 20 {
        //Tonte des moutons
        barn["wool"]! += 30
    }else{
        //Lait
        barn["milk"]! += 30
    }
    }
    
    //On passe au jour suivant
    numbOfDay+=1
}
print ("Il aura fallu \(numbOfDay) jours à Joe pour économiser \(money) €.")




/*EXO des weekends (modulo)
 var jours = 0
while jours < 30{
    if jours % 7 == 5 || jours % 7 == 6{
        print("C'est le weekend !")
    }else{
        print("Schnell !")
    }
    jours += 1
}*/



/* EXO moyenne classe
var notesDeLaClasse = [18, 4, 14, 15, 17, 15, 9, 20, 19, 11, 12, 14]
notesDeLaClasse.append(13)
//moyenne
var somme = 0
for note in notesDeLaClasse {
    somme += note
}
var moyenne = somme/notesDeLaClasse.count
 */
