func addTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
	left := l1
	right := l2
	carriage := 0
	for left != nil || carriage != 0 || right != nil {
		sum := left.Val + right.Val + carriage
		if sum > 9 {
			carriage = sum / 10
			sum = sum % 10
		} else {
			carriage = 0
		}
		if (carriage > 0) || ((left.Next == nil || right.Next == nil) && left.Next != right.Next) {
			if left.Next == nil {
				left.Next = &ListNode{0, nil}
			}
			if right.Next == nil {
				right.Next = &ListNode{0, nil}
			}
		}
		left.Val = sum
		left = left.Next
		right = right.Next
	}
	return l1
}
