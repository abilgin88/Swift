import UIKit

var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]

nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup["Ray"]  =  nil
