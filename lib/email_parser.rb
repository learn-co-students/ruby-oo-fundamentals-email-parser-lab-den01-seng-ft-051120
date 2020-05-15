class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    email_list = @emails.split(/[\s|\,\s]/).uniq
    email_list.delete_if { |email| email == '' }
  end
 end
 