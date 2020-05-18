# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser 

    attr_accessor :email_addresses

    def initialize email_addresses
        @email_addresses = email_addresses

    end


    def parse

        email_array = email_addresses.split(' ')

        new_array = email_array.map do |element|
            if element[-1] == ','
                element[0, element.length - 1]
            else
                element
            end
            # binding.pry
        end


        # binding.pry
        new_array.uniq
    end
end