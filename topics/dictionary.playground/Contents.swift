import UIKit

var dic1 = [Int: String]()
var dic2 = [3.14: "Pi", 2.71: "e"]
var dic3: [Int: String] = [1: "One", 2: "Two", 3: "Three"]
//:Veri ekleme
var iller = [Int: String]()
iller[16] = "Bursa"
iller[34] = "Istanbul"
iller[6] = "Ankara"
print(iller)
//:veri guncelleme
iller[35] = "Izmir"
iller[10] = "Balikesir"
iller[16] = "Yeni Bursa"
iller.updateValue("Yeni Izmir", forKey: 35)
print(iller)
//:Veri Okuma
print(iller[34]!)
//: Dongu iliskisi - Veri Cekme
for (anahtar, deger)  in iller {
    print("Anahtar: \(anahtar) - il: \(deger)")
}
//:Veri Silme
iller.removeValue(forKey: 6)
//: Dictonary Islemleri
iller.isEmpty
iller.count
iller.first
print(iller)
print(iller.reversed())
//: iki diziden dictionary olusturma
var dersler = ["Kimya", "Matematik", "Edebiyat"]
var notlar = [50, 80, 70]
var dersNotlari = Dictionary(uniqueKeysWithValues:  zip(dersler, notlar))
print(dersNotlari)
//: Dictionary diziye cevirme
var urunFiyatlari: [Double: String] = [15.99: "Kitap", 59.99: "T-Shirt", 299.99: "Saat"]
var fiyatlar = [Double](urunFiyatlari.keys)
var urunler = [String](urunFiyatlari.values)
//: Filtreleme
var okul: [Int: String] = [154: "Ahmet", 67: "Mehmet", 871: "Zeynep", 45: "Ahmet"]
var sonucDic1 = okul.filter({ $0.key > 70})
print(sonucDic1)
var sonucDic2 = okul.filter({ $0.value == "Ahmet"})
print(sonucDic2)
var sonucDic3 = okul.filter({$0.value == "Ahmet" && $0.key > 70 })
print(sonucDic3)
//: Nesne Tabanli Dictionary
class ogrenci {
    var no: Int?
    var ad: String?
    var sinif: String?
    
    init(no: Int, ad: String, sinif: String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = ogrenci(no: 100, ad: "Ahmet", sinif: "11F")
var o2 = ogrenci(no: 90, ad: "Zeynep", sinif: "10R")
var o3 = ogrenci(no: 130, ad: "Ceyda", sinif: "12A")
var o4 = ogrenci(no: 150, ad: "Mehmet", sinif: "9Z")
var o5 = ogrenci(no: 110, ad: "Yasin", sinif: "11F")


var ogrenciListesi = [Int : ogrenci]()
ogrenciListesi[o1.no!] = o1
ogrenciListesi[o2.no!] = o2
ogrenciListesi[o3.no!] = o3
ogrenciListesi[o4.no!] = o4
ogrenciListesi[o5.no!] = o5

print(ogrenciListesi.keys)
print(ogrenciListesi.values.first?.ad)

for (ogrenciNo, nesne) in ogrenciListesi {
    print("\n*************")
    print("Ogrenci No:       \(ogrenciNo)")
    print("Ogrenci Adi:      \(nesne.ad!)")
    print("Ogrencu Sinif     \(nesne.sinif!)")
}
//: Creating dictionaries
var namesAndScores = ["Anna": 2, "Brian": 2, "Craig" : 8]
namesAndScores = [:]
var pairs: [String: Int] = [:]
pairs.reserveCapacity(20)
//: Accessing values
//: Using subscripting
namesAndScores = ["Anna": 2, "Brian": 2, "Craig" : 8, "Donna": 6]
namesAndScores["Donna"]
namesAndScores["Greg"]
//: Using properties and methods
namesAndScores.isEmpty
namesAndScores.count
//:Modifying dictionaries
//:Adding pairs
var bobData = [
    "name" : "Bob",
    "profession": "Card Player",
    "country" : "USA"
]
bobData.updateValue("CA", forKey: "state")
bobData["city"] = "San Francisco"
//:Mini-exercise
/* Write a function that prints a given player’s city and state.*/
func playersInfo(player: [String:String]) -> String {
    return "\(player["city"]!) \(player["state"]!)"
}
playersInfo(player: bobData)
//:
func printLocation(ofPlayer player: [String: String]) {
    if let state = player["state"], let city = player["city"] {
        print("Player lives in \(city), \(state)")
    }
}
printLocation(ofPlayer: bobData)
//: Updating values
bobData.updateValue("Bobby", forKey: "name")
bobData["profession"] = "Mailman"
//:Removing pairs
bobData.removeValue(forKey: "state")
bobData["city"] = nil
//:Iterating through dictionaries
for (player, score) in namesAndScores {
    print("\(player) - \(score)")
}
//:
for player in namesAndScores.keys {
    print("\(player),", terminator: "")
}
print("")
