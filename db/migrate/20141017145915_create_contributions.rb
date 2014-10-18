class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :content
    end
  end
end
