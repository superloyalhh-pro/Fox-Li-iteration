clc;clear;close all;
%————初始化—————————————
lm=632.8e-9;    %波长
L=1000*lm;         %腔长
a=sqrt(10000)*lm;             %腔镜线宽
fprintf("菲涅尔数为%.2f\n",a^2/L/lm);
k=2*pi/lm;         %波失
N=1001;
x1=linspace(-a,a,N);%取1000个点积分
Un_n_1=ones(1,N);
Un_n_1(501:N)=-1;
Un_n_2=Un_n_1;
%————Fnum=10的结果——
for m=1:300
    for n=1:N
         x=x1(n);
         y= exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n_1;
         Un_n_2(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
    end
    Un_n_1= Un_n_2;
    Un_n_1=Un_n_1/max(abs(Un_n_1));
end
Un_1=abs(Un_n_1)/max(abs(Un_n_1));
Yn_1=angle(Un_n_1)-angle(Un_n_1(501));
%————Fnum=5的结果——
L=1000*lm;         %腔长
a=sqrt(5000)*lm;           %腔镜线宽
fprintf("菲涅尔数为%.2f\n",a^2/L/lm);
x1=linspace(-a,a,N);%取1000个点积分
Un_n_1(1:500)=1;
Un_n_1(501:N)=-1;
for m=1:300
    for n=1:N
         x=x1(n);
         y= exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n_1;
         Un_n_2(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
    end
    Un_n_1= Un_n_2;
    Un_n_1=Un_n_1/max(abs(Un_n_1));
end
Un_2=abs(Un_n_1)/max(abs(Un_n_1));
Yn_2=angle(Un_n_1)-angle(Un_n_1(501));
%————Fnum=15的结果——
L=1000*lm;         %腔长
a=sqrt(15000)*lm;           %腔镜线宽
fprintf("菲涅尔数为%.2f\n",a^2/L/lm);
x1=linspace(-a,a,N);%取1000个点积分
Un_n_1(1:500)=1;
Un_n_1(501:N)=-1;
for m=1:300
    for n=1:N
         x=x1(n);
         y= exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n_1;
         Un_n_2(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:N));
    end
    Un_n_1= Un_n_2;
    Un_n_1=Un_n_1/max(abs(Un_n_1));
end
Un_3=abs(Un_n_1)/max(abs(Un_n_1));
Yn_3=angle(Un_n_1)-angle(Un_n_1(501));
%———归一化————
x1 = x1/max(x1);
%———画出振幅特性————
figure(1);
plot(x1,Un_1,'r') ;
hold on; 
plot(x1,Un_2,'g') ;
hold on; 
plot(x1,Un_3,'b') ;
legend('N=10','N=5','N=15','Location','North');
xlabel('与镜面中心的相对距离(a.u.) N=a^2/Lλ');ylabel('相对强度(a.u.)');
%———画出相位特性————
figure(2);
plot(x1,Yn_1,'r') ;
hold on;
plot(x1,Yn_2,'g');
hold on; 
plot(x1,Yn_3,'b') ;
legend('N=10','N=5','N=15','Location','northeast');
xlabel('与镜面中心的相对距离(a.u.) N=a^2/Lλ');ylabel('相相对位');

