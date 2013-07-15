class OrangeTree

  def initialize
    @height = 6 #in inches
    @orange_count = 0 
    @age = 0
    puts ("An orange tree is planted.")
  end

  def height
    @height
  end

  def age
    @age
  end

  def one_year_passes
    @age = @age+1
    case @age
      when 0..2 
        @orange_count = 0
      when 3..4 
        @orange_count = @orange_count+10
      when 5..6 
        @orange_count = @orange_count+15
      when 7..8
        @orange_count = @orange_count+20
      when 9..10
        @orange_count = @orange_count+10
      else
        @orange_count = @orange_count+7
    end
    @height = @height + 6
  end

  def count_the_oranges
    @orange_count
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count = @orange_count-1
      puts('Orange was most delicious!')
    else
      puts('Sorry, but there are no oranges on tree.')
    end
  end

end

orange_tree = OrangeTree.new

puts(orange_tree.height)
while orange_tree.age < 11
  orange_tree.one_year_passes
end
orange_tree.pick_an_orange
puts(orange_tree.height)
puts(orange_tree.age)
orange_tree.pick_an_orange
puts(orange_tree.count_the_oranges)