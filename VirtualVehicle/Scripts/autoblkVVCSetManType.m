function autoblkVVCSetManType()

%   Copyright 2024 The MathWorks, Inc.

block=gcb;
simstopped = autoblkschecksimstopped(block);
if ~simstopped
    return;
end
maskobj = Simulink.Mask.get(block);

maneuver=maskobj.Parameters(2);
dcsource=maskobj.Parameters(3);
engine3d=maskobj.Parameters(4);
driver=maskobj.Parameters(5);
licStatus_vdbs=dig.isProductInstalled('Vehicle Dynamics Blockset')&&license('test','vehicle_dynamics_blockset');
if licStatus_vdbs
    driveritems={'Longitudinal Driver','Predictive Driver'};
else
    driveritems={'Longitudinal Driver'};
end

switch maneuver.Value
    case 'Drive Cycle'
        dcsource.set('Enabled','on','Visible','on');
        %set maneuver
        dcsource.Prompt='Drive cycle source:';
        items=VirtualAssembly.getcyclename('');
        if isempty(find(strcmp(dcsource.Value,items), 1))
            dcsource.set('TypeOptions',items,'Value',items{1});
        else
            dcsource.set('TypeOptions',items);
        end

        %set driver
        if isempty(find(strcmp(driver.Value,driveritems), 1))
            driver.set('TypeOptions',driveritems,'Value',driveritems{1});
        else
            driver.set('TypeOptions',driveritems);
        end


    case 'Wide Open Throttle'
        dcsource.set('Enabled','on','Visible','on');
        dcsource.Prompt='Drive cycle source:';
        dcsource.set('TypeOptions','Wide Open Throttle (WOT)','Value','Wide Open Throttle (WOT)');

        if isempty(find(strcmp(driver.Value,driveritems), 1))
            driver.set('TypeOptions',driveritems,'Value',driveritems{1});
        else
            driver.set('TypeOptions',driveritems);
        end

    case {'Double Lane Change','Constant Radius'}
        dcsource.set('Enabled','off','Visible','off');
        %set engine 3d
        engine3d.set('Enabled','on');
        driver.set('TypeOptions',{'Predictive Stanley Driver'},'Value','Predictive Stanley Driver');
    otherwise
        dcsource.set('Enabled','off','Visible','off');
        engine3d.set('Enabled','on');
        driver.set('TypeOptions',{'Predictive Driver'},'Value','Predictive Driver');
end
end