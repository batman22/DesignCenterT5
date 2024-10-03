function autoblkVVCSetupScenarioMask()

%   Copyright 2024 The MathWorks, Inc.

block=gcb;

simstopped = autoblkschecksimstopped(block);
if ~simstopped
    return;
end

maskobj = Simulink.Mask.get(block);
%set maneuver options
scenario=maskobj.Parameters(1);
maneuver=maskobj.Parameters(2);
dcsource=maskobj.Parameters(3);
engine3d=maskobj.Parameters(4);
driver=maskobj.Parameters(5);
licStatus_vdbs=dig.isProductInstalled('Vehicle Dynamics Blockset')&&license('test','vehicle_dynamics_blockset');
if ~licStatus_vdbs
    scenario.set('TypeOptions',{'Drive Cycle Tests'},'Value','Drive Cycle Tests');
    maneuver.set('TypeOptions',{'Drive Cycle','Wide Open Throttle'});
    driver.set('TypeOptions',{'Longitudinal Driver'},'Value','Longitudinal Driver');
    engine3d.set('Value','Disabled','Enabled','off');
    dcsource.set('Enabled','on');
else
    
    if strcmp(maneuver.Value,'Drive Cycle')||strcmp(maneuver.Value,'Wide Open Throttle')
        scenario.set('TypeOptions',{'Drive Cycle Tests','Vehicle Dynamics Maneuver'},'Value','Drive Cycle Tests');
        items={'Drive Cycle','Wide Open Throttle'};

        engine3d.set('Enabled','off');
        dcsource.set('Enabled','on');
    else
        scenario.set('TypeOptions',{'Drive Cycle Tests','Vehicle Dynamics Maneuver'},'Value','Vehicle Dynamics Maneuver');
        items={'Increasing Steer', 'Swept Sine', 'Sine with Dwell', 'Fishhook', 'Braking','Double Lane Change', 'Constant Radius'};
        engine3d.set('Enabled','on');
        dcsource.set('Enabled','off');
    end

    if isempty(find(strcmp(maneuver.Value,items), 1))
        maneuver.set('TypeOptions',items,'Value',items{1});
    else
        maneuver.set('TypeOptions',items);
    end

end

autoblkVVCSetScnType();
end