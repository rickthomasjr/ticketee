Factory.define :ticket do |ticket|
  ticket.title "A ticket"
  ticket.description "Just a ticket"
  ticket.user { |u| u.association(:user) }
  ticket.project { |p| p.association(:project) }
end