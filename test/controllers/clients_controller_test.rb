require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { aller_arrivee: @client.aller_arrivee, aller_depart: @client.aller_depart, aller_horaire_arrivee: @client.aller_horaire_arrivee, aller_numero_flight: @client.aller_numero_flight, civilité: @client.civilité, email: @client.email, fonction: @client.fonction, herbergement: @client.herbergement, navette_bus: @client.navette_bus, nom: @client.nom, numero: @client.numero, observations: @client.observations, parking: @client.parking, parking_palce: @client.parking_palce, participation: @client.participation, prenom: @client.prenom, raison_sociale: @client.raison_sociale, regime: @client.regime, retour_arrivee: @client.retour_arrivee, retour_depart: @client.retour_depart, retour_horaire_depart: @client.retour_horaire_depart, retour_numero_flight: @client.retour_numero_flight, sap_code: @client.sap_code, transport: @client.transport } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { aller_arrivee: @client.aller_arrivee, aller_depart: @client.aller_depart, aller_horaire_arrivee: @client.aller_horaire_arrivee, aller_numero_flight: @client.aller_numero_flight, civilité: @client.civilité, email: @client.email, fonction: @client.fonction, herbergement: @client.herbergement, navette_bus: @client.navette_bus, nom: @client.nom, numero: @client.numero, observations: @client.observations, parking: @client.parking, parking_palce: @client.parking_palce, participation: @client.participation, prenom: @client.prenom, raison_sociale: @client.raison_sociale, regime: @client.regime, retour_arrivee: @client.retour_arrivee, retour_depart: @client.retour_depart, retour_horaire_depart: @client.retour_horaire_depart, retour_numero_flight: @client.retour_numero_flight, sap_code: @client.sap_code, transport: @client.transport } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
