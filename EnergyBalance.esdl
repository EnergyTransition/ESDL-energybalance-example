<?xml version="1.0" encoding="UTF-8"?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl/1809">
  <instance id="Instance1" name="Instance1">
    <area id="Area1" name="Area1">
      <asset xsi:type="esdl:GasNetwork" id="GasNetwork1" name="Gas Network">
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort1" connectedTo="GConnection4_InPort2"/>
        <port xsi:type="esdl:InPort" id="GasNetwork1_InPort2" connectedTo="GenericProducer2_OutPort1"/>
        <port xsi:type="esdl:InPort" id="GasNetwork1_InPort3" connectedTo="GenericProducer3_OutPort1"/>
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort4" connectedTo="Losses4_InPort1"/>
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort5" connectedTo="CHP12_InPort2"/>
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort6" connectedTo="PowerPlant17_InPort2"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer2" name="Gas winning">
        <port xsi:type="esdl:OutPort" id="GenericProducer2_OutPort1" connectedTo="GasNetwork1_InPort2"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer3" name="Gas import">
        <port xsi:type="esdl:OutPort" id="GenericProducer3_OutPort1" connectedTo="GasNetwork1_InPort3"/>
      </asset>
      <asset xsi:type="esdl:Losses" id="Losses4" name="Losses">
        <port xsi:type="esdl:InPort" id="Losses4_InPort1" connectedTo="GasNetwork1_OutPort4"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" id="ElectricityNetwork5" name="Electricity Network">
        <port xsi:type="esdl:OutPort" id="ElectricityNetwork5_OutPort1" connectedTo="EConnection6_InPort2"/>
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort2" connectedTo="PVParc7_OutPort1"/>
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort3" connectedTo="CHP12_OutPort3"/>
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort4" connectedTo="WindParc6_OutPort1"/>
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort5" connectedTo="PowerPlant13_OutPort1"/>
        <port xsi:type="esdl:OutPort" id="ElectricityNetwork5_OutPort6" connectedTo="HeatPump11_InPort3"/>
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort7" connectedTo="PowerPlant15_OutPort1"/>
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort8" connectedTo="PowerPlant17_OutPort1"/>
      </asset>
      <asset xsi:type="esdl:WindParc" id="WindParc6" name="Wind Parc">
        <port xsi:type="esdl:OutPort" id="WindParc6_OutPort1" connectedTo="ElectricityNetwork5_InPort4"/>
      </asset>
      <asset xsi:type="esdl:PVParc" id="PVParc7" name="PV Parc">
        <port xsi:type="esdl:OutPort" id="PVParc7_OutPort1" connectedTo="ElectricityNetwork5_InPort2"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="HeatNetwork8" name="District Heating Network">
        <port xsi:type="esdl:OutPort" id="HeatNetwork8_OutPort1" connectedTo="HConnection7_InPort2"/>
        <port xsi:type="esdl:InPort" id="HeatNetwork8_InPort2" connectedTo="HeatPump11_OutPort1"/>
        <port xsi:type="esdl:InPort" id="HeatNetwork8_InPort3" connectedTo="GeothermalSource9_OutPort1"/>
        <port xsi:type="esdl:InPort" id="HeatNetwork8_InPort4" connectedTo="CHP12_OutPort1"/>
      </asset>
      <asset xsi:type="esdl:GeothermalSource" id="GeothermalSource9" name="Geothermal Source">
        <port xsi:type="esdl:OutPort" id="GeothermalSource9_OutPort1" connectedTo="HeatNetwork8_InPort3"/>
      </asset>
      <asset xsi:type="esdl:ResidualHeatSource" id="ResidualHeatSource10" name="Residual Heat Source">
        <port xsi:type="esdl:OutPort" id="ResidualHeatSource10_OutPort1" connectedTo="HeatPump11_InPort2"/>
      </asset>
      <asset xsi:type="esdl:HeatPump" id="HeatPump11" name="Heat Pump">
        <port xsi:type="esdl:OutPort" id="HeatPump11_OutPort1" connectedTo="HeatNetwork8_InPort2"/>
        <port xsi:type="esdl:InPort" id="HeatPump11_InPort2" connectedTo="ResidualHeatSource10_OutPort1"/>
        <port xsi:type="esdl:InPort" id="HeatPump11_InPort3" connectedTo="ElectricityNetwork5_OutPort6"/>
      </asset>
      <asset xsi:type="esdl:CHP" id="CHP12" name="CHP">
        <port xsi:type="esdl:OutPort" id="CHP12_OutPort1" connectedTo="HeatNetwork8_InPort4"/>
        <port xsi:type="esdl:InPort" id="CHP12_InPort2" connectedTo="GasNetwork1_OutPort5"/>
        <port xsi:type="esdl:OutPort" id="CHP12_OutPort3" connectedTo="ElectricityNetwork5_InPort3"/>
      </asset>
      <asset xsi:type="esdl:PowerPlant" id="PowerPlant13" name="Coal powered Power Plant">
        <port xsi:type="esdl:OutPort" id="PowerPlant13_OutPort1" connectedTo="ElectricityNetwork5_InPort5"/>
        <port xsi:type="esdl:InPort" id="PowerPlant13_InPort2" connectedTo="GenericProducer14_OutPort1"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer14" name="Coal import">
        <port xsi:type="esdl:OutPort" id="GenericProducer14_OutPort1" connectedTo="PowerPlant13_InPort2"/>
      </asset>
      <asset xsi:type="esdl:PowerPlant" id="PowerPlant15" name="Uranium powered Power Plant">
        <port xsi:type="esdl:OutPort" id="PowerPlant15_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
        <port xsi:type="esdl:InPort" id="PowerPlant15_InPort2" connectedTo="GenericProducer16_OutPort1"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer16" name="Uranium import">
        <port xsi:type="esdl:OutPort" id="GenericProducer16_OutPort1" connectedTo="PowerPlant15_InPort2"/>
      </asset>
      <asset xsi:type="esdl:PowerPlant" id="PowerPlant17" name="Gas powered Power Plant">
        <port xsi:type="esdl:OutPort" id="PowerPlant17_OutPort1" connectedTo="ElectricityNetwork5_InPort8"/>
        <port xsi:type="esdl:InPort" id="PowerPlant17_InPort2" connectedTo="GasNetwork1_OutPort6"/>
      </asset>
      <area id="Area2" name="Area2">
        <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand1" name="Heating Demand">
          <port xsi:type="esdl:InPort" id="HeatingDemand1_InPort1" connectedTo="HConnection7_OutPort1"/>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand2" name="Electricity Demand">
          <port xsi:type="esdl:InPort" id="ElectricityDemand2_InPort1" connectedTo="ElectricityNetworkIH_OutPort1"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" id="GasDemand3" name="Gas Demand">
          <port xsi:type="esdl:InPort" id="GasDemand3_InPort1" connectedTo="GConnection4_OutPort1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" id="GConnection4" name="Gas Connection">
          <port xsi:type="esdl:OutPort" id="GConnection4_OutPort1" connectedTo="GasDemand3_InPort1"/>
          <port xsi:type="esdl:InPort" id="GConnection4_InPort2" connectedTo="GasNetwork1_OutPort1"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" id="ElectricityNetworkIH" name="Electricity Network">
          <port xsi:type="esdl:OutPort" id="ElectricityNetworkIH_OutPort1" connectedTo="ElectricityDemand2_InPort1"/>
          <port xsi:type="esdl:InPort" id="ElectricityNetworkIH_InPort2" connectedTo="PVPanel8_OutPort1"/>
          <port xsi:type="esdl:InPort" id="ElectricityNetworkIH_InPort3" connectedTo="EConnection6_OutPort1"/>
        </asset>
        <asset xsi:type="esdl:EConnection" id="EConnection6" name="Electricity Connection">
          <port xsi:type="esdl:OutPort" id="EConnection6_OutPort1" connectedTo="ElectricityNetworkIH_InPort3"/>
          <port xsi:type="esdl:InPort" id="EConnection6_InPort2" connectedTo="ElectricityNetwork5_OutPort1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" id="HConnection7" name="Heat Connection">
          <port xsi:type="esdl:OutPort" id="HConnection7_OutPort1" connectedTo="HeatingDemand1_InPort1"/>
          <port xsi:type="esdl:InPort" id="HConnection7_InPort2" connectedTo="HeatNetwork8_OutPort1"/>
        </asset>
        <asset xsi:type="esdl:PVPanel" id="PVPanel8" name="Rooftop PV">
          <port xsi:type="esdl:OutPort" id="PVPanel8_OutPort1" connectedTo="ElectricityNetworkIH_InPort2"/>
        </asset>
      </area>
    </area>
  </instance>
</esdl:EnergySystem>
