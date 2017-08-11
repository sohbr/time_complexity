class MyQueue

  def initialize
    @store = []
  end

  def enqueue(el)
    @store.unshift(el)
  end

  def dequeue
    @store.pop
  end

  def peek
    @store.last
  end

  def size
    @store.count
  end

  def empty?
    size == 0
  end
end

class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(el)
    @store.push(el)
  end

  def peek
    @store.last
  end

  def size
    @store.count
  end

  def empty?
    size == 0
  end
end

class StackQueue
  def initialize
    @stack1 = MyStack.new
    @stack2 = Mystack.new
  end

  def enqueue(el)
    @stack1.push(el)
  end

  def dequeue
    unless @stack2.empty?
      @stack2.pop
    else
      until @stack1.empty?
        @stack2.push(@stack1.pop)
      end
    end

  end

  def size
    @stack1.size + @stack2.size
  end

  def empty?
    @stack1.empty? && @stack2.empty?
  end

end
