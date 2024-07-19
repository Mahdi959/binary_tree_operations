#include "tree.h"

int main(){
    tree<int> TREE;
    TREE.add(20);
    TREE.add(10);
    TREE.add(40);
    TREE.add(80);
    TREE.add(15);
    TREE.add(5);
    TREE.add(1);
    TREE.add(4);
    TREE.add(12); 
    TREE.add(18);
    TREE.inOrder();
}