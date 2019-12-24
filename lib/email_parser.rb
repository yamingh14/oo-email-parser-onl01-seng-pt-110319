class EmailAddressParser
  attr_accessor :name, :csv_emails

  def initialize(csv_emails)
  # you don't need name in here, it is redundant/
  @name = name
    @csv_emails = csv_emails
  end

# This will not work because "emails2" below will not be properly parsed
def parse
  csv_emails.split(/\s*,\s*/)
end

  def parse
    csv_emails.split.collect do |address|
      address.split(',')
    end
    .flatten.uniq
  end
end
