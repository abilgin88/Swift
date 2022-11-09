import UIKit

//:Creating the Pokemon Class:
class Pokemon {
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]

  init(num: Int, name:String, type: [String], ability: [String]) {
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }
    
    func displayInfo() {
        print("Num:     \(num)")
        print("Name:    \(name)")
        print("Type:    \(type)")
        print("Ability: \(ability)")
        print("-------------------")
    }
}

//:Create Three Pokemons:
var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])
var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire 🔥"], ability: ["Blaze"])
var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water 💧"], ability: ["Torrent"])
//: Display Information
bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()
//:Gigantamax Forms (and Inheritance)
class GigantamaxPokemon: Pokemon {
    var location = ""
    
    init(num: Int, name:String, type: [String], ability: [String], location: String) {
        self.location = location
        
        super.init(num: num, name: name, type: type, ability: ability)
        // we are using super keyword to access superclass init method
    }
    
    override func displayInfo() {
        print("Num:     \(num)")
        print("Name:    \(name)")
        print("Type:    \(type)")
        print("Ability: \(ability)")
        print("Location: \(location)")
        print("-------------------")
    }
    
}

var charizard = GigantamaxPokemon(num: 6, name: "charizard", type: ["Fire"], ability: ["Blaze"], location: "Lake")
charizard.displayInfo()

/*
 Add more properties to the Pokemon class
 Add more methods to the Pokemon class
 Add more Pokemons (instances)
 */
