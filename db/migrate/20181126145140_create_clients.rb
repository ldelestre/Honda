class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :prenom
      t.string :nom
      t.string :civilité
      t.string :sap_code
      t.string :raison_sociale
      t.string :fonction
      t.boolean :participation
      t.integer :numero
      t.string :transport
      t.string :aller_depart
      t.string :aller_arrivee
      t.string :aller_numero_flight
      t.string :aller_horaire_arrivee
      t.string :retour_depart
      t.string :retour_arrivee
      t.string :retour_numero_flight
      t.string :retour_horaire_depart
      t.string :navette_bus
      t.boolean :parking
      t.string :parking_place
      t.boolean :herbergement
      t.text :regime
      t.text :observations

      t.timestamps
    end
  end
end
