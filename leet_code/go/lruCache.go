import (
	"container/list"
)

type LRUCache struct {
	capacity int
	list     *list.List
	items    map[int]*list.Element
}

func Constructor(capacity int) LRUCache {
	items := make(map[int]*list.Element)
	list := *list.New()
	return *LRUCache{capacity: capacity, items: items, list: list}
}

func (this *LRUCache) Get(key int) int {
	if el, ok := this.items[key]; ok {
		promote(el)
		return el.Value
	} else {
		return -1
	}
}

// Here up is done
func (this *LRUCache) Put(key int, value int) {

}

func (c *LRUCache) promote(item *LRUCacheItem) {
	c.list.MoveToFront(item.listElement)
}

func (c *LRUCache) Set(cacheable Cacheable) bool {
	if c.capacity < cacheable.Size() {
		c.prune()
	}
	if c.capacity < cacheable.Size() {
		return false
	}
	item, exists := c.items[cacheable.Key()]
	if exists {
		item.cacheable = cacheable
		c.promote(item)
	} else {
		item = &LRUCacheItem{cacheable: cacheable}
		item.listElement = c.list.PushFront(item)
		c.items[cacheable.Key()] = item
		c.capacity -= cacheable.Size()
	}
	return true
}

func (c *LRUCache) prune() {
	for i := 0; i < 50; i++ {
		tail := c.list.Back()
		if tail == nil {
			return
		}
		item := c.list.Remove(tail).(*LRUCacheItem)
		delete(c.items, item.cacheable.Key())
		c.capacity += item.cacheable.Size()
	}
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * obj := Constructor(capacity);
 * param_1 := obj.Get(key);
 * obj.Put(key,value);
 */
