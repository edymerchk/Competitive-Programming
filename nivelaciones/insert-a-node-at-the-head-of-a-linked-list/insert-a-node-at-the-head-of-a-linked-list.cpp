/*
  Insert a node at the head of a linked list
  https://www.hackerrank.com/contests/nivelaciones/challenges/insert-a-node-at-the-head-of-a-linked-list

  Luis Edymerchk Laverde
*/

/*
  Insert Node at the begining of a linked list
  Initially head pointer argument could be NULL for empty list
  Node is defined as
  struct Node
  {
     int data;
     struct Node *next;
  }
return back the pointer to the head of the linked list in the below method.
*/
Node* Insert(Node *head,int data){

  Node *node = new Node;
  node -> data = data

  if (head == NULL){
    node;
  }

  node-> next = head;
  head = node;

  return head;

}
