require './p116.rb'

puts '------------------------------------'
puts 'ここからはモジュールに関しての例文'
puts '------------------------------------'

# モジュールの定義
module Bar
  def methodA
    @a
  end
end

p Bar.ancestors
p Bar.instance_methods
# p Bar.new

puts '-------------------------------------'

# includeメソッド
class FooExt < Foo
  include Bar
end

fooExt = FooExt.new(3,4)
p fooExt.methodA

p FooExt.ancestors
p FooExt.superclass
p FooExt.instance_methods(false ｘ)
