clc;
clear all;

load('eeg_fig3_data.mat');
matrix=subplot(2,3,1),imagesc(mci(:,1:6));
xticks([ ]);yticks([ ]);caxis([-0.5 0.5]);
matrix=subplot(2,3,2),imagesc(hc(:,1:6));
xticks([ ]);yticks([ ]);caxis([-0.5 0.5]);
matrix=subplot(2,3,3),imagesc(whole(:,1:6));
xticks([ ]);yticks([ ]);caxis([-0.5 0.5]);
matrix=subplot(2,3,4),imagesc(mci2(:,1:6));
xticks([ ]);yticks([ ]);caxis([-0.5 0.5]);
matrix=subplot(2,3,5),imagesc(hc2(:,1:6));
xticks([ ]);yticks([ ]);caxis([-0.5 0.5]);
matrix=subplot(2,3,6),imagesc(whole2(:,1:6));
colormap jet;
caxis([-0.5 0.5]);
xticks([ ]);yticks([ ]);