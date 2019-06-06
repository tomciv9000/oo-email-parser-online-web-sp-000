# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  
  attr_accessor :emails
  
  def initialize(emails)
    @emailstring = emails
  end
  
#the .parse method below splits the string at commas and whitespace, rejecting empty array elements, and then only returning unique elements from that array
  
  def parse 
    @emailstring.split(/[\s,]/).reject{|c| c.empty?}.uniq
  end
  
end