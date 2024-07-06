template <typename BaseData>
void tree<BaseData>:: add(BaseData item){
    if(root==nullptr){
        root = new Node<BaseData>;
        root->Left = nullptr;
        root->Right = nullptr;
        root->Data = item;
    }
    Node<BaseData>* Temp = root;
    while(true){
        
        if (Temp->Left != nullptr && Temp->Data<item){
            Temp = Temp->Left;
         }
        else if(Temp->Left==nullptr){
            Temp->Left = new Node<BaseData>;
            Temp->Left->Data= item;
            break;
        } 
        if (Temp->Right != nullptr && Temp->Data>item){
            Temp = Temp->Left;
         }
        else if(Temp->Right==nullptr){
            Temp->Right = new Node<BaseData>;
            Temp->Right->Data= item;
            break;
        } 
    } 
    

    
}
// //accessing all data 
 template <typename BaseData>
 void tree<BaseData>::print(){
//    while(Temp){

        
//         //inOrder Traversal - left, root , right;
    if(!root){
        std::cout<<"empty tree";
    }
    else{
        // if root leftmost exist - print leftmost->data
    //        // print parent
    //       //go parent->right->leftmost
    //       //if right leftmost exist - print leftmost->data
    }






//         // if(Temp->Left){
//         //     std::cout<<Temp->Data;
//         //     Temp = Temp->Left;
//         // }
//         // else{
//         //     Temp = Temp->Right;
//         //     std::cout<<root->Right->Data;
//         // }
            
        
//   }
 }