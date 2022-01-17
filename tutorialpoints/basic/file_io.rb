# puts
val1 = "This is variable one"
val2 = "This is variable two"
puts val1
puts val2

# gets
puts "Enter a value :"
val = gets
puts val

# putc
str = "Hello Ruby!"
putc str

# print
print "Hello World"
print "Good Morning"

# sys read
aFile = File.new("file.txt", "r")
if aFile
   content = aFile.sysread(20)
   puts content
else
   puts "Unable to open file!"
end

# sys write - override
aFile = File.new("file.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

# each_byte
aFile = File.new("file.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
   aFile.each_byte {|ch| putc ch; putc ?. }
else
   puts "Unable to open file!"
end

# readline
arr = IO.readlines("file.txt")
puts arr[0]
puts arr[1]

# foreach
IO.foreach("file.txt"){|block| puts block}

# rename
File.rename( "file.txt", "file.txt" )

# delete
File.delete("test2.txt")

# change mode
file = File.new( "file.txt", "w" )
file.chmod( 0755 )

# check if file exists
File.open("file.rb") if File::exists?( "file.rb" )

# if it is a file
File.file?( "text.txt" ) 

# is directory
# a directory
File::directory?( "/usr/local/bin" ) # => true

# a file
File::directory?( "file.rb" ) # => false

# read write execute
File.readable?( "test.txt" )   # => true
File.writable?( "test.txt" )   # => true
File.executable?( "test.txt" ) # => false

# empty file
File.zero?( "test.txt" )      # => true

# file size
File.size?( "text.txt" )

# get file type
File::ftype( "test.txt" )

# created, modified, accessed
File::ctime( "test.txt" ) # => Fri May 09 10:06:37 -0700 2008
File::mtime( "text.txt" ) # => Fri May 09 10:44:44 -0700 2008
File::atime( "text.txt" ) # => Fri May 09 10:45:01 -0700 2008

# navigate through directories
Dir.chdir("/usr/bin")

# current directory
puts Dir.pwd # This will return something like /usr/bin

# You can get a list of the files and directories within a specific directory using Dir.entries −
puts Dir.entries("/usr/bin").join(' ')

# Dir.entries returns an array with all the entries within the specified directory. Dir.foreach provides the same feature
Dir.foreach("/usr/bin") do |entry|
    puts entry
end

# An even more concise way of getting directory listings is by using Dir's class array method
Dir["/usr/bin/*"]

# create directory
Dir.mkdir("mynewdir")
Dir.mkdir( "mynewdir", 755 )
Dir.delete("testdir")

# Creating Files & Temporary Directories
require 'tmpdir'
tempfilename = File.join(Dir.tmpdir, "tingtong")
tempfile = File.new(tempfilename, "w")
tempfile.puts "This is a temporary file"
tempfile.close
File.delete(tempfilename)

require 'tempfile'
f = Tempfile.new('tingtong')
f.puts "Hello"
puts f.path
f.close