class RenameTypeToPlanTypeInPlans < ActiveRecord::Migration[8.0]
  def change
    rename_column :plans, :type, :plan_type
  end
end
