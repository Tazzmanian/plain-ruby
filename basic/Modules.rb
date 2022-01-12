$LOAD_PATH << '.' # needed to import the with relative paths

require 'trig.rb'
require 'moral' # .rb is not mandatory
require "support"

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)

print y;

class Decade
include Week # Why is that needed ???
    no_of_yrs = 10
    def no_of_months
        puts Week::FIRST_DAY
        number = 10*12
        puts number
    end
end
d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months

# Mixins - multiple inheritance equivalent
module A
    def a1
    end
    def a2
    end
 end
 module B
    def b1
    end
    def b2
    end
 end
 
 class Sample
 include A
 include B
    def s1
    end
 end
 
 samp = Sample.new
 samp.a1
 samp.a2
 samp.b1
 samp.b2
 samp.s1

 