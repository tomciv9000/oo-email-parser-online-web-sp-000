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
  
  def parse 
    @emailstring.split(/[\s,]/).reject{|c| c.empty?}.uniq
    #splits the string at commas and whitespace, rejecting empty array elements, and only returning unique array elements
  end
  
end