<?xml version="1.0" encoding="UTF-8"?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl">
  <instance id="Instance1" name="Energy Balance Example">
    <area id="Area1" name="Top level Energy System ">
      <asset xsi:type="esdl:GasNetwork" id="GasNetwork1" name="Gas Network">
        <port xsi:type="esdl:InPort" id="GasNetwork1_InPort2" connectedTo="GenericProducer2_OutPort1 GenericProducer3_OutPort1">
          <profile xsi:type="esdl:SingleValue" name="Input Gas Network"/>
        </port>
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort4" connectedTo="Losses4_InPort1"/>
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort7" connectedTo="GasHeater18_InPort2 PowerPlant17_InPort2 CHP12_InPort2"/>
        <port xsi:type="esdl:OutPort" id="GasNetwork1_OutPort8" connectedTo="GasDemand3_InPort1 GasDemand36_InPort1 GasDemand37_InPort1 GasDemand23_InPort1 GasDemand38_InPort1 GasDemand41_InPort1"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer2" name="Gas Extraction">
        <port xsi:type="esdl:OutPort" id="GenericProducer2_OutPort1" connectedTo="GasNetwork1_InPort2"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer3" name="Gas import">
        <port xsi:type="esdl:OutPort" id="GenericProducer3_OutPort1" connectedTo="GasNetwork1_InPort2"/>
      </asset>
      <asset xsi:type="esdl:Losses" id="Losses4" name="Losses Gas Network">
        <port xsi:type="esdl:InPort" id="Losses4_InPort1" connectedTo="GasNetwork1_OutPort4"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" id="ElectricityNetwork5" name="Electricity Network">
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort3" connectedTo="CHP12_OutPort3"/>
        <port xsi:type="esdl:OutPort" id="ElectricityNetwork5_OutPort6" connectedTo="HeatPump11_InPort3"/>
        <port xsi:type="esdl:InPort" id="ElectricityNetwork5_InPort7" connectedTo="PowerPlant15_OutPort1 PowerPlant13_OutPort1 PowerPlant17_OutPort1 PVParc7_OutPort1 WindParc6_OutPort1 PVPanel8_OutPort1 GenericProducer39_OutPort1 GenericProducer40_OutPort1"/>
        <port xsi:type="esdl:OutPort" id="ElectricityNetwork5_OutPort9" connectedTo="ElectricityDemand2_InPort1 ElectricityDemand33_InPort1 ElectricityDemand34_InPort1 ElectricityDemand24_InPort1 ElectricityDemand35_InPort1 ElectricityDemand37_InPort1"/>
        <port xsi:type="esdl:OutPort" id="ElectricityNetwork5_OutPort1" connectedTo="SinkConsumer36_InPort1"/>
      </asset>
      <asset xsi:type="esdl:WindParc" id="WindParc6" name="Wind Parc">
        <port xsi:type="esdl:OutPort" id="WindParc6_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
      </asset>
      <asset xsi:type="esdl:PVParc" id="PVParc7" name="PV Parc">
        <port xsi:type="esdl:OutPort" id="PVParc7_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="HeatNetwork8" name="District Heating Network">
        <port xsi:type="esdl:InPort" id="HeatNetwork8_InPort2" connectedTo="HeatPump11_OutPort1 GasHeater18_OutPort1 CHP12_OutPort1 GeothermalSource9_OutPort1 ResidualHeatSource10_OutPort2 _Y0vGAPSIEeixUYkhwQ73mw">
          <profile xsi:type="esdl:SingleValue" name="District Heating Network"/>
        </port>
        <port xsi:type="esdl:OutPort" id="HeatNetwork8_OutPort7" connectedTo="Losses19_InPort1"/>
        <port xsi:type="esdl:OutPort" id="HeatNetwork8_OutPort8" connectedTo="HeatingDemand1_InPort1 HeatingDemand20_InPort1"/>
      </asset>
      <asset xsi:type="esdl:GeothermalSource" id="GeothermalSource9" name="Geothermal Heater">
        <port xsi:type="esdl:OutPort" id="GeothermalSource9_OutPort1" connectedTo="HeatNetwork8_InPort2"/>
      </asset>
      <asset xsi:type="esdl:ResidualHeatSource" id="ResidualHeatSource10" name="Residual Heat">
        <port xsi:type="esdl:OutPort" id="ResidualHeatSource10_OutPort1" connectedTo="HeatPump11_InPort2"/>
        <port xsi:type="esdl:OutPort" id="ResidualHeatSource10_OutPort2" connectedTo="HeatNetwork8_InPort2">
          <profile xsi:type="esdl:SingleValue" name="Residual Heat" profileType="ENERGY_IN_PJ" value="19.4"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatPump" id="HeatPump11" name="Heat Pump">
        <port xsi:type="esdl:OutPort" id="HeatPump11_OutPort1" connectedTo="HeatNetwork8_InPort2"/>
        <port xsi:type="esdl:InPort" id="HeatPump11_InPort2" connectedTo="ResidualHeatSource10_OutPort1"/>
        <port xsi:type="esdl:InPort" id="HeatPump11_InPort3" connectedTo="ElectricityNetwork5_OutPort6"/>
        <port xsi:type="esdl:InPort" id="HeatPump11_InPort4" connectedTo="GenericProducer38_OutPort1"/>
      </asset>
      <asset xsi:type="esdl:CHP" id="CHP12" name="Gas CHP">
        <port xsi:type="esdl:OutPort" id="CHP12_OutPort1" connectedTo="HeatNetwork8_InPort2"/>
        <port xsi:type="esdl:InPort" id="CHP12_InPort2" connectedTo="GasNetwork1_OutPort7"/>
        <port xsi:type="esdl:OutPort" id="CHP12_OutPort3" connectedTo="ElectricityNetwork5_InPort3"/>
        <port xsi:type="esdl:OutPort" id="CHP12_OutPort4"/>
      </asset>
      <asset xsi:type="esdl:PowerPlant" id="PowerPlant13" name="Coal powered Power Plant">
        <port xsi:type="esdl:OutPort" id="PowerPlant13_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
        <port xsi:type="esdl:InPort" id="PowerPlant13_InPort2" connectedTo="GenericProducer14_OutPort1"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer14" name="Coal Import">
        <port xsi:type="esdl:OutPort" id="GenericProducer14_OutPort1" connectedTo="PowerPlant13_InPort2 _T98RgOwJEeixUYkhwQ73mw"/>
      </asset>
      <asset xsi:type="esdl:PowerPlant" id="PowerPlant15" name="Uranium powered Power Plant">
        <port xsi:type="esdl:OutPort" id="PowerPlant15_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
        <port xsi:type="esdl:InPort" id="PowerPlant15_InPort2" connectedTo="GenericProducer16_OutPort1"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer16" name="Uranium Import">
        <port xsi:type="esdl:OutPort" id="GenericProducer16_OutPort1" connectedTo="PowerPlant15_InPort2"/>
      </asset>
      <asset xsi:type="esdl:PowerPlant" id="PowerPlant17" name="Gas powered Power Plant">
        <port xsi:type="esdl:OutPort" id="PowerPlant17_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
        <port xsi:type="esdl:InPort" id="PowerPlant17_InPort2" connectedTo="GasNetwork1_OutPort7"/>
      </asset>
      <asset xsi:type="esdl:GasHeater" id="GasHeater18" name="Backup Gas Heater" efficiency="0.925">
        <port xsi:type="esdl:OutPort" id="GasHeater18_OutPort1" connectedTo="HeatNetwork8_InPort2"/>
        <port xsi:type="esdl:InPort" id="GasHeater18_InPort2" connectedTo="GasNetwork1_OutPort7">
          <profile xsi:type="esdl:SingleValue" name="Gas Backup Heater" profileType="ENERGY_IN_PJ" value="5.3"/>
        </port>
      </asset>
      <asset xsi:type="esdl:Losses" id="Losses19" name="Losses District Heating Network">
        <port xsi:type="esdl:InPort" id="Losses19_InPort1" connectedTo="HeatNetwork8_OutPort7">
          <profile xsi:type="esdl:SingleValue" name="Losses District Heating Network" profileType="ENERGY_IN_PJ" value="4.8"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand1" name="Heat Demand Residences">
        <port xsi:type="esdl:InPort" id="HeatingDemand1_InPort1" connectedTo="HeatNetwork8_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Heat Demand Residences" profileType="ENERGY_IN_PJ" value="9.6"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand20" name="Heat Demand Utilities">
        <port xsi:type="esdl:InPort" id="HeatingDemand20_InPort1" connectedTo="HeatNetwork8_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Heat Demand Utilities" profileType="ENERGY_IN_PJ" value="4.4"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand21" name="Heat Demand Agriculture">
        <port xsi:type="esdl:InPort" id="HeatingDemand21_InPort1" connectedTo="_Y0vGAPSIEeixUYkhwQ73mw">
          <profile xsi:type="esdl:SingleValue" name="Heat Demand Agriculture" profileType="ENERGY_IN_PJ" value="5.5"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand22" name="Sold Heat Demand Industry">
        <port xsi:type="esdl:InPort" id="HeatingDemand22_InPort1" connectedTo="_Y0vGAPSIEeixUYkhwQ73mw">
          <profile xsi:type="esdl:SingleValue" name="Sold Heat Demand Industry" profileType="ENERGY_IN_PJ" value="96.48642000000002"/>
        </port>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand23" name="Gas Demand Industry">
        <port xsi:type="esdl:InPort" id="GasDemand23_InPort1" connectedTo="GasNetwork1_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Gas Demand Industry" value="245.5056309154131"/>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand24" name="Electricity Demand Mobility">
        <port xsi:type="esdl:InPort" id="ElectricityDemand24_InPort1" connectedTo="ElectricityNetwork5_OutPort9">
          <profile xsi:type="esdl:SingleValue" name="Electricity Demand Mobility" value="6.308329999999999"/>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand2" name="Electricity Demand Residences">
        <port xsi:type="esdl:InPort" id="ElectricityDemand2_InPort1" connectedTo="ElectricityNetwork5_OutPort9">
          <profile xsi:type="esdl:SingleValue" name="Electricity Demand Residences" profileType="ENERGY_IN_PJ" value="79.3"/>
        </port>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand3" name="Gas Demand Residences">
        <port xsi:type="esdl:InPort" id="GasDemand3_InPort1" connectedTo="GasNetwork1_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Gas Demand Residences" value="307.0"/>
        </port>
      </asset>
      <asset xsi:type="esdl:PVPanel" id="PVPanel8" name="Rooftop PV">
        <port xsi:type="esdl:OutPort" id="PVPanel8_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="HeatingDemand32" name="Heat Demand Other">
        <port xsi:type="esdl:InPort" id="HeatingDemand32_InPort1" connectedTo="_Y0vGAPSIEeixUYkhwQ73mw">
          <profile xsi:type="esdl:SingleValue" name="Heat Demand Other"/>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand33" name="Electricity Demand Utilities">
        <port xsi:type="esdl:InPort" id="ElectricityDemand33_InPort1" connectedTo="ElectricityNetwork5_OutPort9">
          <profile xsi:type="esdl:SingleValue" name="Electricity Demand Utilities" id=""/>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand34" name="Electricity Demand Agriculture">
        <port xsi:type="esdl:InPort" id="ElectricityDemand34_InPort1" connectedTo="ElectricityNetwork5_OutPort9">
          <profile xsi:type="esdl:SingleValue" name="Electricity Demand Agriculture"/>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand35" name="Electricity Demand Other">
        <port xsi:type="esdl:InPort" id="ElectricityDemand35_InPort1" connectedTo="ElectricityNetwork5_OutPort9">
          <profile xsi:type="esdl:SingleValue" name="Electricity Demand Other"/>
        </port>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand36" name="Gas Demand Utilities">
        <port xsi:type="esdl:InPort" id="GasDemand36_InPort1" connectedTo="GasNetwork1_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Gas Demand Utilities"/>
        </port>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand37" name="Gas Demand Agriculture">
        <port xsi:type="esdl:InPort" id="GasDemand37_InPort1" connectedTo="GasNetwork1_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Gas Demand Agriculture"/>
        </port>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand38" name="Gas Demand Other">
        <port xsi:type="esdl:InPort" id="GasDemand38_InPort1" connectedTo="GasNetwork1_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Gas Demand Other"/>
        </port>
      </asset>
      <asset xsi:type="esdl:SinkConsumer" id="SinkConsumer36" name="Losses Electricity Network">
        <port xsi:type="esdl:InPort" id="SinkConsumer36_InPort1" connectedTo="ElectricityNetwork5_OutPort1">
          <profile xsi:type="esdl:SingleValue" name="Losses Electricity Network"/>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" id="ElectricityDemand37" name="Electricity Demand Industry">
        <port xsi:type="esdl:InPort" id="ElectricityDemand37_InPort1" connectedTo="ElectricityNetwork5_OutPort9">
          <profile xsi:type="esdl:SingleValue" name="Electricity Demand Industry"/>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer38" name="Ambient Heat">
        <port xsi:type="esdl:OutPort" id="GenericProducer38_OutPort1" connectedTo="HeatPump11_InPort4"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer39" name="Electricity Import">
        <port xsi:type="esdl:OutPort" id="GenericProducer39_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="GenericProducer40" name="Other Renewable ">
        <port xsi:type="esdl:OutPort" id="GenericProducer40_OutPort1" connectedTo="ElectricityNetwork5_InPort7"/>
      </asset>
      <asset xsi:type="esdl:GasDemand" id="GasDemand41" name="Gas Demand Mobility">
        <port xsi:type="esdl:InPort" id="GasDemand41_InPort1" connectedTo="GasNetwork1_OutPort8">
          <profile xsi:type="esdl:SingleValue" name="Gas Demand Mobility"/>
        </port>
      </asset>
      <asset xsi:type="esdl:EnergyDemand" id="_T97qcOwJEeixUYkhwQ73mw" name="Coal Final Demand">
        <port xsi:type="esdl:InPort" id="_T98RgOwJEeixUYkhwQ73mw" connectedTo="GenericProducer14_OutPort1">
          <profile xsi:type="esdl:SingleValue" name="Coal Final Demand"/>
        </port>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="_SH9x4OwKEeixUYkhwQ73mw" name="Oil Products Import">
        <port xsi:type="esdl:OutPort" id="_SH-Y8OwKEeixUYkhwQ73mw" connectedTo="_akl_8ewKEeixUYkhwQ73mw"/>
      </asset>
      <asset xsi:type="esdl:EnergyDemand" id="_akl_8OwKEeixUYkhwQ73mw" name="Oil Products Final Demand">
        <port xsi:type="esdl:InPort" id="_akl_8ewKEeixUYkhwQ73mw" connectedTo="_SH-Y8OwKEeixUYkhwQ73mw">
          <profile xsi:type="esdl:SingleValue" name="Oil Products Final Demand"/>
        </port>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="_Y0ue8PSIEeixUYkhwQ73mw" name="Central Heating Network">
        <port xsi:type="esdl:OutPort" id="_Y0vGAPSIEeixUYkhwQ73mw" connectedTo="HeatNetwork8_InPort2 HeatingDemand21_InPort1 HeatingDemand22_InPort1 HeatingDemand32_InPort1"/>
        <port xsi:type="esdl:InPort" id="_Y0vGAfSIEeixUYkhwQ73mw">
          <profile xsi:type="esdl:SingleValue" name="Central Heating Network"/>
        </port>
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
