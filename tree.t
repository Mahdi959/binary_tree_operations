template <typename BaseData>
void tree<BaseData>:: add(BaseData item){
    if(root==nullptr){
        root = new Node<BaseData>;
        root->Left = nullptr;
        root->Right = nullptr;
        root->Data = item;
        return;
    }
    Node<BaseData>* Temp = root;
    while(true){
        
        if (Temp->Left != nullptr && item<Temp->Data){
            Temp = Temp->Left;
         }
        else if(Temp->Left==nullptr && item<Temp->Data ){
            Temp->Left = new Node<BaseData>;
            Temp->Left->Data= item;
            break;
        } 
        else if (Temp->Right != nullptr && item>=Temp->Data){
            Temp = Temp->Right;
         }
        else{
            Temp->Right = new Node<BaseData>;
            Temp->Right->Data= item;
            break;
        } 
    } 
    

    
}

template <typename BaseData>
void tree<BaseData>:: inOrder(){
    inOrderHelp(root);
}
// template <typename BaseData>
// void tree<BaseData>:: inOrderHelp(Node<BaseData>* item){
    
//     if(item){
//         inOrderHelp(item->Left);
//         std::cout<<item->Data<<std::endl;
//         inOrderHelp(item->Right);
//     }
//     }
    
// //accessing all data 
template <typename BaseData>
void tree<BaseData>::print(){
 
    Node<BaseData>* Temp = root;
 while(Temp || !NodeParent.empty()){

        
//         //inOrder Traversal - left, root , right;
    
    if(!root){
        std::cout<<"empty tree";
    }
    else{
        do{
            while(Temp->Left){
            NodeParent.push(Temp);
            Temp = Temp->Left;
            }

            std::cout<<"Data is:"<<Temp->Data<<std::endl;

            
            if(!Temp->Left && !Temp->Right){
                NodeParent.pop();
                Temp = NodeParent.top();
            }
            if (Temp->Right)
            {
            NodeParent.push(Temp);
            Temp = Temp -> Right;
            }
            
            
        }
        while (!NodeParent.empty());
    }
 

  }
 }        
    //        // print parent
    //       //go parent->right->leftmost
    //       //if right leftmost exist - print leftmost->data
   // }






//         // if(Temp->Left){
//         //     std::cout<<Temp->Data;
//         //     Temp = Temp->Left;
//         // }
//         // else{
//         //     Temp = Temp->Right;
//         //     std::cout<<root->Right->Data;
//         // }
            
        
//   }
 //}