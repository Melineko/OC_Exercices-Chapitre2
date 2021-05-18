import UIKit

var tallFamily = ["Mere":1.74,"Pere":1.80,"Fille":1.56,"Fils":1.41]
var totalTall = 0.0
for (member, tall) in tallFamily{
    print ("\(member) mesure \(tall) m.")
    totalTall += tall
}

print ("La famille empilée mesure \(totalTall) m.")
