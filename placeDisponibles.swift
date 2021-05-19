// FONCTION indiquant s'il reste des places dans un bus
func canWeSit (sitPlaces : Int, passengers : Int){
    if passengers < sitPlaces{
        print("Il y a encore de la place.")
    }else if sitPlaces == passengers{
        print("Il n'y a plus de place...")
    }else{
        print("Il y a des gens debout !")
    }
}

canWeSit(sitPlaces : 28, passengers : 12)
