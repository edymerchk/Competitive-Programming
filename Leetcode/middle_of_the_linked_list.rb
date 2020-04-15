# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3290/


# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  pfast = head
  pslow = head

  while(pfast!= nil && pfast.next != nil)
    pfast = pfast.next.next
    pslow = pslow.next
  end
  pslow
end
