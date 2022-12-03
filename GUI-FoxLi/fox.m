
function varargout = fox(varargin)
%      FOX M-file for fox.fig
%      FOX, by itself, creates a new FOX or raises the existing
%      singleton*.
%
%      H = FOX returns the handle to a new FOX or the handle to
%      the existing singleton*.
%
%      FOX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FOX.M with the given input arguments.
%
%      FOX('Property','Value',...) creates a new FOX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fox_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fox_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help fox

% Last Modified by GUIDE v2.5 26-May-2011 23:53:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fox_OpeningFcn, ...
                   'gui_OutputFcn',  @fox_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT



% --- Executes just before fox is made visible.
function fox_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fox (see VARARGIN)

% Choose default command line output for fox
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fox wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fox_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a
%        double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
%��ȡǻ��
global style;
style=get(hObject,'Value');
if style==1
    set(handles.edit3,'enable','off');
    set(handles.edit4,'enable','off');
    set(handles.edit5,'enable','off');
    set(handles.edit6,'enable','off');
    set(handles.edit13,'enable','off');
    set(handles.edit15,'enable','off');
    set(handles.edit17,'enable','off');
    set(handles.edit1,'enable','off');
    set(handles.edit7,'enable','off');
    set(handles.edit8,'enable','off');
    set(handles.edit10,'enable','off');
    set(handles.pushbutton6,'enable','off');
    set(handles.pushbutton7,'enable','off');
    set(handles.popupmenu3,'enable','off');
    set(handles.pushbutton1,'enable','off');
    set(handles.pushbutton3,'enable','off');
else
    set(handles.edit3,'enable','on');
    set(handles.edit4,'enable','on');
    set(handles.edit5,'enable','on');
    set(handles.edit7,'enable','on');
    set(handles.edit1,'enable','on');
    set(handles.popupmenu3,'enable','on');
    set(handles.pushbutton1,'enable','on');
    set(handles.pushbutton3,'enable','on');
    set(handles.edit15,'enable','on');
    set(handles.pushbutton6,'enable','on');
    set(handles.pushbutton7,'enable','on');
    if style==2 % ����ǻ
        axes(handles.axes3);
        pic=imread('����ǻ.png');
        imshow(pic);
        set(handles.edit6,'enable','off');
        set(handles.edit8,'enable','off');
        set(handles.edit10,'enable','off');
        set(handles.edit13,'enable','off');
        set(handles.edit17,'enable','off');
    elseif style==3 % ����ǻ
        axes(handles.axes3);
        pic=imread('����ǻ.png');
        imshow(pic);
        set(handles.edit6,'enable','on');
        set(handles.edit8,'enable','off');
        set(handles.edit10,'enable','off');
        set(handles.edit13,'enable','off');
        set(handles.edit17,'enable','off');
    elseif style==4 % Բ��ƽ�澵
        axes(handles.axes3);
        pic=imread('Բ�ξ�.png');
        imshow(pic);
        set(handles.edit6,'enable','off');
        set(handles.edit8,'enable','on');
        set(handles.edit10,'enable','on');
        set(handles.edit13,'enable','off');
        set(handles.edit17,'enable','off');
    elseif style==5 || style==6 % ��͹�澵
        axes(handles.axes3);
        pic=imread('Բ��ǻ.png');
        imshow(pic);
        set(handles.edit6,'enable','on');
        set(handles.edit8,'enable','on');
        set(handles.edit10,'enable','on');
        set(handles.edit13,'enable','off');
        set(handles.edit17,'enable','on');
    elseif style==7 % ��бǻ
        axes(handles.axes3);
        pic=imread('��бǻ.png');
        imshow(pic);
        set(handles.edit6,'enable','on');
        set(handles.edit8,'enable','off');
        set(handles.edit10,'enable','off');
        set(handles.edit13,'enable','on');
        set(handles.edit17,'enable','off');
    end
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end
global style;
style=1;

function edit5_Callback(hObject, ~, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a
%        double

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



% --- Executes during object creation, after setting all properties.
function text9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global style;
global calmeans;
tic;% ��ʼ��ʱ
% ��ȡ����
iteration = str2num(get(handles.edit1,'String')); % ��Խ����
error_margin = iteration/1000; % �������
wavelength = str2double(get(handles.edit3,'String'));
wavelength = wavelength*10^-9; % ����
Ltimes = str2double(get(handles.edit4,'String'));
L = Ltimes*wavelength; % L
k = 2*pi/wavelength; % ����
atimes = str2double(get(handles.edit5,'String'));
a = atimes*wavelength; % a
btimes = str2double(get(handles.edit6,'String'));
b = btimes*wavelength; % b
discrete = str2num(get(handles.edit7,'String')); % ��ɢ�̶�
ctimes = str2double(get(handles.edit13,'String'));
c = ctimes*wavelength; % c

% Բ���йز���
dir=str2num(get(handles.edit8,'String')); % ������
nu=str2num(get(handles.edit10,'String')); % ����������
Neq=a^2/(wavelength*L); % ��������
error=0; % ��ʼ���

if calmeans ==1 % ����Խ��������
    switch style
        case 2 % ����ǻ
            [modulus,phase,error,modulus_pre,phase_pre]=Fox_Li_1(iteration,a,k,L,discrete);
            %axes(handles.axes1);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            plot(linspace(-1,1,discrete),modulus,'r');% ��������
            hold on;
            plot(linspace(-1,1,discrete),modulus_pre,'b--');% �������ڶ������
            legend(['��' num2str(iteration) '��'],['��' num2str(iteration-1) '��'],'Location','Best');
            hold off;
            grid on;
            title({'����ǻ����ֲ�';['a��' num2str(atimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            plot(linspace(-1,1,discrete),phase,'r');% �������λ
            hold on;
            plot(linspace(-1,1,discrete),phase_pre,'b--');% �������ڶ�����λ
            legend(['��' num2str(iteration) '��'],['��' num2str(iteration-1) '��'],'Location','Best');
            hold off;
            grid on;
            title({'����ǻ��λ�ֲ�';['a��' num2str(atimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
        case 3 % ����ǻ
            [modulus_a,phase_a,error_a]=Fox_Li_1(iteration,a,k,L,discrete);
            [modulus_b,phase_b,error_b]=Fox_Li_1(iteration,b,k,L,discrete);
            error=max(error_a,error_b);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),modulus_a'*modulus_b);
            shading interp
            colormap summer;
            grid on;
            title({'����ǻ����ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),phase_a'*phase_b);
            shading interp
            colormap summer;
            grid on;
            title({'����ǻ��λ�ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
        case 4 % Բ��ƽ�澵
            [U,V,X,Y,error]=Fox_Li_3(iteration,a,inf,k,L,discrete,nu,dir,Neq);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            meshc(X,Y,U);
            shading interp
            colormap summer;
            title({'Բ��ƽ�澵����ֲ�';['a��' num2str(atimes) '������  ����������' num2str(Neq)];['��������' num2str(dir) '  ������������' num2str(nu)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            meshc(X,Y,V);
            shading interp
            colormap summer;
            title({'Բ��ƽ�澵��λ�ֲ�';['a��' num2str(atimes) '������  ����������' num2str(Neq)];['��������' num2str(dir) '  ������������' num2str(nu)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
        case {5,6} % ���澵��͹�澵
            [U,V,X,Y,error]=Fox_Li_3(iteration,a,b,k,L,discrete,nu,dir,Neq);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            meshc(X,Y,U);
            shading interp
            colormap summer;
            title({'���澵/͹�澵����ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������  ����������' num2str(Neq)];['��������' num2str(dir) '  ������������' num2str(nu)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            meshc(X,Y,V);
            shading interp
            colormap summer;
            title({'���澵/͹�澵��λ�ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������  ����������' num2str(Neq)];['��������' num2str(dir) '  ������������' num2str(nu)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
        case 7 % ��бǻ
            [modulus_a,phase_a,error_a]=Fox_Li_4(iteration,a,c,k,L,discrete);
            [modulus_b,phase_b,error_b]=Fox_Li_1(iteration,b,k,L,discrete);
            error=max(error_a,error_b);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),modulus_a'*modulus_b);
            shading interp
            colormap summer;
            grid on;
            title({'��бǻ����ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������ c��' num2str(ctimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),phase_a'*phase_b);
            shading interp
            colormap summer;
            grid on;
            title({'��бǻ��λ�ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������ c��' num2str(ctimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
    end
else % ��������޼���
    switch style
        case 2 % ����ǻ
            [modulus,phase,iteration,error,modulus_pre,phase_pre]=Fox_Li_2(error_margin,a,k,L,discrete);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            plot(linspace(-1,1,discrete),modulus,'r');% ��������
            hold on;
            plot(linspace(-1,1,discrete),modulus_pre,'b--');% �������ڶ������
            legend(['��' num2str(iteration) '��'],['��' num2str(iteration-1) '��'],'Location','Best');
            hold off;
            grid on;
            title({'����ǻ����ֲ�';['a��' num2str(atimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            plot(linspace(-1,1,discrete),phase,'r');% �������λ
            hold on;
            plot(linspace(-1,1,discrete),phase_pre,'b--');% �������ڶ�����λ
            legend(['��' num2str(iteration) '��'],['��' num2str(iteration-1) '��'],'Location','Best');
            hold off;
            grid on;
            title({'����ǻ��λ�ֲ�';['a��' num2str(atimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
        case 3 % ����ǻ
            [modulus_a,phase_a,iteration_a,error_a]=Fox_Li_2(error_margin,a,k,L,discrete);
            [modulus_b,phase_b,iteration_b,error_b]=Fox_Li_2(error_margin,b,k,L,discrete);
            iteration=max(iteration_a,iteration_b);
            error=max(error_a,error_b);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),modulus_a'*modulus_b);
            shading interp
            colormap summer;
            grid on;
            title({'����ǻ����ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),phase_a'*phase_b);
            shading interp
            colormap summer;
            grid on;
            title({'����ǻ��λ�ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
        case 4 % Բ��ƽ�澵
            [U,V,X,Y,iteration,error]=Fox_Li_5(error_margin,a,inf,k,L,discrete,nu,dir,Neq);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            meshc(X,Y,U);
            shading interp
            colormap summer;
            title({'Բ��ƽ�澵����ֲ�';['a��' num2str(atimes) '������  ����������' num2str(Neq)];['��������' num2str(dir) '  ������������' num2str(nu)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            meshc(X,Y,V);
            shading interp
            colormap summer;
            title({'Բ��ƽ�澵��λ�ֲ�';['a��' num2str(atimes) '������  ����������' num2str(Neq)];['��������' num2str(dir) '  ������������' num2str(nu)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
        case {5,6} % ���澵��͹�澵
            [U,V,X,Y,iteration,error]=Fox_Li_5(error_margin,a,b,k,L,discrete,nu,dir,Neq);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            meshc(X,Y,U);
            shading interp
            colormap summer;
            title({'���澵/͹�澵����ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������  ����������' num2str(Neq)];['��������' num2str(dir) '  ������������' num2str(nu)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            meshc(X,Y,V);
            shading interp
            colormap summer;
            title({'���澵/͹�澵��λ�ֲ�';['a��' num2str(atimes) '������ b��' num2str(btimes) '������  ����������' num2str(Neq)];['��������' num2str(dir) '  ������������' num2str(nu)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
        case 7 % ��бǻ
            [modulus_a,phase_a,iteration,error_a]=Fox_Li_6(error_margin,a,c,k,L,discrete);
            [modulus_b,phase_b,error_b]=Fox_Li_1(iteration,b,k,L,discrete);
            error=max(error_a,error_b);
            figure
            figure(gcf)
            set(gcf,'name','����ֲ�','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),modulus_a'*modulus_b);
            shading interp
            colormap summer;
            grid on;
            title({'��бǻ����ֲ�';['a��' num2str(atimes) '������  b��' num2str(btimes) '������  c��' num2str(ctimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','��λ�ֲ�','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),phase_a'*phase_b);
            shading interp
            colormap summer;
            grid on;
            title({'��бǻ��λ�ֲ�';['a��' num2str(atimes) '������  b��' num2str(btimes) '������  c��' num2str(ctimes) '������  ����������' num2str(Neq)];['��ɢ�̶ȣ�' num2str(discrete) '  ��Խ������' num2str(iteration) '  ��' num2str(error*1000) '��  ��ʱ��' num2str(toc) 's' ]});
    end
end
set(handles.text29,'String',num2str(iteration)); % ��ʾ��Խ����
set(handles.text27,'String',[num2str(error*1000) '��']); % ��ʾ���ֵ
toc; % ֹͣ��ʱ
set(handles.text13,'String',[num2str(toc) ' s']); % ��ʾ����ʱ��
guidata(hObject, handles);

% Fox_Li_1�Ӻ���_����Խ����_����ǻ
function [m,p,err,m_pre,p_pre]=Fox_Li_1(iteration,a,k,L,discrete)
u=ones(1,discrete); % ��ʼ��
u_t=zeros(1,discrete); % ��ʼ��
m_pre=u;
p_pre=u_t;
x1=linspace(-a,a,discrete);
% ����һ��������
h = waitbar(0,'1','Name','���ڼ���...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
for t=1:iteration % iterationΪ��Խ����
    for n=1:(discrete/2) % discreteΪ��ɢ����
        % Check for Cancel button press
        if getappdata(h,'canceling')
            break
        end
        % Report current estimate in the waitbar's message field
        waitbar(t/iteration,h,['���߶�Խ�� ' num2str(t) ' ��']);
        % �������
        x=x1(n);
        item=exp(-1i*k*(x-x1).^2/(2*L)).*u;
        u_t(n)=sqrt(1i*exp(-1i*k*L)) * sum(item(1:discrete));
    end
    % ���ý���ĶԳ��ԣ��Ż��㷨
    for n=(discrete/2+1):discrete
        u_t(n)=u_t(discrete+1-n);
    end
    u=u_t; % ��������
    u_abs=abs(u); % ȡ��ֵ
    u_abs_max=max(u_abs); % ȡ����ֵ
    u=u/u_abs_max; % ��һ�������
    m=u_abs/u_abs_max; % mΪ������
    p=angle(u); % pΪ�����λ
    if t==iteration-1 % ���浹���ڶ��εĽ��
        m_pre=u_abs/u_abs_max; % m_preΪ�����ڶ��ε����
        p_pre=angle(u); % p_preΪ�����ڶ��ε���λ
    end   
end
% �������һ�ν�����ϴν����
sub=m-m_pre; % �����ֵ
err=var(sub); % �ò�ֵ�ķ����������С
delete(h);

% Fox_Li_2�Ӻ���_���������_����ǻ
% ����������λ����Խ�Ĵ�������һ���������һ����λ
% ����������ޣ�a��k��L����ɢ�̶�
function [m,p,ite,err,m_pre,p_pre]=Fox_Li_2(error_margin,a,k,L,discrete)
u=ones(1,discrete); % ��ʼ������
u_t=zeros(1,discrete); % ��ʼ������
u_pre=u;
m_pre=u;
x1=linspace(-a,a,discrete);
% ����һ��������
h = waitbar(0,'1','Name','���ڼ���...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
err_s=inf; % ��ʼ���Ϊ�������
ite=0; % ��ʼ��Խ����Ϊ0
while err_s>error_margin % ��ǰ�������������ʱ
    ite=ite+1;
    for n=1:(discrete/2) % discreteΪ��ɢ����
        % Check for Cancel button press
        if getappdata(h,'canceling')
            break
        end
        % Report current estimate in the waitbar's message field
        waitbar(error_margin/err_s,h,['���߶�Խ��' num2str(ite) '�Σ�Ŀǰ���Ϊ ' num2str(err_s*1000) '��']);
        % �������
        x=x1(n);
        item=exp(-1i*k*(x-x1).^2/(2*L)).*u;
        u_t(n)=sqrt(1i*exp(-1i*k*L)) * sum(item(1:discrete));
    end
    for n=(discrete/2+1):discrete
    u_t(n)=u_t(discrete+1-n);
    end
    u=u_t; % ����õ����
    u_abs=abs(u); % ȡ��ֵ
    u_abs_max=max(u_abs); % ȡ����ֵ
    u=u/u_abs_max; % ��һ�������
    m=u_abs/u_abs_max; % mΪ������
    p=angle(u); % pΪ�����λ
    % �������һ�ν�����ϴν����
    sub=m-m_pre; % ��ֵ
    err_s=var(sub); % �����ǰ���
    if err_s>error_margin
        % ���浹���ڶ��εĽ��
        u_pre=u;
    end
    u_pre_abs=abs(u_pre); % ȡ��ֵ
    u_pre_abs_max=max(u_pre_abs); % ȡ����ֵ
    u_pre=u_pre/u_pre_abs_max; % ��һ�������
    m_pre=u_pre_abs/u_pre_abs_max; % m_preΪ�����ڶ��ε����
    p_pre=angle(u_pre); % p_preΪ�����ڶ��ε���λ
end
err=err_s;
delete(h);

% Fox_Li_3�Ӻ���_����Խ����_��͹ǻ
% ����������λ��X��Y�����
% �����Խ������a��b��k��L����ɢ�̶ȣ�����������������������������
function [u,v,x,y,err]=Fox_Li_3(iteration,a,b,k,L,discrete,nu,dir,Neq)
g=1-L/b; % g����
mm=1:discrete;
nn1=mm'; % ����ת��
besl=besselj(nu,2*pi*nn1*mm*Neq/(discrete*discrete));
q1=zeros([discrete discrete]); % ����q1
for nn=1:discrete
    for mm=1:discrete
        q1(nn,mm)=exp(-1i*pi*g*(mm^2+nn^2)*Neq/(discrete*discrete))*mm;
    end
end
% q1_sΪ��������
q1_s=2*pi*1i^(nu+1)*Neq/(discrete*discrete)*exp(-1i*k*L)*q1.*besl;
s=ones(discrete,discrete);
h = waitbar(0,'1','Name','���ڼ���...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
for t=1:iteration
    % Check for Cancel button press
    if getappdata(h,'canceling')
        break
    end
    % Report current estimate in the waitbar's message field
    waitbar(t/iteration,h,['��Խ�� ' num2str(t) ' ��']);
    s_t=q1_s*s; % ����ֲ����ڵ��������������ֲ�����1����2
    s=s_t; % ������漴�´�����
    s_abs=abs(s); % ��ֵ
    s_abs_max=max(s_abs); % D*D��1*D ����ֵ
    s_abs_max=max(s_abs_max); % 1*D��1*1 ����ֵ
    s=s/s_abs_max; % ��һ��
    m=s_abs/s_abs_max;
    p=angle(s);
    if t==iteration-1 % ���浹���ڶ��εĽ��
        m_pre=m;
    end 
end
if iteration==1 % �����Խ����Ϊ1ʱ���������
    m_pre=ones(discrete,discrete);
end
% �������һ�ν�����ϴν����
sub=m-m_pre; % �����ֵ
errr=mean(var(sub)); % �ò�ֵ�ķ����������С
err=-1./log(errr);

jing=1:discrete;
jing=jing';
jiao=linspace(0,2*pi,360);

u=m(jing)*abs(cos(dir*jiao)); % ת��xy��������
v=p(jing)*abs(cos(dir*jiao)); % ת��xy�������λ
x=a*jing/discrete*cos(jiao); % ת��xy�����x
y=a*jing/discrete*sin(jiao); % ת��xy�����y
delete(h);

% Fox_Li_4�Ӻ���_����Խ����_��бǻ cΪ��б�߶�
function [m,p,err]=Fox_Li_4(iteration,a,c,k,L,discrete)
u=ones(1,discrete); % ��ʼ��
u_t=zeros(1,discrete); % ��ʼ��
x1=linspace(-a,a,discrete);
% ����һ��������
h = waitbar(0,'1','Name','���ڼ���...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
for t=1:iteration % iterationΪ��Խ����
    for n=1:discrete % discreteΪ��ɢ����
        % Check for Cancel button press
        if getappdata(h,'canceling')
            break
        end
        % Report current estimate in the waitbar's message field
        waitbar(t/iteration,h,['���߶�Խ�� ' num2str(t) ' ��']);
        % �������
        x=x1(n);
        item=exp(-1i*k*c/a*(x+x1)).*exp(-1i*k*(x-x1).^2/(2*L)).*u;
        u_t(n)=sqrt(1i*exp(-1i*k*L)) * sum(item(1:discrete));
    end
    u=u_t; % ��������
    u_abs=abs(u); % ȡ��ֵ
    u_abs_max=max(u_abs); % ȡ����ֵ
    u=u/u_abs_max; % ��һ�������
    m=u_abs/u_abs_max; % mΪ������
    p=angle(u); % pΪ�����λ
    if t==iteration-1 % ���浹���ڶ��εĽ��
        m_pre=m;
    end   
end
if iteration==1 % �����Խ����Ϊ1ʱ���������
    m_pre=ones(1,discrete);
end
% �������һ�ν�����ϴν����
sub=m-m_pre; % �����ֵ
err=var(sub); % �ò�ֵ�ķ����������С
delete(h);

% Fox_Li_5�Ӻ���_���������_��͹ǻ
% ����������λ��X��Y����Խ�Ĵ��������
% ����������ޣ�a��b��k��L����ɢ�̶ȣ�����������������������������
function [u,v,x,y,ite,err]=Fox_Li_5(error_margin,a,b,k,L,discrete,nu,dir,Neq)
g=1-L/b;
mm=1:discrete;
nn1=mm';
besl=besselj(nu,2*pi*nn1*mm*Neq/(discrete*discrete));
q1=zeros([discrete discrete]); % ����q1
for nn=1:discrete
    for mm=1:discrete
        q1(nn,mm)=exp(-1i*pi*g*(mm^2+nn^2)*Neq/(discrete*discrete))*mm;
    end
end
% qΪ��������
q1_s=2*pi*1i^(nu+1)*Neq/(discrete*discrete)*exp(-1i*k*L)*q1.*besl;
s=ones(discrete,discrete);

err_s=inf;
ite=0;
h = waitbar(0,'1','Name','���ڼ���...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
while err_s>error_margin
    ite=ite+1;
    if getappdata(h,'canceling')
        break
    end
    % Report current estimate in the waitbar's message field
    waitbar(error_margin/err_s,h,['���߶�Խ��' num2str(ite) '�Σ�Ŀǰ���Ϊ ' num2str(err_s*1000) '��']);
    s_t=q1_s*s; % ����ֲ����ڵ��������������ֲ�����1����2
    
    s_abs=abs(s); % ��ֵ
    s_abs_max=max(s_abs); % D*D��1*D ����ֵ
    s_abs_max=max(s_abs_max); % 1*D��1*1 ����ֵ
    m_pre=s_abs/s_abs_max; % ��һ������ֲ�
    
    s=s_t; % ������漴�´�����
    s_abs=abs(s); % ��ֵ
    s_abs_max=max(s_abs); % D*D��1*D ����ֵ
    s_abs_max=max(s_abs_max); % 1*D��1*1 ����ֵ
    s=s/s_abs_max; % ��һ��
    m=s_abs/s_abs_max; % ��һ������ֲ�
    p=angle(s);
    % �������һ�ν�����ϴν����
    sub=m-m_pre; % �����ֵ
    errr_s=mean(var(sub)); % �ò�ֵ�ķ����������С
    err_s=-1./log(errr_s);
end
jing=1:discrete;
jing=jing';
jiao=linspace(0,2*pi,360);

u=m(jing)*abs(cos(dir*jiao));
v=p(jing)*abs(cos(dir*jiao));
x=a*jing/discrete*cos(jiao);
y=a*jing/discrete*sin(jiao);

err=err_s;
delete(h);

% Fox_Li_6�Ӻ���_���������_��бǻ
% ����������λ����Խ�Ĵ��������
% ����������ޣ�a��c��k��L����ɢ�̶�
function [m,p,ite,err]=Fox_Li_6(error_margin,a,c,k,L,discrete)
u=ones(1,discrete); % ��ʼ������
u_t=zeros(1,discrete); % ��ʼ������
u_pre=u_t;
m_pre=u_t;
x1=linspace(-a,a,discrete);
% ����һ��������
h = waitbar(0,'1','Name','���ڼ���...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
err_s=inf; % ��ʼ���Ϊ�������
ite=0; % ��ʼ��Խ����Ϊ0
while err_s>error_margin % ��ǰ�������������ʱ
    ite=ite+1;
    for n=1:discrete % discreteΪ��ɢ����
        % Check for Cancel button press
        if getappdata(h,'canceling')
            break
        end
        % Report current estimate in the waitbar's message field
        waitbar(error_margin/err_s,h,['���߶�Խ��' num2str(ite) '�Σ�Ŀǰ���Ϊ ' num2str(err_s*1000) '��']);
        % �������
        x=x1(n);
        item=exp(-1i*k*c/a*(x+x1)).*exp(-1i*k*(x-x1).^2/(2*L)).*u;
        u_t(n)=sqrt(1i*exp(-1i*k*L)) * sum(item(1:discrete));
    end
    u=u_t; % ����õ����
    u_abs=abs(u); % ȡ��ֵ
    u_abs_max=max(u_abs); % ȡ����ֵ
    u=u/u_abs_max; % ��һ�������
    m=u_abs/u_abs_max; % mΪ������
    p=angle(u); % pΪ�����λ
    % �������һ�ν�����ϴν����
    sub=m-m_pre; % ��ֵ
    err_s=var(sub); % �����ǰ���
    if err_s>error_margin
        % ���浹���ڶ��εĽ��
        u_pre=u;
    end
    u_pre_abs=abs(u_pre); % ȡ��ֵ
    u_pre_abs_max=max(u_pre_abs); % ȡ����ֵ
    u_pre=u_pre/u_pre_abs_max; % ��һ�������
    m_pre=u_pre_abs/u_pre_abs_max; % m_preΪ�����ڶ��ε����
end
err=err_s;
delete(h);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% ��������ֵ
set(handles.edit1,'String','100');
set(handles.edit3,'String','632.8');
set(handles.edit4,'String','100');
set(handles.edit3,'String','632.8');
set(handles.edit5,'String','15');
set(handles.edit6,'String','20');
set(handles.edit7,'String','200');
set(handles.edit8,'String','0');
set(handles.edit10,'String','0');
set(handles.edit13,'String','1');
set(handles.edit15,'String','1');
set(handles.edit17,'String','1');
guidata(hObject, handles);


% --- Executes on key press with focus on pushbutton1 and none of its controls.
function pushbutton1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
global calmeans;
calmeans=get(hObject,'Value');
if calmeans==1
    set(handles.text45,'visible','off');
else
    set(handles.text45,'visible','on');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global calmeans;
calmeans=1;


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=str2num(get(handles.edit17,'String')); % gֵ
freN=str2num(get(handles.edit15,'String')); % ��������
wavelength = str2double(get(handles.edit3,'String'));
wavelength = wavelength*10^-9; % ����
Ltimes = str2double(get(handles.edit4,'String'));
L = Ltimes*wavelength; % L
a=(wavelength*L*freN)^(0.5)/wavelength; % ��N��a
b=L/(1-g)/wavelength; % ��g��b
set(handles.edit6,'string',num2str(b));
set(handles.edit5,'string',num2str(a));


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
wavelength = str2double(get(handles.edit3,'String'));
wavelength = wavelength*10^-9; % ����
Ltimes = str2double(get(handles.edit4,'String'));
L = Ltimes*wavelength; % L
atimes = str2double(get(handles.edit5,'String'));
a = atimes*wavelength; % a
btimes = str2double(get(handles.edit6,'String'));
b = btimes*wavelength; % b
freN=a^2/(wavelength*L); % ��a��N
g=1-L/b; % ��b��g
set(handles.edit17,'string',num2str(g));
set(handles.edit15,'string',num2str(freN));
