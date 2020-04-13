/*
  Insert a Node at the Tail of a Linked List
  https://www.hackerrank.com/contests/nivelaciones/challenges/insert-a-node-at-the-tail-of-a-linked-list

  Luis Edymerchk Laverde
*/

/*
  Insert Node at the end of a linked list
  head pointer input could be NULL as well for empty list
  Node is defined as
  struct Node
  {
     int data;
     struct Node *next;
  }
*/

Node* Insert(Node *head, int data){
  Node *node = new Node;
  node -> data = data;

  if (head == NULL){
    return node;
  }

  Node *tail = head;

  while(tail->next != NULL){
    tail = tail->next;
  }
  tail->next = node;

  return head;
}
