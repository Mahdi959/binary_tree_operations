#include <iostream>
#include <stack>
template <typename BaseData>
struct Node{
        Node* Right;
        Node* Left;
        BaseData Data;
        bool visited = false;
};

template <typename BaseData>
class tree{
    public:
        void add(BaseData item);
       // void print();
        void inOrder();
        void inOrderHelp(Node<BaseData>* item);
        void searchAndRemove(BaseData r_target);
        void remove(Node<BaseData>* r_target);
    private:
        Node<BaseData>* root = nullptr;
        std::stack<Node<BaseData>*> NodeParent;

};
#include "tree.t"