clc;clear;close all;
%————初始化—————————————
lm=632.8e-9;    %波长
L=100*lm;         %腔长
a=25*lm;             %腔镜线宽
fprintf("菲涅尔数为%.2f\n",a^2/L/lm);
k=2*pi/lm;         %波失
N=500;
x1=linspace(-a,a,N);%取1000个点积分
Un_n_1=ones(1,N);
Un_n_2=Un_n_1;
%————c=0的结果——
fprintf("误差c=0\n");
c=0;
for m=1:200
    for n=1:N
         x=x1(n);
         y= exp(-1i*k*c/a*(x+x1)).*exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n_1;
         Un_n_2(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
    end
    Un_n_1= Un_n_2;
    Un_n_1=Un_n_1/max(abs(Un_n_1));
end
Un_1=abs(Un_n_1)/max(abs(Un_n_1));
Yn_1=angle(Un_n_1)-angle(Un_n_1(N));
for n=1:N
    if Yn_1(n)<0
        Yn_1(n)=Yn_1(n)+2*pi;
    end
end
%————c=λ/144的结果——
fprintf("误差c=λ/144\n");
Un_n_1(1:N)=1;
c=lm/144;
for m=1:200
    for n=1:N
         x=x1(n);
         y= exp(-1i*k*c/a*(x+x1)).*exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n_1;
         Un_n_2(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
    end
    Un_n_1= Un_n_2;
    Un_n_1=Un_n_1/max(abs(Un_n_1));
end
Un_2=abs(Un_n_1)/max(abs(Un_n_1));
Yn_2=angle(Un_n_1)-angle(Un_n_1(N));
for n=1:N
    if Yn_2(n)<0
        Yn_2(n)=Yn_2(n)+2*pi;
    end
end
%————λ/72的结果——
fprintf("误差c=λ/72\n");
Un_n_1(1:N)=1;
c=lm/72;
for m=1:200
    for n=1:N
         x=x1(n);
         y= exp(-1i*k*c/a*(x+x1)).*exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n_1;
         Un_n_2(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
    end
    Un_n_1= Un_n_2;
    Un_n_1=Un_n_1/max(abs(Un_n_1));
end
Un_3=abs(Un_n_1)/max(abs(Un_n_1));
Yn_3=angle(Un_n_1)-angle(Un_n_1(N));
for n=1:N
    if Yn_3(n)<0
        Yn_3(n)=Yn_3(n)+2*pi;
    end
end
%————λ/32的结果——
fprintf("误差c=λ/32\n");
Un_n_1(1:N)=1;
c=lm/32;
for m=1:270
    for n=1:N
         x=x1(n);
         y= exp(-1i*k*c/a*(x+x1)).*exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n_1;
         Un_n_2(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
    end
    Un_n_1= Un_n_2;
    Un_n_1=Un_n_1/max(abs(Un_n_1));
end
Un_4=abs(Un_n_1)/max(abs(Un_n_1));
Yn_4=angle(Un_n_1)-angle(Un_n_1(N));
for n=1:N
    if Yn_4(n)<0
        Yn_4(n)=Yn_4(n)+2*pi;
    end
end
%———归一化————
x2 = x1/max(x1);
%———画出振幅特性————
figure(1);
plot(x2,Un_1,'r') ;
hold on; 
plot(x2,Un_2,'g') ;
hold on; 
plot(x2,Un_3,'b') ;
hold on; 
plot(x2,Un_4,'m') ;
legend('δ=0','δ=λ/144','δ=λ/72','δ=λ/32','Location','south');
xlabel('与镜面中心的相对距离(a.u.) N=a^2/Lλ');ylabel('相对强度(a.u.)');
%———画出相位特性————
figure(2);
plot(x2,Yn_1,'r') ;
hold on;
plot(x2,Yn_2,'g');
hold on; 
plot(x2,Yn_3,'b') ;
hold on; 
plot(x2,Yn_4,'m') ;
legend('δ=0','δ=λ/144','δ=λ/72','δ=λ/32','Location','northeast');
xlabel('与镜面中心的相对距离(a.u.) N=a^2/Lλ');ylabel('相相对位');

