
//Argent de Joe
var money :Double = 0.0
//Lait, blé, laine
var barn = ["milk":0,"wheat":0,"wool":0]


while true{
    
print("Que voulez vous faire ?"
    + "\n1. 🤸  Enregistrer une nouvelle activité"
    + "\n2. 🏦  Consulter ma banque"
    + "\n3. 🏠  Consulter ma grange")

if let choice = readLine() {
    switch choice {
        case "1":
            //___1___
        print("Qu'avez-vous fait aujourd'hui ?"
            + "\n1. J'ai nourri mes animaux."
            + "\n2. J'ai vendu mes produits."
            + "\n3. J'ai trait mes vaches."
            + "\n4. J'ai moissoné."
            + "\n5. J'ai tondu mes moutons.")
          if let actChoice = readLine(){
              switch actChoice{
              case "1":
                //vaches nourries
                money -= 4
                print("Super !")
              case "2":
                //vente des marchandises
                sell()
                print("Super !")
              case "3":
                //traite des vaches
                barn["milk"]! += 30
                print("Super !")
              case "4":
                //moisson
                barn["wheat"]! += 100
                print("Super !")
              case "5":
                //tonte des moutons
                barn["wool"]! += 30
                print("Super !")
                //default
              default:
              print("Je ne pige pas.")
              }
          }
        case "2":
            //___2___
        print("Vous avez \(money) euros à la banque.")
            
        case "3":
            //___3___
            
        print("Votre grange contient :"
            + "\n🍼  \(barn["milk"]!) bidons de lait"
            + "\n🌾  \(barn["wheat"]!) bottes de blé"
            + "\n⚪️  \(barn["wool"]!) pelottes de laine")
            
            
        default:
        print("Choisissez l'option 1, 2 ou 3.")
    }
}
}//balise fin boucle while

//FONCTIONS

//fonction vente des produits
func sell(){
    money += Double(barn["milk"]!) * 0.50 // Le lait
    money += Double(barn["wheat"]!) * 0.30 // Le blé
    money += Double(barn["wool"]!) * 1 // La laine
    
    // On vide la grange
    barn = ["milk":0,"wheat":0,"wool":0]
}


