% Author: Gizem Kucukoglu
% April 2015

function render_bumpy_fits(var, bump_level)

%% Render bumpy spheres

% Setup conditions file
fixed1 = var(1);
fixed2 = var(2);


ro_s = ['300:',num2str(fixed1/(fixed1+fixed2)),' 800:',num2str(fixed1/(fixed1+fixed2))];
ro_d = ['300:', num2str(fixed2/(fixed1+fixed2)), ' 800:', num2str(fixed2/(fixed1+fixed2))];
alphau = var(3); % alphau and alphav should always be the same value for isotropic brdf
light = ['300:', num2str(fixed1+fixed2), ' 800:',num2str(fixed1+fixed2)];
mycell = {ro_s, alphau};

T = cell2table(mycell, 'VariableNames', {'ro_s' 'alphau'});
writetable(T,'/Local/Users/gizem/Documents/Research/Bumpy/bumpy_fitrender_Conditions.txt','Delimiter','\t')

% Set preferences
setpref('RenderToolbox3', 'workingFolder', '/Local/Users/gizem/Documents/Research/Bumpy');

% use this scene and condition file. 
parentSceneFile = ['bumpy',num2str(bump_level),'_hemilight.dae'];
conditionsFile = 'bumpy_fitrender_Conditions.txt';
mappingsFile = 'bumpy_fitrender_DefaultMappings.txt';

% Make sure all illuminants are added to the path. 
addpath(genpath(pwd))

% which materials to use, [] means all
hints.whichConditions = [];

% Choose batch renderer options.
hints.imageWidth = 960;
hints.imageHeight = 960;
datetime=datestr(now);
datetime=strrep(datetime,':','_'); %Replace colon with underscore
datetime=strrep(datetime,'-','_');%Replace minus sign with underscore
datetime=strrep(datetime,' ','_');%Replace space with underscore
hints.recipeName = ['Bump-Level',num2str(bump_level),'-' datetime];

ChangeToWorkingFolder(hints);

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
    montageName = sprintf('Bump%d (%s)', bump_level, hints.renderer);
    montageFile = [montageName '.png'];
    [SRGBMontage, XYZMontage] = ...
        MakeMontage(radianceDataFiles, montageFile, toneMapFactor, isScale, hints);
    
    % display the sRGB montage
    ShowXYZAndSRGB([], SRGBMontage, montageName);
end


