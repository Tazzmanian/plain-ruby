# define a class
class Box
    attr_accessor :width, :height
    # Constants
    BOX_COMPANY = "TATA Inc"
    BOXWEIGHT = 10
    # Initialize our class variables - static
    @@count = 0
    # constructor method
    def initialize(w,h)
       @width, @height = w, h

       @@count += 1
    end
 
    # accessor methods
    def getWidth
       @width
    end
    def getHeight
       @height
    end

    # make them private
    # private :getWidth, :getHeight    

 
    # setter methods
    def setWidth=(value)
       @width = value
    end
    def setHeight=(value)
       @height = value
    end

    # instance method
    def getArea
        @width * @height
    end

    # make it protected
    protected :getArea

    # class method - static
    def self.printCount()
        puts "Box count is : #@@count"
    end

    # define to_s method
    def to_s
        "(w:#@width,h:#@height)"  # string formatting of the object.
    end

    def +(other)       # Define + to do vector addition
        Box.new(@width + other.width, @height + other.height)
     end
  
     def -@           # Define unary minus to negate width and height
        Box.new(-@width, -@height)
     end
  
     def *(scalar)           # To perform scalar multiplication
        Box.new(@width*scalar, @height*scalar)
     end
 end
 
 # create an object
 box = Box.new(10, 20)
 
 # use setter methods
 box.setWidth = 30
 box.setHeight = 50
 
 # use accessor methods
 x = box.getWidth()
 y = box.getHeight()
 
 puts "Width of the box is : #{x}"
 puts "Height of the box is : #{y}"
 # call instance methods
# a = box.getArea
# puts "Area of the box is : #{a}"
# call class method to print box count
Box.printCount()

# to_s method will be called in reference of string automatically.
puts "String representation of box is : #{box}"

# define a subclass
class BigBox < Box

    # change existing getArea method as follows
    def getArea
       @area = @width * @height
       puts "Big box area is : #@area"
    end
 end
 
 # create an object
 box = BigBox.new(10, 20)
 
 # print the area using overriden method.
 box.getArea()

# freeze
# box.freeze
if( box.frozen? )
   puts "Box object is frozen object"
else
   puts "Box object is normal object"
end
box.setWidth = 30
box.setHeight = 50
puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"

# create another object using allocate
box2 = BigBox.allocate
print box2.height, box2.width, "\n"
box2.height = 10;
box2.width = 10;
print box2.height, box2.width, "\n"

# call instance method using box2
a = box2.getArea()