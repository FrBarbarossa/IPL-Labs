class Point
    attr_reader :x, :y

    def print()
        puts "X: #{@x}", "Y: #{@y}"
    end

    def initialize(axis_x, axis_y)
        @x = axis_x
        @y = axis_y
    end
end

class Circle < Point
    attr_reader :radius
    
    def print()
        puts "Координаты центра:"
        super()
        puts "Радиус: #{@radius}"
    end

    def initialize(x_center, y_center, rad)
        super(x_center, y_center)
        @radius = rad
    end

end

a = Point.new(1, 2)
p a.y
a.print()

circle = Circle.new(10, 20, 30)
p circle.x
p circle.radius
circle.print

#Для тестирования
p circle.kind_of? Point # экзмепляр Circle являнтся потомком Point true
p a.kind_of? Circle # Аналогично false
p circle.is_a? Point # экзмепляр Circle являнтся потомком Point true
p circle.instance_of? Point #Строгое соответствие false