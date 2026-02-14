# README

Hello Healthie Team!!

I'm Ian Pollack and thank you for reviewing my Database and Model Design with Queries assessment!

As one would expect, I utilized the internet and Google to reference docs and syntax, but if you have any questions about my approach I'd love to answer them.

## To setup this application:
  - Run "bundle install".
  - Run "rails db:setup".
    - Alternatively you could run these three commands:
      - "rails db:create"
      - "rails db:migrate"
      - "rails db:seed"
  - Seed file will create:
    - Five Providers
    - Five Clients
    - Eight Plans (linking Providers and Clients)
    - Fifteen Journal Entries

## To run the queries in the application:
  - Run "rails runner script/queries.rb".
    - Alternatively you could run these two commands:
      - Run "rails console" (rails c).
      - Run "load 'script/queries.rb'".

## Query Commands:
  - The following queries are copied from the "script/queries.rb" file:

    - Query #1: Find all Clients for a particular Provider (Dr. Jeff):"
      provider = Provider.find_by(email: "jeff@provider.com")
      provider.clients

    - Query #2: Find all Providers for a particular Client (Mark):
      client = Client.find_by(email: "mark@client.com")
      client.providers

    - Query #3: Find all of a particular Client's (Lisa's) Journal Entries, sorted by date posted:
      client = Client.find_by(email: "lisa@client.com")
      client.journal_entries.order(created_at: :desc)

    - Query #4: Find all of the Journal Entries of all of the Clients of a particular Provider (Dr. Ken), sorted by date posted:
      provider = Provider.find_by(email: "ken@provider.com")
      JournalEntry.joins(:plan).where(plans: { provider_id: provider.id }).order(created_at: :desc)

## Explanation:
  - Model relationships connect Providers with Clients through Plans.
  - JournalEntries belong to Clients and Plans because certain Client notes would be for certain Providers, therefore they need to be connected to the Plan.
  - Indexes were added to foreign keys and emails to optimize query performance.
  - Provider and Client emails are unique so I used the to find our users, but you can also use IDs if you have them.
  - Using model associations I was able to fetch queries using those relationships.

## Files you should care about:

- Models:
  - /app/models/provider.rb
  - /app/models/client.rb
  - /app/models/plan.rb
  - /app/models/journal_entry.rb

- Database:
  - /db/migrate/* (all the migration files from the models above)
  - /db/schema.rb (auto generated but the DB schema for the tables of the models)
  - /db/seeds.rb (created dummy data for query testing)

- Scripts:
  - /script/queries.rb (file to run the queries listed above)

Thank you for your consideration and I'm looking forward to your feedback!

Ian Pollack
