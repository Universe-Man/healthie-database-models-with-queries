# SEED FILE DATA:

# Providers
jeff = Provider.create(name: "Dr. Jeff", email: "jeff@provider.com")
ken = Provider.create(name: "Dr. Ken", email: "ken@provider.com")
amy = Provider.create(name: "Dr. Amy", email: "amy@provider.com")
alison = Provider.create(name: "Dr. Alison", email: "alison@provider.com")
robert = Provider.create(name: "Dr. Robert", email: "robert@provider.com")

# Clients
mark = Client.create(name: "Mark", email: "mark@client.com")
albert = Client.create(name: "Albert", email: "albert@client.com")
peter = Client.create(name: "Peter", email: "peter@client.com")
lisa = Client.create(name: "Lisa", email: "lisa@client.com")
amanda = Client.create(name: "Amanda", email: "amanda@client.com")

# Plans
mark_plan_1 = Plan.create(plan_type: "basic", client_id: mark.id, provider_id: jeff.id)
albert_plan_1 = Plan.create(plan_type: "basic", client_id: albert.id, provider_id: ken.id)
peter_plan_1 = Plan.create(plan_type: "premium", client_id: peter.id, provider_id: amy.id)
lisa_plan_1 = Plan.create(plan_type: "premium", client_id: lisa.id, provider_id: alison.id)
amanda_plan_1 = Plan.create(plan_type: "basic", client_id: amanda.id, provider_id: robert.id)
amanda_plan_2 = Plan.create(plan_type: "premium", client_id: amanda.id, provider_id: amy.id)
peter_plan_2 = Plan.create(plan_type: "premium", client_id: peter.id, provider_id: jeff.id)
mark_plan_2 = Plan.create(plan_type: "basic", client_id: mark.id, provider_id: ken.id)

# Journal Entries
JournalEntry.create(content: "I'm Mark, and things are good!", client_id: mark.id, plan_id: mark_plan_1.id)
JournalEntry.create(content: "I'm Albert, and I feel sick!", client_id: albert.id, plan_id: albert_plan_1.id)
JournalEntry.create(content: "I'm Peter, and things are good!", client_id: peter.id, plan_id: peter_plan_1.id)
JournalEntry.create(content: "I'm Mark, and I'm cured!!!", client_id: mark.id, plan_id: mark_plan_2.id)
JournalEntry.create(content: "I'm Peter, and I feel sick!", client_id: peter.id, plan_id: peter_plan_2.id)
JournalEntry.create(content: "I'm Peter, and my back hurts!", client_id: peter.id, plan_id: peter_plan_1.id)
JournalEntry.create(content: "I'm Lisa, and things are good!", client_id: lisa.id, plan_id: lisa_plan_1.id)
JournalEntry.create(content: "I'm Mark, and my back hurts!", client_id: mark.id, plan_id: mark_plan_2.id)
JournalEntry.create(content: "I'm Amanda, and I'm cured!!!", client_id: amanda.id, plan_id: amanda_plan_1.id)
JournalEntry.create(content: "I'm Lisa, and I feel sick!", client_id: lisa.id, plan_id: lisa_plan_1.id)
JournalEntry.create(content: "I'm Peter, and I feel sick!", client_id: peter.id, plan_id: peter_plan_2.id)
JournalEntry.create(content: "I'm Albert, and things are good!", client_id: albert.id, plan_id: albert_plan_1.id)
JournalEntry.create(content: "I'm Amanda, and things are good!", client_id: amanda.id, plan_id: amanda_plan_2.id)
JournalEntry.create(content: "I'm Lisa, and I'm cured!!!", client_id: lisa.id, plan_id: lisa_plan_1.id)
JournalEntry.create(content: "I'm Peter, and I'm cured!!!", client_id: peter.id, plan_id: peter_plan_1.id)