class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :total_cost
      t.string :total_usage
      t.string :total_bill

      t.timestamps
    end
  end
end
