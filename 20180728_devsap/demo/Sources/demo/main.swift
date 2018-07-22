import Foundation
import StencilSwiftKit
import SourceKittenFramework

// MARK: SourceKittenFramework

let file = File(path: "/Users/ihara/Code/Presentation/20180728_devsap/demo/Sources/demo/Source.swift")!
let dic = try! Structure(file: file).dictionary
dump(dic)

// MARK: StencilSwiftKit

let generated = try! StencilSwiftTemplate(
    templateString: """
    {% for struct in structs %}
    extension {{ struct.name }} {
        func bark() {
            print("{{ struct.name }}")
        }
    }
    {% endfor %}
    """)
    .render([
        "structs": [
            Animal(name: "Dog"),
            Animal(name: "Cat")
        ]
    ])
//print(generated)
