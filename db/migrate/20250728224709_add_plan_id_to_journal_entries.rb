class AddPlanIdToJournalEntries < ActiveRecord::Migration[8.0]
  def change
    add_column :journal_entries, :plan_id, :integer
  end
end
