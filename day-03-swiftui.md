# Day 03 - Lessons Learned

### [day-03]  

## **Concepts Covered:**
- Storing ordered data in arrays
- Storing and finding data in dictionaries
- Using sets for fast data lookup
- Creating and using enums

---

## **Arrays**
- Swift uses type safety to ensure code is valid — you can't mix an array of integers with an array of strings.
- Swift always needs to know what type of data it is storing.
- You can modify data or items within an array using methods like:
    - `.contains` – to check if an item exists.
    - `.sorted` – to sort elements.
    - `.reversed` – to reverse the order of elements.

### **Example:**
```swift
var names = ["Taylor", "Adele", "Beyonce"]
print(names.sorted()) // ["Adele", "Beyonce", "Taylor"]
```

---

## **Dictionaries**
- Dictionaries store data in key-value pairs.
- Keys must be unique.
- Values can be accessed using their keys.

### **Example:**
```swift
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee["name"] ?? "Unknown") // "Taylor Swift"
```

---

## **Sets**
- Similar to arrays, but they:
    - Don't allow duplicates.
    - Don’t store elements in a specific order.
- Use `.insert()` instead of `.append()` when adding items.
- Fast for checking membership due to optimized lookup.

### **Example:**
```swift
var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
print(actors) // No duplicates allowed
```

---

## **Enums**
- Define a group of related values.
- Ensure type safety and make code more readable.

### **Example:**
```swift
enum Direction {
    case north, south, east, west
}

let heading = Direction.north
print(heading) // "north"
```

---

## **Challenge:**
1. How do you determine the best data type for a specific use case?
2. Are there any advantages to certain types over others?

---

## **Solution:**
✅ Use **arrays** when:
- Order matters.
- You need to store duplicates.

✅ Use **sets** when:
- You need fast lookup.
- Order doesn’t matter.
- Duplicates aren’t allowed.

✅ Use **dictionaries** when:
- You need to store data in key-value pairs for quick access.

✅ Use **enums** when:
- You want to define a fixed set of related values.

---

