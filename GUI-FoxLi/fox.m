
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
%读取腔型
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
    if style==2 % 条型腔
        axes(handles.axes3);
        pic=imread('条形腔.png');
        imshow(pic);
        set(handles.edit6,'enable','off');
        set(handles.edit8,'enable','off');
        set(handles.edit10,'enable','off');
        set(handles.edit13,'enable','off');
        set(handles.edit17,'enable','off');
    elseif style==3 % 矩形腔
        axes(handles.axes3);
        pic=imread('矩形腔.png');
        imshow(pic);
        set(handles.edit6,'enable','on');
        set(handles.edit8,'enable','off');
        set(handles.edit10,'enable','off');
        set(handles.edit13,'enable','off');
        set(handles.edit17,'enable','off');
    elseif style==4 % 圆形平面镜
        axes(handles.axes3);
        pic=imread('圆形镜.png');
        imshow(pic);
        set(handles.edit6,'enable','off');
        set(handles.edit8,'enable','on');
        set(handles.edit10,'enable','on');
        set(handles.edit13,'enable','off');
        set(handles.edit17,'enable','off');
    elseif style==5 || style==6 % 凹凸面镜
        axes(handles.axes3);
        pic=imread('圆形腔.png');
        imshow(pic);
        set(handles.edit6,'enable','on');
        set(handles.edit8,'enable','on');
        set(handles.edit10,'enable','on');
        set(handles.edit13,'enable','off');
        set(handles.edit17,'enable','on');
    elseif style==7 % 倾斜腔
        axes(handles.axes3);
        pic=imread('倾斜腔.png');
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
tic;% 开始计时
% 读取参数
iteration = str2num(get(handles.edit1,'String')); % 渡越次数
error_margin = iteration/1000; % 误差容限
wavelength = str2double(get(handles.edit3,'String'));
wavelength = wavelength*10^-9; % 波长
Ltimes = str2double(get(handles.edit4,'String'));
L = Ltimes*wavelength; % L
k = 2*pi/wavelength; % 波数
atimes = str2double(get(handles.edit5,'String'));
a = atimes*wavelength; % a
btimes = str2double(get(handles.edit6,'String'));
b = btimes*wavelength; % b
discrete = str2num(get(handles.edit7,'String')); % 离散程度
ctimes = str2double(get(handles.edit13,'String'));
c = ctimes*wavelength; % c

% 圆形有关参数
dir=str2num(get(handles.edit8,'String')); % 角向倍数
nu=str2num(get(handles.edit10,'String')); % 贝塞尔阶数
Neq=a^2/(wavelength*L); % 菲涅耳数
error=0; % 初始误差

if calmeans ==1 % 按渡越次数计算
    switch style
        case 2 % 条形腔
            [modulus,phase,error,modulus_pre,phase_pre]=Fox_Li_1(iteration,a,k,L,discrete);
            %axes(handles.axes1);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            plot(linspace(-1,1,discrete),modulus,'r');% 画最后振幅
            hold on;
            plot(linspace(-1,1,discrete),modulus_pre,'b--');% 画倒数第二次振幅
            legend(['第' num2str(iteration) '次'],['第' num2str(iteration-1) '次'],'Location','Best');
            hold off;
            grid on;
            title({'条形腔振幅分布';['a：' num2str(atimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            plot(linspace(-1,1,discrete),phase,'r');% 画最后相位
            hold on;
            plot(linspace(-1,1,discrete),phase_pre,'b--');% 画倒数第二次相位
            legend(['第' num2str(iteration) '次'],['第' num2str(iteration-1) '次'],'Location','Best');
            hold off;
            grid on;
            title({'条形腔相位分布';['a：' num2str(atimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
        case 3 % 矩形腔
            [modulus_a,phase_a,error_a]=Fox_Li_1(iteration,a,k,L,discrete);
            [modulus_b,phase_b,error_b]=Fox_Li_1(iteration,b,k,L,discrete);
            error=max(error_a,error_b);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),modulus_a'*modulus_b);
            shading interp
            colormap summer;
            grid on;
            title({'矩形腔振幅分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),phase_a'*phase_b);
            shading interp
            colormap summer;
            grid on;
            title({'矩形腔相位分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
        case 4 % 圆形平面镜
            [U,V,X,Y,error]=Fox_Li_3(iteration,a,inf,k,L,discrete,nu,dir,Neq);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            meshc(X,Y,U);
            shading interp
            colormap summer;
            title({'圆形平面镜振幅分布';['a：' num2str(atimes) '倍波长  菲涅耳数：' num2str(Neq)];['角向倍数：' num2str(dir) '  贝塞尔阶数：' num2str(nu)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            meshc(X,Y,V);
            shading interp
            colormap summer;
            title({'圆形平面镜相位分布';['a：' num2str(atimes) '倍波长  菲涅耳数：' num2str(Neq)];['角向倍数：' num2str(dir) '  贝塞尔阶数：' num2str(nu)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
        case {5,6} % 凹面镜，凸面镜
            [U,V,X,Y,error]=Fox_Li_3(iteration,a,b,k,L,discrete,nu,dir,Neq);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            meshc(X,Y,U);
            shading interp
            colormap summer;
            title({'凹面镜/凸面镜振幅分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长  菲涅耳数：' num2str(Neq)];['角向倍数：' num2str(dir) '  贝塞尔阶数：' num2str(nu)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            meshc(X,Y,V);
            shading interp
            colormap summer;
            title({'凹面镜/凸面镜相位分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长  菲涅耳数：' num2str(Neq)];['角向倍数：' num2str(dir) '  贝塞尔阶数：' num2str(nu)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
        case 7 % 倾斜腔
            [modulus_a,phase_a,error_a]=Fox_Li_4(iteration,a,c,k,L,discrete);
            [modulus_b,phase_b,error_b]=Fox_Li_1(iteration,b,k,L,discrete);
            error=max(error_a,error_b);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),modulus_a'*modulus_b);
            shading interp
            colormap summer;
            grid on;
            title({'倾斜腔振幅分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长 c：' num2str(ctimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),phase_a'*phase_b);
            shading interp
            colormap summer;
            grid on;
            title({'倾斜腔相位分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长 c：' num2str(ctimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
    end
else % 按误差容限计算
    switch style
        case 2 % 条形腔
            [modulus,phase,iteration,error,modulus_pre,phase_pre]=Fox_Li_2(error_margin,a,k,L,discrete);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            plot(linspace(-1,1,discrete),modulus,'r');% 画最后振幅
            hold on;
            plot(linspace(-1,1,discrete),modulus_pre,'b--');% 画倒数第二次振幅
            legend(['第' num2str(iteration) '次'],['第' num2str(iteration-1) '次'],'Location','Best');
            hold off;
            grid on;
            title({'条形腔振幅分布';['a：' num2str(atimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            plot(linspace(-1,1,discrete),phase,'r');% 画最后相位
            hold on;
            plot(linspace(-1,1,discrete),phase_pre,'b--');% 画倒数第二次相位
            legend(['第' num2str(iteration) '次'],['第' num2str(iteration-1) '次'],'Location','Best');
            hold off;
            grid on;
            title({'条形腔相位分布';['a：' num2str(atimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
        case 3 % 矩形腔
            [modulus_a,phase_a,iteration_a,error_a]=Fox_Li_2(error_margin,a,k,L,discrete);
            [modulus_b,phase_b,iteration_b,error_b]=Fox_Li_2(error_margin,b,k,L,discrete);
            iteration=max(iteration_a,iteration_b);
            error=max(error_a,error_b);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),modulus_a'*modulus_b);
            shading interp
            colormap summer;
            grid on;
            title({'矩形腔振幅分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),phase_a'*phase_b);
            shading interp
            colormap summer;
            grid on;
            title({'矩形腔相位分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
        case 4 % 圆形平面镜
            [U,V,X,Y,iteration,error]=Fox_Li_5(error_margin,a,inf,k,L,discrete,nu,dir,Neq);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            meshc(X,Y,U);
            shading interp
            colormap summer;
            title({'圆形平面镜振幅分布';['a：' num2str(atimes) '倍波长  菲涅耳数：' num2str(Neq)];['角向倍数：' num2str(dir) '  贝塞尔阶数：' num2str(nu)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            meshc(X,Y,V);
            shading interp
            colormap summer;
            title({'圆形平面镜相位分布';['a：' num2str(atimes) '倍波长  菲涅耳数：' num2str(Neq)];['角向倍数：' num2str(dir) '  贝塞尔阶数：' num2str(nu)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
        case {5,6} % 凹面镜，凸面镜
            [U,V,X,Y,iteration,error]=Fox_Li_5(error_margin,a,b,k,L,discrete,nu,dir,Neq);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            meshc(X,Y,U);
            shading interp
            colormap summer;
            title({'凹面镜/凸面镜振幅分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长  菲涅耳数：' num2str(Neq)];['角向倍数：' num2str(dir) '  贝塞尔阶数：' num2str(nu)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            meshc(X,Y,V);
            shading interp
            colormap summer;
            title({'凹面镜/凸面镜相位分布';['a：' num2str(atimes) '倍波长 b：' num2str(btimes) '倍波长  菲涅耳数：' num2str(Neq)];['角向倍数：' num2str(dir) '  贝塞尔阶数：' num2str(nu)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
        case 7 % 倾斜腔
            [modulus_a,phase_a,iteration,error_a]=Fox_Li_6(error_margin,a,c,k,L,discrete);
            [modulus_b,phase_b,error_b]=Fox_Li_1(iteration,b,k,L,discrete);
            error=max(error_a,error_b);
            figure
            figure(gcf)
            set(gcf,'name','振幅分布','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),modulus_a'*modulus_b);
            shading interp
            colormap summer;
            grid on;
            title({'倾斜腔振幅分布';['a：' num2str(atimes) '倍波长  b：' num2str(btimes) '倍波长  c：' num2str(ctimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
            figure
            figure(gcf)
            set(gcf,'name','相位分布','numberTitle','off');
            mesh(linspace(-1,1,discrete),linspace(-1,1,discrete),phase_a'*phase_b);
            shading interp
            colormap summer;
            grid on;
            title({'倾斜腔相位分布';['a：' num2str(atimes) '倍波长  b：' num2str(btimes) '倍波长  c：' num2str(ctimes) '倍波长  菲涅耳数：' num2str(Neq)];['离散程度：' num2str(discrete) '  渡越次数：' num2str(iteration) '  误差：' num2str(error*1000) '‰  耗时：' num2str(toc) 's' ]});
    end
end
set(handles.text29,'String',num2str(iteration)); % 显示渡越次数
set(handles.text27,'String',[num2str(error*1000) '‰']); % 显示误差值
toc; % 停止计时
set(handles.text13,'String',[num2str(toc) ' s']); % 显示运行时间
guidata(hObject, handles);

% Fox_Li_1子函数_按渡越次数_条型腔
function [m,p,err,m_pre,p_pre]=Fox_Li_1(iteration,a,k,L,discrete)
u=ones(1,discrete); % 初始化
u_t=zeros(1,discrete); % 初始化
m_pre=u;
p_pre=u_t;
x1=linspace(-a,a,discrete);
% 生成一个进度条
h = waitbar(0,'1','Name','正在计算...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
for t=1:iteration % iteration为渡越次数
    for n=1:(discrete/2) % discrete为离散点数
        % Check for Cancel button press
        if getappdata(h,'canceling')
            break
        end
        % Report current estimate in the waitbar's message field
        waitbar(t/iteration,h,['单边渡越第 ' num2str(t) ' 次']);
        % 计算振幅
        x=x1(n);
        item=exp(-1i*k*(x-x1).^2/(2*L)).*u;
        u_t(n)=sqrt(1i*exp(-1i*k*L)) * sum(item(1:discrete));
    end
    % 利用结果的对称性，优化算法
    for n=(discrete/2+1):discrete
        u_t(n)=u_t(discrete+1-n);
    end
    u=u_t; % 计算得振幅
    u_abs=abs(u); % 取幅值
    u_abs_max=max(u_abs); % 取最大幅值
    u=u/u_abs_max; % 归一化的振幅
    m=u_abs/u_abs_max; % m为结果振幅
    p=angle(u); % p为结果相位
    if t==iteration-1 % 储存倒数第二次的结果
        m_pre=u_abs/u_abs_max; % m_pre为倒数第二次的振幅
        p_pre=angle(u); % p_pre为倒数第二次的相位
    end   
end
% 计算最后一次结果与上次结果差
sub=m-m_pre; % 计算差值
err=var(sub); % 用差值的方差表征误差大小
delete(h);

% Fox_Li_2子函数_按误差容限_条形腔
% 输出振幅，相位，渡越的次数，上一个振幅，上一个相位
% 输入误差容限，a，k，L，离散程度
function [m,p,ite,err,m_pre,p_pre]=Fox_Li_2(error_margin,a,k,L,discrete)
u=ones(1,discrete); % 初始化物面
u_t=zeros(1,discrete); % 初始化像面
u_pre=u;
m_pre=u;
x1=linspace(-a,a,discrete);
% 生成一个进度条
h = waitbar(0,'1','Name','正在计算...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
err_s=inf; % 初始误差为正无穷大
ite=0; % 初始渡越次数为0
while err_s>error_margin % 当前误差大于误差容限时
    ite=ite+1;
    for n=1:(discrete/2) % discrete为离散点数
        % Check for Cancel button press
        if getappdata(h,'canceling')
            break
        end
        % Report current estimate in the waitbar's message field
        waitbar(error_margin/err_s,h,['单边渡越第' num2str(ite) '次，目前误差为 ' num2str(err_s*1000) '‰']);
        % 计算振幅
        x=x1(n);
        item=exp(-1i*k*(x-x1).^2/(2*L)).*u;
        u_t(n)=sqrt(1i*exp(-1i*k*L)) * sum(item(1:discrete));
    end
    for n=(discrete/2+1):discrete
    u_t(n)=u_t(discrete+1-n);
    end
    u=u_t; % 计算得的振幅
    u_abs=abs(u); % 取幅值
    u_abs_max=max(u_abs); % 取最大幅值
    u=u/u_abs_max; % 归一化的振幅
    m=u_abs/u_abs_max; % m为结果振幅
    p=angle(u); % p为结果相位
    % 计算最后一次结果与上次结果差
    sub=m-m_pre; % 差值
    err_s=var(sub); % 方差，当前误差
    if err_s>error_margin
        % 储存倒数第二次的结果
        u_pre=u;
    end
    u_pre_abs=abs(u_pre); % 取幅值
    u_pre_abs_max=max(u_pre_abs); % 取最大幅值
    u_pre=u_pre/u_pre_abs_max; % 归一化的振幅
    m_pre=u_pre_abs/u_pre_abs_max; % m_pre为倒数第二次的振幅
    p_pre=angle(u_pre); % p_pre为倒数第二次的相位
end
err=err_s;
delete(h);

% Fox_Li_3子函数_按渡越次数_凹凸腔
% 输出振幅，相位，X，Y，误差
% 输入渡越次数，a，b，k，L，离散程度，贝塞尔阶数，角向倍数，菲涅耳数
function [u,v,x,y,err]=Fox_Li_3(iteration,a,b,k,L,discrete,nu,dir,Neq)
g=1-L/b; % g参数
mm=1:discrete;
nn1=mm'; % 矩阵转置
besl=besselj(nu,2*pi*nn1*mm*Neq/(discrete*discrete));
q1=zeros([discrete discrete]); % 定义q1
for nn=1:discrete
    for mm=1:discrete
        q1(nn,mm)=exp(-1i*pi*g*(mm^2+nn^2)*Neq/(discrete*discrete))*mm;
    end
end
% q1_s为迭代矩阵
q1_s=2*pi*1i^(nu+1)*Neq/(discrete*discrete)*exp(-1i*k*L)*q1.*besl;
s=ones(discrete,discrete);
h = waitbar(0,'1','Name','正在计算...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
for t=1:iteration
    % Check for Cancel button press
    if getappdata(h,'canceling')
        break
    end
    % Report current estimate in the waitbar's message field
    waitbar(t/iteration,h,['渡越第 ' num2str(t) ' 次']);
    s_t=q1_s*s; % 像面分布等于迭代矩阵乘以物面分布，面1到面2
    s=s_t; % 这次像面即下次物面
    s_abs=abs(s); % 幅值
    s_abs_max=max(s_abs); % D*D到1*D 最大幅值
    s_abs_max=max(s_abs_max); % 1*D到1*1 最大幅值
    s=s/s_abs_max; % 归一化
    m=s_abs/s_abs_max;
    p=angle(s);
    if t==iteration-1 % 储存倒数第二次的结果
        m_pre=m;
    end 
end
if iteration==1 % 处理渡越次数为1时的特殊情况
    m_pre=ones(discrete,discrete);
end
% 计算最后一次结果与上次结果差
sub=m-m_pre; % 计算差值
errr=mean(var(sub)); % 用差值的方差表征误差大小
err=-1./log(errr);

jing=1:discrete;
jing=jing';
jiao=linspace(0,2*pi,360);

u=m(jing)*abs(cos(dir*jiao)); % 转到xy坐标的振幅
v=p(jing)*abs(cos(dir*jiao)); % 转到xy坐标的相位
x=a*jing/discrete*cos(jiao); % 转到xy坐标的x
y=a*jing/discrete*sin(jiao); % 转到xy坐标的y
delete(h);

% Fox_Li_4子函数_按渡越次数_倾斜腔 c为倾斜线度
function [m,p,err]=Fox_Li_4(iteration,a,c,k,L,discrete)
u=ones(1,discrete); % 初始化
u_t=zeros(1,discrete); % 初始化
x1=linspace(-a,a,discrete);
% 生成一个进度条
h = waitbar(0,'1','Name','正在计算...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
for t=1:iteration % iteration为渡越次数
    for n=1:discrete % discrete为离散点数
        % Check for Cancel button press
        if getappdata(h,'canceling')
            break
        end
        % Report current estimate in the waitbar's message field
        waitbar(t/iteration,h,['单边渡越第 ' num2str(t) ' 次']);
        % 计算振幅
        x=x1(n);
        item=exp(-1i*k*c/a*(x+x1)).*exp(-1i*k*(x-x1).^2/(2*L)).*u;
        u_t(n)=sqrt(1i*exp(-1i*k*L)) * sum(item(1:discrete));
    end
    u=u_t; % 计算得振幅
    u_abs=abs(u); % 取幅值
    u_abs_max=max(u_abs); % 取最大幅值
    u=u/u_abs_max; % 归一化的振幅
    m=u_abs/u_abs_max; % m为结果振幅
    p=angle(u); % p为结果相位
    if t==iteration-1 % 储存倒数第二次的结果
        m_pre=m;
    end   
end
if iteration==1 % 处理渡越次数为1时的特殊情况
    m_pre=ones(1,discrete);
end
% 计算最后一次结果与上次结果差
sub=m-m_pre; % 计算差值
err=var(sub); % 用差值的方差表征误差大小
delete(h);

% Fox_Li_5子函数_按误差容限_凹凸腔
% 输出振幅，相位，X，Y，渡越的次数，误差
% 输入误差容限，a，b，k，L，离散程度，贝塞尔阶数，角向倍数，菲涅耳数
function [u,v,x,y,ite,err]=Fox_Li_5(error_margin,a,b,k,L,discrete,nu,dir,Neq)
g=1-L/b;
mm=1:discrete;
nn1=mm';
besl=besselj(nu,2*pi*nn1*mm*Neq/(discrete*discrete));
q1=zeros([discrete discrete]); % 定义q1
for nn=1:discrete
    for mm=1:discrete
        q1(nn,mm)=exp(-1i*pi*g*(mm^2+nn^2)*Neq/(discrete*discrete))*mm;
    end
end
% q为迭代矩阵
q1_s=2*pi*1i^(nu+1)*Neq/(discrete*discrete)*exp(-1i*k*L)*q1.*besl;
s=ones(discrete,discrete);

err_s=inf;
ite=0;
h = waitbar(0,'1','Name','正在计算...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
while err_s>error_margin
    ite=ite+1;
    if getappdata(h,'canceling')
        break
    end
    % Report current estimate in the waitbar's message field
    waitbar(error_margin/err_s,h,['单边渡越第' num2str(ite) '次，目前误差为 ' num2str(err_s*1000) '‰']);
    s_t=q1_s*s; % 像面分布等于迭代矩阵乘以物面分布，面1到面2
    
    s_abs=abs(s); % 幅值
    s_abs_max=max(s_abs); % D*D到1*D 最大幅值
    s_abs_max=max(s_abs_max); % 1*D到1*1 最大幅值
    m_pre=s_abs/s_abs_max; % 上一次振幅分布
    
    s=s_t; % 这次像面即下次物面
    s_abs=abs(s); % 幅值
    s_abs_max=max(s_abs); % D*D到1*D 最大幅值
    s_abs_max=max(s_abs_max); % 1*D到1*1 最大幅值
    s=s/s_abs_max; % 归一化
    m=s_abs/s_abs_max; % 这一次振幅分布
    p=angle(s);
    % 计算最后一次结果与上次结果差
    sub=m-m_pre; % 计算差值
    errr_s=mean(var(sub)); % 用差值的方差表征误差大小
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

% Fox_Li_6子函数_按误差容限_倾斜腔
% 输出振幅，相位，渡越的次数，误差
% 输入误差容限，a，c，k，L，离散程度
function [m,p,ite,err]=Fox_Li_6(error_margin,a,c,k,L,discrete)
u=ones(1,discrete); % 初始化物面
u_t=zeros(1,discrete); % 初始化像面
u_pre=u_t;
m_pre=u_t;
x1=linspace(-a,a,discrete);
% 生成一个进度条
h = waitbar(0,'1','Name','正在计算...','CreateCancelBtn','setappdata(gcbf,''canceling'',1)');
setappdata(h,'canceling',0);
err_s=inf; % 初始误差为正无穷大
ite=0; % 初始渡越次数为0
while err_s>error_margin % 当前误差大于误差容限时
    ite=ite+1;
    for n=1:discrete % discrete为离散点数
        % Check for Cancel button press
        if getappdata(h,'canceling')
            break
        end
        % Report current estimate in the waitbar's message field
        waitbar(error_margin/err_s,h,['单边渡越第' num2str(ite) '次，目前误差为 ' num2str(err_s*1000) '‰']);
        % 计算振幅
        x=x1(n);
        item=exp(-1i*k*c/a*(x+x1)).*exp(-1i*k*(x-x1).^2/(2*L)).*u;
        u_t(n)=sqrt(1i*exp(-1i*k*L)) * sum(item(1:discrete));
    end
    u=u_t; % 计算得的振幅
    u_abs=abs(u); % 取幅值
    u_abs_max=max(u_abs); % 取最大幅值
    u=u/u_abs_max; % 归一化的振幅
    m=u_abs/u_abs_max; % m为结果振幅
    p=angle(u); % p为结果相位
    % 计算最后一次结果与上次结果差
    sub=m-m_pre; % 差值
    err_s=var(sub); % 方差，当前误差
    if err_s>error_margin
        % 储存倒数第二次的结果
        u_pre=u;
    end
    u_pre_abs=abs(u_pre); % 取幅值
    u_pre_abs_max=max(u_pre_abs); % 取最大幅值
    u_pre=u_pre/u_pre_abs_max; % 归一化的振幅
    m_pre=u_pre_abs/u_pre_abs_max; % m_pre为倒数第二次的振幅
end
err=err_s;
delete(h);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 设置重置值
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
g=str2num(get(handles.edit17,'String')); % g值
freN=str2num(get(handles.edit15,'String')); % 菲涅耳数
wavelength = str2double(get(handles.edit3,'String'));
wavelength = wavelength*10^-9; % 波长
Ltimes = str2double(get(handles.edit4,'String'));
L = Ltimes*wavelength; % L
a=(wavelength*L*freN)^(0.5)/wavelength; % 由N算a
b=L/(1-g)/wavelength; % 由g算b
set(handles.edit6,'string',num2str(b));
set(handles.edit5,'string',num2str(a));


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
wavelength = str2double(get(handles.edit3,'String'));
wavelength = wavelength*10^-9; % 波长
Ltimes = str2double(get(handles.edit4,'String'));
L = Ltimes*wavelength; % L
atimes = str2double(get(handles.edit5,'String'));
a = atimes*wavelength; % a
btimes = str2double(get(handles.edit6,'String'));
b = btimes*wavelength; % b
freN=a^2/(wavelength*L); % 由a算N
g=1-L/b; % 由b算g
set(handles.edit17,'string',num2str(g));
set(handles.edit15,'string',num2str(freN));
