function autoblkVVCSetScnType()

%   Copyright 2024 The MathWorks, Inc.

block=gcb;
simstopped = autoblkschecksimstopped(block);
if ~simstopped
    return;
end
maskobj = Simulink.Mask.get(block);
scenario=maskobj.Parameters(1);
maneuver=maskobj.Parameters(2);
dcsource=maskobj.Parameters(3);
engine3d=maskobj.Parameters(4);

DriveCycleTestsItems={'Drive Cycle','Wide Open Throttle'};
VehicleDynamicsManeuverItems={'Increasing Steer', 'Swept Sine', 'Sine with Dwell', 'Fishhook', 'Braking','Double Lane Change', 'Constant Radius'};

if strcmp(scenario.Value,'Drive Cycle Tests')
    scenarioitems=DriveCycleTestsItems;
    %set engine 3d
    engine3d.set('Value','Disabled','Enabled','off');
else
    scenarioitems=VehicleDynamicsManeuverItems;
    %set engine 3d
    engine3d.set('Enabled','on');
end

if isempty(find(strcmp(maneuver.Value,scenarioitems), 1))
    if strcmp(dcsource.Value,'Wide Open Throttle (WOT)')
        maneuver.set('TypeOptions',scenarioitems,'Value','Wide Open Throttle');
    elseif strcmp(engine3d.Enabled,'off')
        maneuver.set('TypeOptions',scenarioitems,'Value','Drive Cycle');
    else
        maneuver.set('TypeOptions',scenarioitems,'Value',scenarioitems{1});
    end
else
    maneuver.set('TypeOptions',scenarioitems);
end

autoblkVVCSetManType();
end