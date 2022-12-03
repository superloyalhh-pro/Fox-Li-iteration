clc;clear;close all;
%————初始化—————————————
lm=632.8e-9;    %波长
L=100*lm;         %腔长
a=25*lm;           %腔镜线宽
fprintf("菲涅尔数为%.2f\n",a^2/L/lm);
k=2*pi/lm;         %波失
N=1001;
x1=linspace(-a,a,N);%取1000个点积分
Un_n_1=ones(1,N);
Un_n_2=Un_n_1;
amp=zeros(1,300);
%————Fnum=6.25的结果——
for m=1:300
    for n=1:N
         x=x1(n);
         y= exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n_1;
         Un_n_2(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
    end
    Un_n_1= Un_n_2;
    Un_n_1=Un_n_1/max(abs(Un_n_1));
    Un_1=abs(Un_n_1)/max(abs(Un_n_1));
    amp(m)=Un_1(N);
end
%———画出振幅特性————
figure(1);
plot(25:300,amp(25:300),'r') ;
axis([25 300 0.05 0.35]);
xlabel('迭代轮次 N=a^2/Lλ=6.25');ylabel('相对强度(a.u.)');

