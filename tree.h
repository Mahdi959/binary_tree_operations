#include <iostream>
#include <stack>
template <typename BaseData>
struct Node{
        Node* Right= nullptr;
        Node* Left =nullptr;
        BaseData Data = NULL;
        
};

template <typename BaseData>
class tree{
    public:
        void add(BaseData item);
       // void print();
        void inOrder();
        void inOrderHelp(Node<BaseData>* item);
        void searchAndRemove(BaseData r_target);
        void remove(Node<BaseData>*& r_target);
    private:
        Node<BaseData>* root = nullptr;

};
#include "tree.t"