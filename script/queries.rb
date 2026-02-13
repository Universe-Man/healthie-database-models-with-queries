# Queries to Call the Database:

puts "--------------------------------------------------"

puts "Query #1: Find all Clients for a particular Provider (Dr. Jeff):"
provider = Provider.find_by(email: "jeff@provider.com")
puts "Dr. Jeff's Clients:"
puts provider.clients

puts "--------------------------------------------------"

puts "Query #2: Find all Providers for a particular Client (Mark):"
client = Client.find_by(email: "mark@client.com")
puts "Mark's Providers:"
puts client.providers

puts "--------------------------------------------------"

puts "Query #3: Find all of a particular Client's (Lisa's) Journal Entries, sorted by date posted:"
client = Client.find_by(email: "lisa@client.com")
puts "Lisa's Journal Entries:"
puts client.journal_entries.order(created_at: :desc)

puts "--------------------------------------------------"

puts "Query #4: Find all of the Journal Entries of all of the Clients of a particular Provider (Dr. Ken), sorted by date posted:"
provider = Provider.find_by(email: "ken@provider.com")
puts "Dr. Ken's Clients' Journal Entries"
puts JournalEntry.joins(:plan).where(plans: { provider_id: provider.id }).order(created_at: :desc)

puts "--------------------------------------------------"

