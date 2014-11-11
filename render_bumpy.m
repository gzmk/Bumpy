% Author: Gizem Kucukoglu
% Nov 2014

% Initialize; 
clear; close all; clc; 

%% Render bump level 1 = 0.4cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy1_hemilight.dae';

mappingsFile = 'bumpy1_hemilightDefaultMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))


% Choose batch renderer options.

hints.imageWidth = 960;
hints.imageHeight = 960;
hints.renderer = 'Mitsuba';
hints.recipeName = ['Test-' date];


ChangeToWorkingFolder(hints);

nativeSceneFiles = MakeSceneFiles(parentSceneFile, '', mappingsFile, hints);
radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;
montageName = sprintf('%s (%s)', 'BumpyTestHDR', hints.renderer);
montageFile = [montageName '.png'];
[SRGBMontage, XYZMontage] = ...
    MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
ShowXYZAndSRGB([], SRGBMontage, montageName);

%% Render bump level 2 = 0.9cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy2_hemilight.dae';

mappingsFile = 'bumpy2_hemilightDefaultMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))


% Choose batch renderer options.

hints.imageWidth = 960;
hints.imageHeight = 960;
hints.renderer = 'Mitsuba';
hints.recipeName = ['Test-' date];


ChangeToWorkingFolder(hints);

nativeSceneFiles = MakeSceneFiles(parentSceneFile, '', mappingsFile, hints);
radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;
montageName = sprintf('%s (%s)', 'BumpyTestHDR', hints.renderer);
montageFile = [montageName '.png'];
[SRGBMontage, XYZMontage] = ...
    MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
ShowXYZAndSRGB([], SRGBMontage, montageName);

%% Render bump level 3 = 1.6cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy3_hemilight.dae';

mappingsFile = 'bumpy3_hemilightDefaultMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))


% Choose batch renderer options.

hints.imageWidth = 960;
hints.imageHeight = 960;
hints.renderer = 'Mitsuba';
hints.recipeName = ['Test-' date];


ChangeToWorkingFolder(hints);

nativeSceneFiles = MakeSceneFiles(parentSceneFile, '', mappingsFile, hints);
radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;
montageName = sprintf('%s (%s)', 'BumpyTestHDR', hints.renderer);
montageFile = [montageName '.png'];
[SRGBMontage, XYZMontage] = ...
    MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
ShowXYZAndSRGB([], SRGBMontage, montageName);

%% Render bump level 4 = 2.5cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy4_hemilight.dae';

mappingsFile = 'bumpy4_hemilightDefaultMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))


% Choose batch renderer options.

hints.imageWidth = 960;
hints.imageHeight = 960;
hints.renderer = 'Mitsuba';
hints.recipeName = ['Test-' date];

ChangeToWorkingFolder(hints);

nativeSceneFiles = MakeSceneFiles(parentSceneFile, '', mappingsFile, hints);
radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;
montageName = sprintf('%s (%s)', 'BumpyTestHDR', hints.renderer);
montageFile = [montageName '.png'];
[SRGBMontage, XYZMontage] = ...
    MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
ShowXYZAndSRGB([], SRGBMontage, montageName);

%% Render bump level 5 = 3.6cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy5_hemilight.dae';

mappingsFile = 'bumpy5_hemilightDefaultMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))


% Choose batch renderer options.

hints.imageWidth = 960;
hints.imageHeight = 960;
hints.renderer = 'Mitsuba';
hints.recipeName = ['Test-' date];


ChangeToWorkingFolder(hints);

nativeSceneFiles = MakeSceneFiles(parentSceneFile, '', mappingsFile, hints);
radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;
montageName = sprintf('%s (%s)', 'BumpyTestHDR', hints.renderer);
montageFile = [montageName '.png'];
[SRGBMontage, XYZMontage] = ...
    MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
ShowXYZAndSRGB([], SRGBMontage, montageName);

