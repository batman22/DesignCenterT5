%% This file is autogenerated ...

%% This file contains virtual vehicle configuration information.

%% This file is saved at time 03-Oct-2024 12:01:38
                     ConfigInfos.Version = '24.2.0.2712019 (R2024b)';
                   ConfigInfos.SessionID = 'ConfiguredVirtualVehicle.m';
                   ConfigInfos.LicStatus = [1,1,1,1,1,1,1,1,1];
                ConfigInfos.ProjPathText = 'C:\Users\grouleau\MATLAB\Projects\examples';
                    ConfigInfos.ProjPath = 'C:\Users\grouleau\MATLAB\Projects\examples\VirtualVehicle3\VirtualVehicle';
                 ConfigInfos.SessionName = 'ConfiguredVirtualVehicle';
                 ConfigInfos.XmlPathText = 'C:\Users\grouleau\MATLAB\Projects\examples\VVCCustomCatalog.xml';
               ConfigInfos.TemplateModel = 'VirtualVehicleTemplateArchitecture';
          ConfigInfos.TemplatePlantModel = 'SimscapePlantModelsArchitecture';
                 ConfigInfos.ConfigModel = 'ConfiguredVirtualVehicleModel';
            ConfigInfos.ConfigPlantModel = 'ConfiguredSimscapePlantModel';
                    ConfigInfos.VehClass = 'Passenger Vehicle';
                     ConfigInfos.VehArct = 'Electric Vehicle 2EM';
                      ConfigInfos.VehDyn = 1;
              ConfigInfos.PlantModelType = 'Simscape';
                  ConfigInfos.VehChassis = 'Vehicle Body 6DOF Longitudinal and Lateral';
%% Vehicle Configuration
ConfigInfos.FeatureVariantSelectedMap=containers.Map;
ConfigInfos.FeatureVariantSelectedMap('Active Differential Control') = 'No Control';
ConfigInfos.FeatureVariantSelectedMap('Axle Interconnect') = 'No Interconnect';
ConfigInfos.FeatureVariantSelectedMap('Battery Management System') = 'Battery Management System';
ConfigInfos.FeatureVariantSelectedMap('Body and Frame') = 'Vehicle Body 6DOF Longitudinal and Lateral';
ConfigInfos.FeatureVariantSelectedMap('Brake Control Unit') = 'Open Loop';
ConfigInfos.FeatureVariantSelectedMap('Brake System') = 'Brake System';
ConfigInfos.FeatureVariantSelectedMap('DC-DC Converter') = 'DC-DC Converter';
ConfigInfos.FeatureVariantSelectedMap('Drive Shaft Torque Routing') = 'Two Actuator AWD';
ConfigInfos.FeatureVariantSelectedMap('Driver') = 'Predictive Driver';
ConfigInfos.FeatureVariantSelectedMap('Drivetrain') = 'All Wheel Driven by 2EM';
ConfigInfos.FeatureVariantSelectedMap('Drivetrain Wheel Speed Route') = 'Bus';
ConfigInfos.FeatureVariantSelectedMap('Electric Machine 1') = 'Electric Vehicle 2EM - Simple Motor';
ConfigInfos.FeatureVariantSelectedMap('Electric Machine 2') = 'Electric Vehicle 2EM - Simple Motor';
ConfigInfos.FeatureVariantSelectedMap('Electric Machine 3') = 'Electric Vehicle 3EM Dual Front - Mapped Motor';
ConfigInfos.FeatureVariantSelectedMap('Electric Machine 4') = 'Electric Vehicle 4EM - Mapped Motor';
ConfigInfos.FeatureVariantSelectedMap('Electric Motors') = '2EM';
ConfigInfos.FeatureVariantSelectedMap('Energy Storage') = 'Detailed Battery';
ConfigInfos.FeatureVariantSelectedMap('Engine') = 'No Engine';
ConfigInfos.FeatureVariantSelectedMap('Engine Control Unit') = 'No Engine Controller';
ConfigInfos.FeatureVariantSelectedMap('Environment') = 'Ambient Conditions';
ConfigInfos.FeatureVariantSelectedMap('Final Drive') = 'Final Drive';
ConfigInfos.FeatureVariantSelectedMap('Front Axle Compliances') = 'Axle Compliances';
ConfigInfos.FeatureVariantSelectedMap('Front Brake Type') = 'Disc';
ConfigInfos.FeatureVariantSelectedMap('Front Differential System') = 'Open Differential';
ConfigInfos.FeatureVariantSelectedMap('Front Suspension') = 'Simscape Suspension Front';
ConfigInfos.FeatureVariantSelectedMap('Front Tire Data') = 'MF Tires Longitudinal Front';
ConfigInfos.FeatureVariantSelectedMap('Front Tire and Wheel') = 'Simscape MF Tires Front';
ConfigInfos.FeatureVariantSelectedMap('Hitch') = 'Hitch 3DOF';
ConfigInfos.FeatureVariantSelectedMap('Power Generation') = 'Power Generation';
ConfigInfos.FeatureVariantSelectedMap('Powertrain') = 'Electric Vehicle 2EM';
ConfigInfos.FeatureVariantSelectedMap('Rear Axle Compliances') = 'Axle Compliances';
ConfigInfos.FeatureVariantSelectedMap('Rear Brake Type') = 'Disc';
ConfigInfos.FeatureVariantSelectedMap('Rear Differential System') = 'Open Differential Rear';
ConfigInfos.FeatureVariantSelectedMap('Rear Suspension') = 'Simscape Suspension Rear';
ConfigInfos.FeatureVariantSelectedMap('Rear Tire Data') = 'MF Tires Longitudinal Rear';
ConfigInfos.FeatureVariantSelectedMap('Rear Tire and Wheel') = 'Simscape MF Tires Rear';
ConfigInfos.FeatureVariantSelectedMap('Refrigeration Loop') = 'System Level';
ConfigInfos.FeatureVariantSelectedMap('Sensor') = 'IMU Sensor';
ConfigInfos.FeatureVariantSelectedMap('Solver Configuration') = 'Local Solver';
ConfigInfos.FeatureVariantSelectedMap('Steering System') = 'Multibody Steering System';
ConfigInfos.FeatureVariantSelectedMap('Suspension System') = 'Suspension System';
ConfigInfos.FeatureVariantSelectedMap('Thermal Control Unit') = 'No Thermal Control';
ConfigInfos.FeatureVariantSelectedMap('Thermal System') = 'Constant Temperature';
ConfigInfos.FeatureVariantSelectedMap('Tire and Wheel System') = 'Tire and Wheel System';
ConfigInfos.FeatureVariantSelectedMap('Trailer') = 'No Trailer';
ConfigInfos.FeatureVariantSelectedMap('Trailer Body') = 'Trailer Body 3DOF';
ConfigInfos.FeatureVariantSelectedMap('Trailer Suspension') = 'Z Force Splice 3DOF';
ConfigInfos.FeatureVariantSelectedMap('Trailer Tire') = 'MF Tires Longitudinal';
ConfigInfos.FeatureVariantSelectedMap('Transmission') = 'Ideal Fixed Gear Transmission';
ConfigInfos.FeatureVariantSelectedMap('Transmission Control Unit') = 'Driver Pass Through';
ConfigInfos.FeatureVariantSelectedMap('Variant Source') = 'One Actuator FWD';
ConfigInfos.FeatureVariantSelectedMap('Vehicle Architecture') = 'Electric Vehicle 2EM';
ConfigInfos.FeatureVariantSelectedMap('Vehicle Control Unit') = 'EV 2EM';

%% User Modified Data
            ConfigInfos.DataModified=[];

%% Test Plan

             ConfigInfos.TestPlan{1}.Num = 1;
          ConfigInfos.TestPlan{1}.Source = 'Scenario.sldd';
            ConfigInfos.TestPlan{1}.Name = 'Increasing Steer';
           ConfigInfos.TestPlan{1}.Cycle = 'Disabled';
          ConfigInfos.TestPlan{1}.Driver = 'Predictive Driver';
       ConfigInfos.TestPlan{1}.Data{1,1} = 'DriverPreviewDist';
       ConfigInfos.TestPlan{1}.Data{1,2} = '4';
       ConfigInfos.TestPlan{1}.Data{2,1} = 'DriverTimeConst';
       ConfigInfos.TestPlan{1}.Data{2,2} = '0.3';
       ConfigInfos.TestPlan{1}.Data{3,1} = 'DriverFrontCornerStiff';
       ConfigInfos.TestPlan{1}.Data{3,2} = '40000';
       ConfigInfos.TestPlan{1}.Data{4,1} = 'DriverRearCornerStiff';
       ConfigInfos.TestPlan{1}.Data{4,2} = '40000';
       ConfigInfos.TestPlan{1}.Data{5,1} = 'PlntVehInitLatPos';
       ConfigInfos.TestPlan{1}.Data{5,2} = '0';

%% Selected Logging Signals
ConfigInfos.SelectedSignals = {
'Battery.BattInfo.BattSoc',...
'Battery.BattInfo.BattVolt',...
'Battery.BattInfo.BattCurr',...
'Body.BdyFrm.Cg.Vel.xdot',...
'Body.BdyFrm.Cg.Acc.ax',...
'Body.BdyFrm.Cg.Acc.ay',...
'Body.BdyFrm.Cg.Acc.az',...
'Driver.SteerFdbk',...
'Driver.AccelFdbk',...
'Driver.DecelFdbk',...
'Driver.GearFdbk',...
'EM.EMSpd',...
'EM.EMTrq',...
};

%% Finish