type MinStack struct {
	Stack []int
	Min   int
}

/** initialize your data structure here. */
func Constructor() MinStack {
	return MinStack{}
}

func (this *MinStack) Push(x int) {
	if len(this.Stack) == 0 {
		this.Stack = append(this.Stack, 0)
		this.Min = x
	} else {
		this.Stack = append(this.Stack, x-this.Min)
		if x < this.Min {
			this.Min = x
		}
	}
}

func (this *MinStack) Pop() {
	if len(this.Stack) == 0 {
		return
	} else {
		var x int
		x, this.Stack = this.Stack[len(this.Stack)-1], this.Stack[:len(this.Stack)-1]
		if x < 0 {
			this.Min -= x
		}
	}
}

func (this *MinStack) Top() int {
	x := this.Stack[len(this.Stack)-1]
	if x > 0 {
		return x + this.Min
	}
	return this.Min
}

func (this *MinStack) GetMin() int {
	return this.Min
}

/**
 * Your MinStack object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Push(x);
 * obj.Pop();
 * param_3 := obj.Top();
 * param_4 := obj.GetMin();
 */
