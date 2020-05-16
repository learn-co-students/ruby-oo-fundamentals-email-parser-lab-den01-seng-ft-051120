
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').




# class EmailAddressParser
#         attr_accessor :emails
    
#         def initialize(email_addresses)
#             @emails = email_addresses
#         end
    
#         def parse
#             parsed_emails = []
#             emails.split.each do |email_address| 
#             parsed_emails << email_address.split(',') 
#         end

#         parsed_emails = parsed_emails.flatten.uniq
#         parsed_emails
#     end
# end

# REFACTORED WITH map
class EmailAddressParser
    attr_accessor :emails

    def initialize(email_addresses)
        @emails = email_addresses
    end

    def parse
        parse_email = emails.split.map {|email_address| email_address.split(',')}    
        parsed_emails = parse_email.flatten.uniq
        parsed_emails
    end
end
