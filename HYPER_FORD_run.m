
%% HYPER_OP Toolbox: Main File

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This code is written by Veysel Yildiz, PhD candidate at The University of Sheffield  %
% HYPER_OP Toolbox is introduced in the paper by Yildiz et al. (2024)                    %                                         %
% titled "Robust and Computationally Efficient Design for Run-of-River Hydropower        %                                                                       %
% submitted to EMS. The project is licensed under the MIT License.                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define case study names and their corresponding indices
% Case Study 1: Besik RoR
% Case Study 2: Tepe RoR
% Case Study 3: Karacay RoR
% Case Study 4: Kaplan RoR
% Case Study 5: Buyukdere RoR

case_names = {'Besik', 'Tepe', 'Karacay', 'Kaplan', 'Buyukdere'};
num_cases = numel(case_names);

%% 1- Multi-objective Optimization  
%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$%

Select_Case_Study = 1; % Select the case study to run (1 to num_cases)

%To change sampling size and project parameters, do the changes on the "run_AMALGAM.m" file.

% Add path to multi-objective optimization folder
addpath('MO_optimization');

% Install Amalgam
run('MO_optimization/install_AMALGAM.m');

% Return to main directory
cd('../'); 

% Check if the selected case study index is within valid range
if Select_Case_Study < 1 || Select_Case_Study > num_cases
    error('Invalid case study index. Please select a number between 1 and %d.', num_cases);
end

% Define selected case study
case_folder = [case_names{Select_Case_Study}, '_hyperOP'];

% Run selected case study
run(fullfile(case_folder, 'run_AMALGAM.m'));

run('postprocessor.m');

%%
% clc 
% clear
%% 2- Robustness Analysis           
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
case_names = {'Besik', 'Tepe', 'Karacay', 'Kaplan', 'Buyukdere'};
num_cases = numel(case_names);

Select_Case_Study = 1; % Select the case study to run (1 to num_cases)

% Return to main directory
cd('../'); 

% Add path to robustness analysis folder
addpath('Robustness_Analysis');
addpath('Robustness_Analysis/input');

% Check if the selected case study index is within valid range
if Select_Case_Study < 1 || Select_Case_Study > num_cases
    error('Invalid case study index. Please select a number between 1 and %d.', num_cases);
end

% Define selected case study
case_2run = ['RUN_',case_names{Select_Case_Study}, '_sampling.m'];

% Run selected case study
run(case_2run);

run('RA_quantification'); %rNPV100 and rPB100 are the robustness of each alternative design 

