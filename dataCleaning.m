function dataOut = dataCleaning( dataIn )
% Copyright 2017 The MathWorks, Inc.

%% Set Variable Names
varName = {'Unit', 'Time', 'Setting1', 'Setting2', 'Setting3', 'FanInletTemp',...
    'LPCOutletTemp', 'HPCOutletTemp', 'LPTOutletTemp', 'FanInletPres', ...
    'BypassDuctPres', 'TotalHPCOutletPres', 'PhysFanSpeed', 'PhysCoreSpeed', ...
    'EnginePresRatio', 'StaticHPCOutletPres', 'FuelFlowRatio', 'CorrFanSpeed', ...
    'CorrCoreSpeed', 'BypassRatio', 'BurnerFuelAirRatio', 'BleedEnthalpy', ...
    'DemandFanSpeed', 'DemandCorrFanSpeed', 'HPTCoolantBleed', 'LPTCoolantBleed'};
dataIn.Properties.VariableNames = varName;
dataIn.Properties.VariableNames = varName;

%% Extract Effective Sensors
selectedVarName = varName([1:2, 7:9, 12:14, 16:20, 22, 25:26]);
NumOfUnits = 100;

dataIn = dataIn(:,selectedVarName);
for kk = 1:NumOfUnits
    idx = dataIn.Unit == kk;
    dataIn.Time(idx) = (dataIn.Time(idx) - max(dataIn.Time(idx)));
end

%% Labeling the condition into 4 categories based on the remaining cycles till failure occurs 
% - 0~50 cycles   : urgent
% - 51~125 cycles : short
% - 126~200 cycles: medium
% - 201~          : long
catname = {'urgent','short','medium','long'};
label = discretize(-dataIn.Time, [0 51 126 201 inf],'categorical',catname);
dataIn.Label = label;

dataOut = dataIn;

end

