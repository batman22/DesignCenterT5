function cellInfo = vvbusingndsti4w(varargin) 
% VVBUSINGNDSTI4W returns a cell array containing bus object information 
% 
% Optional Input: 'false' will suppress a call to Simulink.Bus.cellToObject 
%                 when the MATLAB file is executed. 
% The order of bus element attributes is as follows:
%   ElementName, Dimensions, DataType, Complexity, SamplingMode, DimensionsMode, Min, Max, DocUnits, Description 

suppressObject = false; 
if nargin == 1 && islogical(varargin{1}) && varargin{1} == false 
    suppressObject = true; 
elseif nargin > 1 
    error('Invalid input argument(s) encountered'); 
end 

cellInfo = { ... 
  { ... 
    'VVCInGndSTI4w', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', ... 
    '0', {... 
{'X', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('m'), ''}; ...
{'Y', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('m'), ''}; ...
{'Z', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('m'), ''}; ...
{'lambda_mux', 4, 'double', 'real', 'Sample', 'Fixed', 0, [], sprintf('one'), ''}; ...
{'lambda_muy', 4, 'double', 'real', 'Sample', 'Fixed', 0, [], sprintf('one'), ''}; ...
{'VX', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('m/s'), ''}; ...
{'VY', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('m/s'), ''}; ...
{'VZ', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('m/s'), ''}; ...
{'DCM', [3 3 4], 'double', 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'OmegaX', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('rad/s'), ''}; ...
{'OmegaY', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('rad/s'), ''}; ...
{'OmegaZ', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('rad/s'), ''}; ...
{'dZdX', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('one'), ''}; ...
{'dZdY', 4, 'double', 'real', 'Sample', 'Fixed', [], [], sprintf('one'), ''}; ...
    } ...
  } ...
}'; 

if ~suppressObject 
    % Create bus objects in the MATLAB base workspace 
    Simulink.Bus.cellToObject(cellInfo) 
end 
