import UIKit

let albums: [String] = [
    "Blonde – Frank Ocean",
    "Rumors – Fleetwood Mac",
    "The Less I Know the Better – Tame Impala",
    "Abbey Road – The Beatles",
    "To Pimp a Butterfly – Kendrick Lamar",
    "Blonde – Frank Ocean" // Duplicate for testing unique count
]

// Total number of items
print("Total number of items: \(albums.count)")

// Number of unique items using a Set
let uniqueAlbums = Set(albums)
print("Number of unique items: \(uniqueAlbums.count)")


