% 两个问题：基模为什么N<0.5的时候分布很平滑?TEM01模当N~5以下时没有理论分布

clc;clear;close all;
%————初始化—————————————
lm=632.8e-9;    %波长
L=100*lm;         %腔长
a=25*lm;           %腔镜线宽
fprintf("菲涅尔数为%.2f\n",a^2/L/lm);
k=2*pi/lm;         %波失
N = 1001;       %积分点数
x1=linspace(-a,a,N);%取1000个点积分
Un_n=zeros(1,N);
Un_n_1=Un_n;
%———求解第一次的迭代结果——————
for m=1:N
    x=x1(m);
    y=exp((-1i*k*(x-x1).^2)/(2*L));
    Un_n(m)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
end
%————对第一次的归一化————
a=abs(Un_n);%求解振幅
yabsmax=max(a);%振幅最大值
Un_n=Un_n/yabsmax;%归一化
Un_2=a/yabsmax;%振幅归一化
Yn_2=angle(Un_n)-angle(Un_n(501));%相位分布
%————迭代299次重复第一次过程——
for m=1:299
    for n=1:N
         x=x1(n);
         y= exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n;
         Un_n_1(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
    end
     Un_n= Un_n_1;
     a=abs(Un_n);
     yabsmax=max(a);
     Un_n=Un_n/yabsmax;
end
Un_300=a/yabsmax;
Yn_300=angle(Un_n)-angle(Un_n(501));
%————迭代第300次重复第一次过程——
for n=1:N
    x=x1(n);
    y= exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n;
    Un_n_1(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
end
Un_n= Un_n_1;
a=abs(Un_n);
yabsmax=max(a);
Un_n=Un_n/yabsmax;
Un_301= a/yabsmax;
Yn_301=angle(Un_n)-angle(Un_n(501));
%———归一化————
x1 = x1/max(x1);
%———画出振幅特性————
figure(1);
plot(x1,Un_2,'r') ;
hold on; 
plot(x1,Un_300,'g') ;
hold on; 
plot(x1,Un_301,'b') ;
legend('第1次渡越后','第300次渡越后','第301次渡越后','Location','South');
xlabel('与镜面中心的相对距离(a.u.) a=25λ,L=100λ,a^2/Lλ=6.25');ylabel('相对强度(a.u.)');
%———画出相位特性————
figure(2);
plot(x1,Yn_2,'r') ;
hold on;
plot(x1,Yn_300,'g');
hold on; 
plot(x1,Yn_301,'b') ;
legend('第1次渡越后','第300次渡越后','第301次渡越后','Location','South');
xlabel('与镜面中心的相对距离(a.u.) a=25λ,L=100λ,a^2/Lλ=6.25');ylabel('相相对位');
