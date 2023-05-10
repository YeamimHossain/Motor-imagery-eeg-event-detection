% Clean all to make a fresh strat
clc; close all; clear all;
%% Subject Loading
load("subject_left_01.mat");
load("subject_left_03.mat");
load("subject_left_04.mat");
load("subject_left_05.mat");
load("subject_left_06.mat");
load("subject_left_09.mat");
load("subject_left_10.mat");
load("subject_left_12.mat");
load("subject_left_14.mat");
load("subject_left_15.mat");
load("subject_left_21.mat");
load("subject_left_23.mat");
load("subject_left_25.mat");
load("subject_left_26.mat");
load("subject_left_28.mat");
load("subject_left_31.mat");
load("subject_left_35.mat");
load("subject_left_36.mat");
load("subject_left_39.mat");
load("subject_left_41.mat");
load("subject_left_43.mat");
load("subject_left_44.mat");
load("subject_left_46.mat");
load("subject_left_48.mat");
load("subject_left_49.mat");
load("subject_left_50.mat");
load("subject_left_52.mat");

%% Data labeling code
n_t = 14000;    % Total time(s) for a single subject
LabelsIN=zeros(n_t,1);
for n_l = 3:7:n_t 
    LabelsIN(n_l:n_l+2,:)=1;
end

%% Feature Selection
% Normalization of the data -1  to 1
n_sub = [S05_features_left; S05_features_left; S21_features_left; S23_features_left;..........
    S31_features_left; S35_features_left; S39_features_left];
n_sub = double(n_sub);
data_norm = normalize(n_sub,'range',[-1 1]);
DataIN=data_norm;
Label = LabelsIN(1:4900,1);
 
% MRMR feature ranking
Ranked_features = fscmrmr(DataIN,Label);

% Forward feature selection (FFS)
final_feat = forward_feat_Sel(DataIN,Ranked_features,Label)

%% Configure data for Training and Testing
% 20 Subjects feature selection
S20S_MI_left = [S01_features_left; S03_features_left; S04_features_left;........
    S06_features_left; S09_features_left; S10_features_left; S14_features_left;.....
    S15_features_left; S25_features_left; S26_features_left; S28_features_left;.....
    S36_features_left; S41_features_left; S43_features_left; S44_features_left;.....
    S46_features_left; S48_features_left; S49_features_left; S50_features_left;.....
    S52_features_left];
S20S_MI_left = double(S20S_MI_left);

% Normalization of the data -1  to 1
normalized_data = normalize(S20S_MI_left,'range',[-1 1]);

for rd_col = 1:size(final_feat,2)
    rdcv = final_feat(1,rd_col);
    final_features_l(:,rd_col) = normalized_data(:,rdcv);
end
rft_data = [LabelsIN final_features_l];

% Selected features picking from the main data
t_sub = 20; % Total number of Subjects
time = 700;
for sub_cell = 1:t_sub
    each_sub = rft_data(time*(sub_cell-1)+1:sub_cell*time,:);
    ALL_subj{sub_cell} = each_sub;
end
