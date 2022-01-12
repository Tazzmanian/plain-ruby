#!/usr/bin/ruby -w

def hello
    out = "Hello" + 
    "World";
    puts out;
    puts out
end

def sum
    a = 10;
    b = 20;
    puts a \
        + b;
    puts a + b;
    puts a +b; # -w option gives warning
end

hello;
sum;