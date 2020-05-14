# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'


class EmailAddressParser


    attr_accessor :emails

    def initialize unformatted_addresses
        @emails = unformatted_addresses
    end

    def parse 
        string = @emails.delete ","
        string.split.uniq 
    end

end


