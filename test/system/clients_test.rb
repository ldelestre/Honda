require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Aller Arrivee", with: @client.aller_arrivee
    fill_in "Aller Depart", with: @client.aller_depart
    fill_in "Aller Horaire Arrivee", with: @client.aller_horaire_arrivee
    fill_in "Aller Numero Flight", with: @client.aller_numero_flight
    fill_in "Civilité", with: @client.civilité
    fill_in "Email", with: @client.email
    fill_in "Fonction", with: @client.fonction
    fill_in "Herbergement", with: @client.herbergement
    fill_in "Navette Bus", with: @client.navette_bus
    fill_in "Nom", with: @client.nom
    fill_in "Numero", with: @client.numero
    fill_in "Observations", with: @client.observations
    fill_in "Parking", with: @client.parking
    fill_in "Parking Palce", with: @client.parking_palce
    fill_in "Participation", with: @client.participation
    fill_in "Prenom", with: @client.prenom
    fill_in "Raison Sociale", with: @client.raison_sociale
    fill_in "Regime", with: @client.regime
    fill_in "Retour Arrivee", with: @client.retour_arrivee
    fill_in "Retour Depart", with: @client.retour_depart
    fill_in "Retour Horaire Depart", with: @client.retour_horaire_depart
    fill_in "Retour Numero Flight", with: @client.retour_numero_flight
    fill_in "Sap Code", with: @client.sap_code
    fill_in "Transport", with: @client.transport
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Aller Arrivee", with: @client.aller_arrivee
    fill_in "Aller Depart", with: @client.aller_depart
    fill_in "Aller Horaire Arrivee", with: @client.aller_horaire_arrivee
    fill_in "Aller Numero Flight", with: @client.aller_numero_flight
    fill_in "Civilité", with: @client.civilité
    fill_in "Email", with: @client.email
    fill_in "Fonction", with: @client.fonction
    fill_in "Herbergement", with: @client.herbergement
    fill_in "Navette Bus", with: @client.navette_bus
    fill_in "Nom", with: @client.nom
    fill_in "Numero", with: @client.numero
    fill_in "Observations", with: @client.observations
    fill_in "Parking", with: @client.parking
    fill_in "Parking Palce", with: @client.parking_palce
    fill_in "Participation", with: @client.participation
    fill_in "Prenom", with: @client.prenom
    fill_in "Raison Sociale", with: @client.raison_sociale
    fill_in "Regime", with: @client.regime
    fill_in "Retour Arrivee", with: @client.retour_arrivee
    fill_in "Retour Depart", with: @client.retour_depart
    fill_in "Retour Horaire Depart", with: @client.retour_horaire_depart
    fill_in "Retour Numero Flight", with: @client.retour_numero_flight
    fill_in "Sap Code", with: @client.sap_code
    fill_in "Transport", with: @client.transport
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
