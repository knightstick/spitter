# frozen_string_literal: true

class CreateSpits < ActiveRecord::Migration[6.0]
  def change
    create_table :spits do |t|
      t.string :body, null: false

      t.timestamps
    end
  end
end
