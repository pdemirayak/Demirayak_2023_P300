%This code was written by Pinar Demirayak in March 2023 to create correlation plot for
%cognitive tests between MCI and HC group.
clc;
clear all;

load('eegcognitivetests.mat');

mean_hcs=[mean(hc_mmse);mean(hc_sbst_total);mean(hc_sbst_ir);mean(hc_sbst_fr);mean(hc_sbst_tr);mean(hc_stroop);mean(hc_animal);mean(hc_bnt);mean(hc_dsfor);mean(hc_dsback)];
mean_mcis=[mean(mci_mmse);mean(mci_sbst_total);mean(mci_sbst_ir);mean(mci_sbst_fr);mean(mci_sbst_tr);mean(mci_stroop);mean(mci_animal);mean(hc_bnt);mean(mci_dsfor);mean(mci_dsback)];
means_together(1,1)=mean_mcis(1);means_together(1,2)=mean_hcs(1);means_together(2,1)=mean_mcis(2);means_together(2,2)=mean_hcs(2);means_together(3,1)=mean_mcis(3);means_together(3,2)=mean_hcs(3);means_together(4,1)=mean_mcis(4);means_together(4,2)=mean_hcs(4);means_together(5,1)=mean_mcis(5);means_together(5,2)=mean_hcs(5);means_together(6,1)=mean_mcis(6);means_together(6,2)=mean_hcs(6);means_together(7,1)=mean_mcis(7);means_together(7,2)=mean_hcs(7);means_together(8,1)=mean_mcis(8);means_together(8,2)=mean_hcs(8);means_together(9,1)=mean_mcis(9);means_together(9,2)=mean_hcs(9);means_together(10,1)=mean_mcis(10);means_together(10,2)=mean_hcs(10);  
std_hcs=[std(hc_mmse);std(hc_sbst_total);std(hc_sbst_ir);std(hc_sbst_fr);std(hc_sbst_tr);std(hc_stroop);std(hc_animal);std(hc_bnt);std(hc_dsfor);std(hc_dsback)];
std_mcis=[std(mci_mmse);std(mci_sbst_total);std(mci_sbst_ir);std(mci_sbst_fr);std(mci_sbst_tr);std(mci_stroop);std(mci_animal);std(hc_bnt);std(mci_dsfor);std(mci_dsback)];
h=bar(means_together);
hold on
redd=[0.64,0.08,0.18];bluee=[0,0.45,0.74];
h(1).FaceColor=redd;
h(2).FaceColor=bluee;
h(1).FaceAlpha=0.5;
h(2).FaceAlpha=0.5;
h(1).FaceAlpha=0.5;
h(2).FaceAlpha=0.5;

scatter(repmat(h(1).XEndPoints(1), length(mci_mmse), 1),mci_mmse,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(1).XEndPoints(2), length(mci_sbst_total), 1),mci_sbst_total,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(1).XEndPoints(3), length(mci_sbst_ir), 1),mci_sbst_ir,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(1).XEndPoints(4), length(mci_sbst_fr), 1),mci_sbst_fr,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(1).XEndPoints(5), length(mci_sbst_tr), 1),mci_sbst_tr,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(1).XEndPoints(6), length(mci_stroop), 1),mci_stroop,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(1).XEndPoints(7), length(mci_animal), 1),mci_animal,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(1).XEndPoints(8), length(mci_bnt), 1),mci_bnt,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(1).XEndPoints(9), length(mci_dsfor), 1),mci_dsfor,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(1).XEndPoints(10), length(mci_dsback), 1),mci_dsback,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)

scatter(repmat(h(2).XEndPoints(1), length(hc_mmse), 1),hc_mmse,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(2).XEndPoints(2), length(hc_sbst_total), 1),hc_sbst_total,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(2).XEndPoints(3), length(hc_sbst_ir), 1),hc_sbst_ir,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(2).XEndPoints(4), length(hc_sbst_fr), 1),hc_sbst_fr,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(2).XEndPoints(5), length(hc_sbst_tr), 1),hc_sbst_tr,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(2).XEndPoints(6), length(hc_stroop), 1),hc_stroop,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(2).XEndPoints(7), length(hc_animal), 1),hc_animal,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(2).XEndPoints(8), length(hc_bnt), 1),hc_bnt,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(2).XEndPoints(9), length(hc_dsfor), 1),hc_dsfor,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)
scatter(repmat(h(2).XEndPoints(10), length(hc_dsback), 1),hc_dsback,60,'MarkerFaceColor','none','MarkerEdgeColor','k','LineWidth',1)

errorbar(h(1).XEndPoints,mean_mcis,std_mcis,'LineStyle','none','Color','k','LineWidth',2)
errorbar(h(2).XEndPoints,mean_hcs,std_hcs,'LineStyle','none','Color','k','LineWidth',2)

xticklabels(["Mini-Mental State Examination" "Verbal Fluency Test-Total" "Verbal Fluency Test-IR" "Verbal Fluency Test-FR" "Verbal Fluency Test-TR" "Stroop Test-RI" "Animal Listing Test" "Boston Naming Test" "Digit Span-Forward" "Digit Span-Backward"])
ylabel("Test Scores",'FontSize',14,'FontName','arial')
set(findall(gcf,'-property','FontSize'),'FontSize',14)
set(findall(gcf,'-property','FontName'),'FontName','arial')