clear all
clc


%% load data
load('R123.mat');
R123=Expression1;
load('R132.mat');
R132=Expression1;
load('R213.mat');
R213=Expression1;
load('R231.mat');
R231=Expression1;
load('R312.mat');
R312=Expression1;
load('R321.mat');
R321=Expression1;


%% boundary plot
x=linspace(-10,10,100);
y=linspace(-10,10,100);
z=linspace(-10,10,100);
syms x
syms y
syms z

f = @(x,y,z) x-y;
fimplicit3(f,'EdgeColor','k','FaceColor',[0.7 0.9 0.6])
hold on

f = @(x,y,z) y-z;
fimplicit3(f,'FaceColor',[0.3 0.6 0.75])
hold on

f = @(x,y,z) z-x;
fimplicit3(f,'EdgeColor','k','FaceColor',[0.5 0.5 0.2])
hold on

%% plot data

plot3(R123(:,1),R123(:,2),R123(:,3),'o','MarkerFaceColor',[0 0.4470 0.7410],'MarkerEdgeColor',[0 0.4470 0.7410],'MarkerSize',3)
hold on
plot3(R132(:,1),R132(:,2),R132(:,3),'o','MarkerFaceColor',[0.8500 0.3250 0.0980],'MarkerEdgeColor',[0.8500 0.3250 0.0980],'MarkerSize',3)
hold on
plot3(R213(:,1),R213(:,2),R213(:,3),'o','MarkerFaceColor',[0.9290 0.6940 0.1250],'MarkerEdgeColor',[0.9290 0.6940 0.1250],'MarkerSize',3)
hold on
plot3(R231(:,1),R231(:,2),R231(:,3),'o','MarkerFaceColor',[0.4940 0.1840 0.5560],'MarkerEdgeColor',[0.4940 0.1840 0.5560],'MarkerSize',3)
hold on
plot3(R312(:,1),R312(:,2),R312(:,3),'o','MarkerFaceColor',[0.4660 0.6740 0.1880],'MarkerEdgeColor',[0.4660 0.6740 0.1880],'MarkerSize',3)
hold on
plot3(R321(:,1),R321(:,2),R321(:,3),'o','MarkerFaceColor',[0.3010 0.7450 0.9330],'MarkerEdgeColor',[0.3010 0.7450 0.9330],'MarkerSize',3)

grid on


legend({'$\mathrm{X}_1=\mathrm{X}_2$','$\mathrm{X}_2=\mathrm{X}_3$','$\mathrm{X}_3=\mathrm{X}_1$','$\mathcal{R}_{\{1,2,3\}}$','$\mathcal{R}_{\{1,3,2\}}$','$\mathcal{R}_{\{2,1,3\}}$','$\mathcal{R}_{\{2,3,1\}}$','$\mathcal{R}_{\{3,1,2\}}$','$\mathcal{R}_{\{3,2,1\}}$'},'interpreter','latex')

xlabel('$\mathrm{X}_1$','interpreter','latex') 
ylabel('$\mathrm{X}_2$','interpreter','latex') 
zlabel('$\mathrm{X}_3$','interpreter','latex')
Paxis = 2.1;
axis([-Paxis,Paxis,-Paxis,Paxis,-Paxis,Paxis])
grid on