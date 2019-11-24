class Meeting
  attr_reader :start, :finish
  
  def initialize(start, finish)
    @start = start
    @finish = finish
  end  
end

def schedule(input)
  total_overlaps = 0
  
  input.sort_by! do |meeting|
    meeting.start
  end
  
  if input.length == 1
    return 1
  else
    i = 0
    
    while i < input.length - 1
      j = i + 1
      while j < input.length
        if input[i].finish > input[j].start
          total_overlaps += 1
        end
        j += 1
      end
      i += 1
    end
  end
  
  if total_overlaps == 0
    return 1
  end
  
  return total_overlaps
end

input = [
  Meeting.new(start=10, finish=17),
  Meeting.new(start=23, finish=30),
  Meeting.new(start=15, finish=25),
]

p schedule(input) # 2


input2 = [
  Meeting.new(start=8, finish=10),
  Meeting.new(start=1, finish=5)
]

p schedule(input2) # 1

input3 = [
  Meeting.new(start=8, finish=10),
  Meeting.new(start=1, finish=5),
  Meeting.new(start=4, finish=9)
]

p schedule(input3) # 2
