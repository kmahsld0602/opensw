#### 시스템 구성 및 관계도

```mermaid
classDiagram
    class Node {
      +int id
      +string course
      +string name
      +int semester
      +string phone
      +string timestamp
      +bool color
      +int depth
      +Node* left
      +Node* right
      +Node* parent
    }
    class RedBlackTree {
      +Node* root
      +Node* NIL
      +unordered_map<string, vector<Node*>> subjectList
      +unordered_map<int, set<Node*, cmp>> sidList
      +insert(), remove(), search(), rotateLeft(), rotateRight()
    }
    Node <|-- RedBlackTree : contains
    RedBlackTree o-- Node : root, NIL
    RedBlackTree "1" *-- "M" Node : subjectList
    RedBlackTree "1" *-- "M" Node : sidList
