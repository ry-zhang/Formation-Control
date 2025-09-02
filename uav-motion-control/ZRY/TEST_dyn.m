clc;
close all;
clear;

dt=0.01;
duration = 20;
tspan = 0:dt:duration;%时间序列

[Rt,Rdt] = jtraj(0,0,tspan);% 生成偏航角轨迹
