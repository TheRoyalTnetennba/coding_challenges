def has_cycle(head):
    values = {}
    while True:
        if head.data in values:
            return True
        values[head.data] = "spaghetti"
        if head.next:
            head = head.next
        else:
            return False
