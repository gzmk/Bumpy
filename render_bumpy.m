% Author: Gizem Kucukoglu
% Nov 2014

% Initialize; 
clear; close all; clc; 

%% Render bump level 1 = 0.4cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy1_hemilight.dae';
conditionsFile = 'bumpy_glossConditions.txt';
mappingsFile = 'bumpy_glossMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))

% which materials to use, [] means all
hints.whichConditions = [];

% Choose batch renderer options.
hints.imageWidth = 480;
hints.imageHeight = 480;
% hints.renderer = 'Mitsuba';
datetime=datestr(now);
datetime=strrep(datetime,':','_'); %Replace colon with underscore
datetime=strrep(datetime,'-','_');%Replace minus sign with underscore
datetime=strrep(datetime,' ','_');%Replace space with underscore
hints.recipeName = ['Test-Gloss-' datetime];

ChangeToWorkingFolder(hints);

% nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
% radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;

for renderer = {'Mitsuba'}
    
    % choose one renderer
    hints.renderer = renderer{1};
    
    % make 3 multi-spectral renderings, saved in .mat files
    nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
    radianceDataFiles = BatchRender(nativeSceneFiles, hints);
    
    % condense multi-spectral renderings into one sRGB montage
    montageName = sprintf('Bump1 (%s)', hints.renderer);
    montageFile = [montageName '.png'];
    [SRGBMontage, XYZMontage] = ...
        MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
    
    % display the sRGB montage
    ShowXYZAndSRGB([], SRGBMontage, montageName);
end

% montageName = sprintf('Bump1 (%s)', hints.renderer);
% montageFile = [montageName '.png'];
% [SRGBMontage, XYZMontage] = ...
%     MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
% ShowXYZAndSRGB([], SRGBMontage, montageName);

%% Render bump level 2 = 0.9cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy2_hemilight.dae';
conditionsFile = 'bumpy_glossConditions.txt';
mappingsFile = 'bumpy_glossMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))

% which materials to use, [] means all
hints.whichConditions = [];

% Choose batch renderer options.
hints.imageWidth = 960;
hints.imageHeight = 960;
% hints.renderer = 'Mitsuba';
datetime=datestr(now);
datetime=strrep(datetime,':','_'); %Replace colon with underscore
datetime=strrep(datetime,'-','_');%Replace minus sign with underscore
datetime=strrep(datetime,' ','_');%Replace space with underscore
hints.recipeName = ['Test-' datetime];

ChangeToWorkingFolder(hints);

% nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
% radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;

for renderer = {'Mitsuba'}
    
    % choose one renderer
    hints.renderer = renderer{1};
    
    % make 3 multi-spectral renderings, saved in .mat files
    nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
    radianceDataFiles = BatchRender(nativeSceneFiles, hints);
    
    % condense multi-spectral renderings into one sRGB montage
    montageName = sprintf('Bump2 (%s)', hints.renderer);
    montageFile = [montageName '.png'];
    [SRGBMontage, XYZMontage] = ...
        MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
    
    % display the sRGB montage
    ShowXYZAndSRGB([], SRGBMontage, montageName);
end

% montageName = sprintf('%s (%s)', 'Level2', hints.renderer);
% montageFile = [montageName '.png'];
% [SRGBMontage, XYZMontage] = ...
%     MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
% ShowXYZAndSRGB([], SRGBMontage, montageName);

%% Render bump level 3 = 1.6cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy3_hemilight.dae';
conditionsFile = 'bumpy_glossConditions.txt';
mappingsFile = 'bumpy_glossMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))

% which materials to use, [] means all
hints.whichConditions = [];

% Choose batch renderer options.
hints.imageWidth = 960;
hints.imageHeight = 960;
% hints.renderer = 'Mitsuba';
datetime=datestr(now);
datetime=strrep(datetime,':','_'); %Replace colon with underscore
datetime=strrep(datetime,'-','_');%Replace minus sign with underscore
datetime=strrep(datetime,' ','_');%Replace space with underscore
hints.recipeName = ['Test-' datetime];

ChangeToWorkingFolder(hints);

% nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
% radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;

for renderer = {'Mitsuba'}
    
    % choose one renderer
    hints.renderer = renderer{1};
    
    % make 3 multi-spectral renderings, saved in .mat files
    nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
    radianceDataFiles = BatchRender(nativeSceneFiles, hints);
    
    % condense multi-spectral renderings into one sRGB montage
    montageName = sprintf('Bump2 (%s)', hints.renderer);
    montageFile = [montageName '.png'];
    [SRGBMontage, XYZMontage] = ...
        MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
    
    % display the sRGB montage
    ShowXYZAndSRGB([], SRGBMontage, montageName);
end

% montageName = sprintf('%s (%s)', 'Level3', hints.renderer);
% montageFile = [montageName '.png'];
% [SRGBMontage, XYZMontage] = ...
%     MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
% ShowXYZAndSRGB([], SRGBMontage, montageName);

%% Render bump level 4 = 2.5cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy4_hemilight.dae';
conditionsFile = 'bumpy_glossConditions.txt';
mappingsFile = 'bumpy_glossMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))

% which materials to use, [] means all
hints.whichConditions = [];

% Choose batch renderer options.
hints.imageWidth = 960;
hints.imageHeight = 960;
% hints.renderer = 'Mitsuba';
datetime=datestr(now);
datetime=strrep(datetime,':','_'); %Replace colon with underscore
datetime=strrep(datetime,'-','_');%Replace minus sign with underscore
datetime=strrep(datetime,' ','_');%Replace space with underscore
hints.recipeName = ['Test-' datetime];

ChangeToWorkingFolder(hints);

% nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
% radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;

for renderer = {'Mitsuba'}
    
    % choose one renderer
    hints.renderer = renderer{1};
    
    % make 3 multi-spectral renderings, saved in .mat files
    nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
    radianceDataFiles = BatchRender(nativeSceneFiles, hints);
    
    % condense multi-spectral renderings into one sRGB montage
    montageName = sprintf('Bump2 (%s)', hints.renderer);
    montageFile = [montageName '.png'];
    [SRGBMontage, XYZMontage] = ...
        MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
    
    % display the sRGB montage
    ShowXYZAndSRGB([], SRGBMontage, montageName);
end

% montageName = sprintf('%s (%s)', 'Level4', hints.renderer);
% montageFile = [montageName '.png'];
% [SRGBMontage, XYZMontage] = ...
%     MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
% ShowXYZAndSRGB([], SRGBMontage, montageName);

%% Render bump level 5 = 3.6cm
% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/users2/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = 'bumpy5_hemilight.dae';
conditionsFile = 'bumpy_glossConditions.txt';
mappingsFile = 'bumpy_glossMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))

% which materials to use, [] means all
hints.whichConditions = [];

% Choose batch renderer options.
hints.imageWidth = 480;
hints.imageHeight = 480;
% hints.renderer = 'Mitsuba';
datetime=datestr(now);
datetime=strrep(datetime,':','_'); %Replace colon with underscore
datetime=strrep(datetime,'-','_');%Replace minus sign with underscore
datetime=strrep(datetime,' ','_');%Replace space with underscore
hints.recipeName = ['Test-' datetime];

ChangeToWorkingFolder(hints);

% nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
% radianceDataFiles = BatchRender(nativeSceneFiles, hints);

%comment all this out
toneMapFactor = 10;
isScale = true;

for renderer = {'Mitsuba'}
    
    % choose one renderer
    hints.renderer = renderer{1};
    
    % make 3 multi-spectral renderings, saved in .mat files
    nativeSceneFiles = MakeSceneFiles(parentSceneFile, conditionsFile, mappingsFile, hints);
    radianceDataFiles = BatchRender(nativeSceneFiles, hints);
    
    % condense multi-spectral renderings into one sRGB montage
    montageName = sprintf('Bump2 (%s)', hints.renderer);
    montageFile = [montageName '.png'];
    [SRGBMontage, XYZMontage] = ...
        MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
    
    % display the sRGB montage
    ShowXYZAndSRGB([], SRGBMontage, montageName);
end

% montageName = sprintf('%s (%s)', 'Level5', hints.renderer);
% montageFile = [montageName '.png'];
% [SRGBMontage, XYZMontage] = ...
%     MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
% ShowXYZAndSRGB([], SRGBMontage, montageName);

