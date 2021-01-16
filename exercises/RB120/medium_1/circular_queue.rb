=begin
A circular queue is a collection of objects stored in a buffer that is treated as though it is connected end-to-end in a circle.

When an object is added to this circular queue, it is added to the position that immediately follows the most recently added object,

while removing an object always removes the object that has been in the queue the longest.

This works as long as there are empty spots in the buffer. If the buffer becomes full, adding a new object to the queue requires getting rid of an existing object; with a circular queue, the object that has been in the queue the longest is discarded and replaced by the new object.

Assuming we have a circular queue with room for 3 objects, the circular queue looks and acts like this:
[table]

Your task is to write a CircularQueue class that implements a circular queue for arbitrary objects. The class should obtain the buffer size with an argument provided to CircularQueue::new, and should provide the following methods:

    enqueue to add an object to the queue
    dequeue to remove (and return) the oldest object in the queue. It should return nil if the queue is empty.

You may assume that none of the values stored in the queue are nil (however, nil may be used to designate empty spots in the buffer).
=end

=begin


req
- enqueue
  - added after the most recent
- dequeue
  - remove oldest (first)
- enqueue over max size
  - remove oldest
  - replace in position
- dequeue an empty buffer
  - return nil

- assume not nil objects
- can use nil for empty buffer positions

Data Structure
- Integer
store index that references oldest element in buffer

- Array
[nil, nil, nil]
1, 2, 3
4, 2, 3

Algorithms

enqueue
 - oldest = (oldest + 1) % buffer.size if all not nil
   add to buffer (reassign index) at next index
   next = (next + 1) % buffer.size
   
     
dequeue
-   store oldest
    reassign oldest position to nil  
    oldest = (oldest + 1) % buffer.size if store not nil
    return oldest position
[nil, nil, nil]
1, 2, 3
  
 
dequeue


=end

class CircularQueue
  def initialize(size)
    @buffer    = Array.new(size, nil)
    @oldest    = 0
    @available = 0
  end
  
  def dequeue
    store = @buffer[@oldest]
    @buffer[@oldest] = nil
    @oldest = move_to_next(@oldest) if !store.nil?
    store
  end
  
  def enqueue(obj)
    @oldest = move_to_next(@oldest) if !@buffer[@available].nil?
    @buffer[@available] = obj
    @available = move_to_next(@available)
    nil
  end  
  
  private
  
  def move_to_next(pos)
    (pos + 1) % @buffer.size
  end
  
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1
# 2

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2
# 3 4

queue.enqueue(5)
queue.enqueue(6)
# 3 4 5 6
queue.enqueue(7)
# 4 5 6 7
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil