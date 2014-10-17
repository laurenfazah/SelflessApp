class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :contributions
      t.belongs_to :user
    end
  end
end
