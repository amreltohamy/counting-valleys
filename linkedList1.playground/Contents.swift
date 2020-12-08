
class Node {
    let value:Int
    var next:Node?
    init(value:Int , next:Node?) {
        self.value = value
        self.next = next
    }
}
class linkedList {
    var head : Node?
    
    func insert(value:Int){
        if head == nil {
            //empty
            head = Node(value: value, next: nil)
            return
        }
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = Node(value: value, next: nil)
    }
    
    func delete(value:Int){
        if head?.value == value {
            head = head?.next
        }
       
        var prev : Node?
        var current = head
        while current != nil && current?.value != value {
            prev = current
            current = current?.next
        }
        prev?.next = current?.next
        
    }
             
    func displayListItems(){
         var current = head
        print("your list")
        while current != nil {
            print("\(current?.value ?? 0) , ")
            current = current?.next
        }
      
    }
    func insertInOrder(value:Int){
        if head == nil || head?.value ?? Int.min >= value {
            let newNode = Node(value: value, next: head)
            head = newNode
            return
        }
        var currentNode : Node? = head
        while currentNode?.next != nil && currentNode?.next?.value ?? Int.min < value {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(value: value, next: currentNode?.next)
    }
    
    func setupDummy(){
        let three = Node(value: 3, next: nil)
        let two = Node(value: 2, next: three)
        head = Node(value: 1, next: two)
    }
    
}

let sampleList = linkedList()

sampleList.insert(value: 1)
sampleList.insert(value: 2)
sampleList.insert(value: 5)
sampleList.insertInOrder(value: 4)


sampleList.displayListItems()
