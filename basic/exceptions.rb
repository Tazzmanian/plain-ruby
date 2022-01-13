begin
    file = open("file.txt")
    if file
       puts "File opened successfully"
    end
 rescue
       file = STDIN
 end
 print file, "==", STDIN, "\n"

 # retry
 fname = "/unexistant_file";
 begin
    file = open(fname)
    if file
       puts "File opened successfully"
    end
 rescue
    fname = "file.txt"
    retry
 end

# raise
begin  
    puts 'I am before the raise.'  
    raise 'An error has occurred.'  
    puts 'I am after the raise.'  
rescue  
    puts 'I am rescued.'  
end  
puts 'I am after the begin block.' 

begin  
    raise 'A test exception.'  
rescue Exception => e  
    puts e.message  
    puts e.backtrace.inspect  
end  

# ensure
begin
    raise 'A test exception.'
 rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
 ensure # finally
    puts "Ensuring execution"
 end

 # else
 begin
    # raise 'A test exception.'
    puts "I'm not raising exception"
 rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
 else
    puts "Congratulations-- no errors!"
 ensure
    puts "Ensuring execution"
 end

# catch and throw
def promptAndGet(prompt)
    print prompt
    res = readline.chomp
    throw :quitRequested if res == "!"
    return res
 end
 
 catch :quitRequested do
    name = promptAndGet("Name: ")
    age = promptAndGet("Age: ")
    sex = promptAndGet("Sex: ")
    # ..
    # process information
 end
 promptAndGet("Name:")

# class exception
class FileSaveError < StandardError
    attr_reader :reason
    def initialize(reason)
       @reason = reason
    end
end

File.open(path, "w") do |file|
begin
    # Write out the data ...
rescue
    # Something went wrong!
    raise FileSaveError.new($!)
end
end