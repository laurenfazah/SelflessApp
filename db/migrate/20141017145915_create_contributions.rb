class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :content
      t.belongs_to :user
    end
  end
end
