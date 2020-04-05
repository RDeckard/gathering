# frozen_string_literal: true

class CreateWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :workshops do |t|
      t.string :name
      t.text :description
      t.references :workshop_template, null: false, foreign_key: true

      t.timestamps
    end
  end
end
