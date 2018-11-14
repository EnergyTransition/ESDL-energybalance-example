<?xml version="1.0" encoding="UTF-8"?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl">
  <instance id="Instance1" name="Energy Balance Example">
    <area id="Area1" name="Top level Energy System ">
      <asset xsi:type="esdl:GasNetwork" id="GasNetwork1" name="Gas Network">
        <port xsi:type="esdl:InPort" id="GasNetwork1_InPort2" connectedTo="GenericProducer2_OutPort1 GenericProducer3_OutPort1"/>
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort4" connectedTo="Losses4_InPort1"/>
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort7" connectedTo="GasHeater18_InPort2 PowerPlant17_InPort2 CHP12_InPort2"/>
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort8" connectedTo="GasDemand3_InPort1 GasDemand36_InPort1 GasDemand37_InPort1 GasDemand23_InPort1 GasDemand38_InPort1"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer2" name="Gas extraction">
        <port xsi:type="esdl:OutPort" id="GenericProducer2_OutPort1" connectedTo="GasNetwork1_InPort2"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer3" name="Gas import">
        <port xsi:type="esdl:OutPort" id="GenericProducer3_OutPort1" connectedTo="GasNetwork1_InPort2"/>
      </asset>
      <asset xsi:type="esdl:Losses" id="Losses4" name="Verliezen Gasnetwerk">
        <port xsi:type="esdl:InPort" id="Losses4_InPort1" connectedTo="GasNetwork1_OutPort4"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" id="ElectricityNetwork5" name="Electricity Network">
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort3" connectedTo="CHP12_OutPort3"/>
        <port xsi:type="esdl:OutPort" id="ElectricityNetwork5_OutPort6" connectedTo="HeatPump11_InPort3"/>
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort7" connectedTo="PowerPlant15_OutPort1 PowerPlant13_OutPort1 PowerPlant17_OutPort1 PVParc7_OutPort1 WindParc6_OutPort1 PVPanel8_OutPort1"/>
        <port xsi:type="esdl:OutPort" id="ElectricityNetwork5_OutPort9" connectedTo="ElectricityDemand2_InPort1 ElectricityDemand33_InPort1 ElectricityDemand34_InPort1 ElectricityDemand24_InPort1 ElectricityDemand35_InPort1 ElectricityDemand37_InPort1"/>
        <port xsi:type="esdl:OutPort" id="ElectricityNetwork5_OutPort1" connectedTo="SinkConsumer36_InPort1"/>
      </asset>
      <asset xsi:type="esdl:WindParc" id="WindParc6" name="Wind Parc">
        <port xsi:type="esdl:OutPort" id="WindParc6_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
      </asset>
      <asset xsi:type="esdl:PVParc" id="PVParc7" name="PV Parc">
        <port xsi:type="esdl:OutPort" id="PVParc7_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="HeatNetwork8" name="District Heating Network Wijkwarmte">
        <port xsi:type="esdl:InPort" id="HeatNetwork8_InPort2" connectedTo="HeatPump11_OutPort1 GasHeater18_OutPort1 CHP12_OutPort1 GeothermalSource9_OutPort1 ResidualHeatSource10_OutPort2"/>
        <port xsi:type="esdl:OutPort" id="HeatNetwork8_OutPort7" connectedTo="Losses19_InPort1"/>
        <port xsi:type="esdl:OutPort" id="HeatNetwork8_OutPort8" connectedTo="HeatingDemand1_InPort1 HeatingDemand20_InPort1 HeatingDemand21_InPort1"/>
      </asset>
      <asset xsi:type="esdl:GeothermalSource" id="GeothermalSource9" name="Geothermal Source">
        <port xsi:type="esdl:OutPort" id="GeothermalSource9_OutPort1" connectedTo="HeatNetwork8_InPort2"/>
      </asset>
      <asset xsi:type="esdl:ResidualHeatSource" id="ResidualHeatSource10" name="Residual Heat Source">
        <port xsi:type="esdl:OutPort" id="ResidualHeatSource10_OutPort1" connectedTo="HeatPump11_InPort2"/>
        <port xsi:type="esdl:OutPort" id="ResidualHeatSource10_OutPort2" connectedTo="HeatNetwork8_InPort2">
          <profile xsi:type="esdl:SingleValue" name="Opwekking Wijkwarmte" profileType="ENERGY_IN_PJ" value="19.4"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatPump" id="HeatPump11" name="Heat Pump">
        <port xsi:type="esdl:OutPort" id="HeatPump11_OutPort1" connectedTo="HeatNetwork8_InPort2"/>
        <port xsi:type="esdl:InPort" id="HeatPump11_InPort2" connectedTo="ResidualHeatSource10_OutPort1"/>
        <port xsi:type="esdl:InPort" id="HeatPump11_InPort3" connectedTo="ElectricityNetwork5_OutPort6"/>
        <port xsi:type="esdl:InPort" id="HeatPump11_InPort4" connectedTo="GenericProducer14_OutPort1"/>
      </asset>
      <asset xsi:type="esdl:CHP" id="CHP12" name="CHP">
        <port xsi:type="esdl:OutPort" id="CHP12_OutPort1" connectedTo="HeatNetwork8_InPort2"/>
        <port xsi:type="esdl:InPort" id="CHP12_InPort2" connectedTo="GasNetwork1_OutPort7"/>
        <port xsi:type="esdl:OutPort" id="CHP12_OutPort3" connectedTo="ElectricityNetwork5_InPort3"/>
      </asset>
      <asset xsi:type="esdl:PowerPlant" id="PowerPlant13" name="Coal powered Power Plant">
        <port xsi:type="esdl:OutPort" id="PowerPlant13_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
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
        <port xsi:type="esdl:OutPort" id="PowerPlant17_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
        <port xsi:type="esdl:InPort" id="PowerPlant17_InPort2" connectedTo="GasNetwork1_OutPort7"/>
      </asset>
      <asset xsi:type="esdl:GasHeater" id="GasHeater18" name="Bijstookketel" efficiency="0.925">
        <port xsi:type="esdl:OutPort" id="GasHeater18_OutPort1" connectedTo="HeatNetwork8_InPort2"/>
        <port xsi:type="esdl:InPort" id="GasHeater18_InPort2" connectedTo="GasNetwork1_OutPort7">
          <profile xsi:type="esdl:SingleValue" name="Bijstook Wijkwarmte" profileType="ENERGY_IN_PJ" value="5.3"/>
        </port>
      </asset>
      <asset xsi:type="esdl:Losses" id="Losses19" name="Distributieverlies Warmte">
        <port xsi:type="esdl:InPort" id="Losses19_InPort1" connectedTo="HeatNetwork8_OutPort7">
          <profile xsi:type="esdl:SingleValue" name="Omgevingsverlies WijkWarmte" profileType="ENERGY_IN_PJ" value="4.8"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand1" name="Warmtevraag Woning">
        <port xsi:type="esdl:InPort" id="HeatingDemand1_InPort1" connectedTo="HeatNetwork8_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Warmtevraag" profileType="ENERGY_IN_PJ" value="9.6"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand20" name="Warmtevraag Utiliteit">
        <port xsi:type="esdl:InPort" id="HeatingDemand20_InPort1" connectedTo="HeatNetwork8_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Wijkwarmte Utiliteit" profileType="ENERGY_IN_PJ" value="4.4"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand21" name="Warmtevraag GlasTuinBouw">
        <port xsi:type="esdl:InPort" id="HeatingDemand21_InPort1" connectedTo="HeatNetwork8_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Wijkwarmte GTB" profileType="ENERGY_IN_PJ" value="5.5"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand22" name="Warmtevraag Industrie">
        <port xsi:type="esdl:InPort" id="HeatingDemand22_InPort1">
          <profile xsi:type="esdl:SingleValue" name="Warmtevraag Industrie (verkochte warmte)" profileType="ENERGY_IN_PJ" value="96.48642000000002"/>
        </port>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand23" name="Gasvraag Industrie">
        <port xsi:type="esdl:InPort" id="GasDemand23_InPort1" connectedTo="GasNetwork1_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Gasvraag Industrie" value="245.5056309154131"/>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand24" name="Elektriciteitsvraag Mobiliteit">
        <port xsi:type="esdl:InPort" id="ElectricityDemand24_InPort1" connectedTo="ElectricityNetwork5_OutPort9">
          <profile xsi:type="esdl:SingleValue" name="Electriciteitsvraag mobiliteit" value="6.308329999999999"/>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand2" name="Elektriciteitsvraag Woning">
        <port xsi:type="esdl:InPort" id="ElectricityDemand2_InPort1" connectedTo="ElectricityNetwork5_OutPort9">
          <profile xsi:type="esdl:SingleValue" name="Metervraag elektriciteit" profileType="ENERGY_IN_PJ" value="79.3"/>
        </port>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand3" name="Gasvraag Woning">
        <port xsi:type="esdl:InPort" id="GasDemand3_InPort1" connectedTo="GasNetwork1_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Gasvraag Woning" value="307.0"/>
        </port>
      </asset>
      <asset xsi:type="esdl:PVPanel" id="PVPanel8" name="Rooftop PV">
        <port xsi:type="esdl:OutPort" id="PVPanel8_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand32" name="Warmtevraag Overig">
        <port xsi:type="esdl:InPort" id="HeatingDemand32_InPort1"/>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand33" name="Elektriciteitsvraag Utiliteit">
        <port xsi:type="esdl:InPort" id="ElectricityDemand33_InPort1" connectedTo="ElectricityNetwork5_OutPort9"/>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand34" name="Elektriciteitsvraag Glastuinbouw">
        <port xsi:type="esdl:InPort" id="ElectricityDemand34_InPort1" connectedTo="ElectricityNetwork5_OutPort9"/>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand35" name="Elektriciteitsvraag Overig">
        <port xsi:type="esdl:InPort" id="ElectricityDemand35_InPort1" connectedTo="ElectricityNetwork5_OutPort9"/>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand36" name="Gasvraag Utiliteit">
        <port xsi:type="esdl:InPort" id="GasDemand36_InPort1" connectedTo="GasNetwork1_OutPort8"/>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand37" name="Gasvraag Glastuinbouw">
        <port xsi:type="esdl:InPort" id="GasDemand37_InPort1" connectedTo="GasNetwork1_OutPort8"/>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand38" name="Gasvraag Overig">
        <port xsi:type="esdl:InPort" id="GasDemand38_InPort1" connectedTo="GasNetwork1_OutPort8"/>
      </asset>
      <asset xsi:type="esdl:SinkConsumer" id="SinkConsumer36" name="Verliezen Elektriciteitsnetwerk">
        <port xsi:type="esdl:InPort" id="SinkConsumer36_InPort1" connectedTo="ElectricityNetwork5_OutPort1"/>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand37" name="Elektriciteisvraag Industrie">
        <port xsi:type="esdl:InPort" id="ElectricityDemand37_InPort1" connectedTo="ElectricityNetwork5_OutPort9"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer14" name="Ambient heat">
        <port xsi:type="esdl:OutPort" id="GenericProducer14_OutPort1" connectedTo="HeatPump11_InPort4"/>
      </asset>
    </area>
  </instance>
  <energySystemInformation>
    <carriers>
      <carrier xsi:type="esdl:EnergyCarrier" name="Gas" id="ecgas"/>
      <carrier xsi:type="esdl:EnergyCarrier" name="Coal" id="eccoal"/>
      <carrier xsi:type="esdl:EnergyCarrier" name="Uranium" id="ecuran"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Heat" id="cheat" temperature="80.0"/>
      <carrier xsi:type="esdl:ElectricityCommodity" name="Electricity" id="celec"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
