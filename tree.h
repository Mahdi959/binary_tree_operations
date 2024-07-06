#include <iostream>
#include <stack>
template <typename BaseData>
struct Node{
        Node* Right;
        Node* Left;
        BaseData Data;
};

template <typename BaseData>
class tree{
    public:
        void add(BaseData item);
        void print();

    private:
        Node<BaseData>* root = nullptr;
        std::stack<BaseData> NodeParent;

};
#include "tree.t"