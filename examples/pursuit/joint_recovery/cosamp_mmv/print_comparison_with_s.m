close all;
clear all;
clc;
rng('default');

png_export = true;
pdf_export = false;

mf = spx.graphics.Figures();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mf.new_figure('Recovery probability with S for different MMV recovery algorithms');

load ('bin/success_with_s_comparison.mat');

hold all;
legends = cell(1, 4);

plot(Ss, success_with_s.ra_ormp, '-+');
legends{1} = 'RA-ORMP';
% plot(Ss, success_with_s.ra_omp, '-o');
% legends{2} = 'RA-OMP';
plot(Ss, success_with_s.somp, '-s');
legends{2} = 'SOMP';
plot(Ss, success_with_s.cosamp_mmv, '-d');
legends{3} = 'CoSaMP-MMV';
plot(Ss, success_with_s.ra_cosamp, '-x');
legends{4} = 'RA-CoSaMP';

grid on;
xlabel('Number of signals');
ylabel('Recovery Probability');
legend(legends, 'Location', 'southeast');
title('Comparison of recovery performance for MMV algorithms');

