require 'facter'
Facter.add(:sladomain) do
#  confine :kernel => [ 'Linux' , 'SunOS' , 'FreeBSD' , 'Darwin' ]
  puts "Here's where we do the sla_domain lookup"
  setcode do
    answer = "here"
  end
end
