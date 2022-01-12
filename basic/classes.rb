class Customer
    @@no_of_customers = 0; # class variable

    # constructor id, name, addr are local variables
    def initialize(id, name, addr)  
        @cust_id = id; # instance variable
        @cust_name = name;
        @cust_addr = addr;
    end

    def hello
        puts "Hello " + @cust_name;
    end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya");
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala");

puts cust1;
puts cust2;

cust1.hello;
cust2.hello;