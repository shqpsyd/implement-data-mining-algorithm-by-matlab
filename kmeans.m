function varargout = kmeans(varargin)
% KMEANS MATLAB code for kmeans.fig
%      KMEANS, by itself, creates a new KMEANS or raises the existing
%      singleton*.
%
%      H = KMEANS returns the handle to a new KMEANS or the handle to
%      the existing singleton*.
%
%      KMEANS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KMEANS.M with the given input arguments.
%
%      KMEANS('Property','Value',...) creates a new KMEANS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kmeans_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kmeans_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kmeans

% Last Modified by GUIDE v2.5 10-Nov-2017 23:09:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kmeans_OpeningFcn, ...
                   'gui_OutputFcn',  @kmeans_OutputFcn, ...
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


% --- Executes just before kmeans is made visible.
function kmeans_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kmeans (see VARARGIN)

handles.data = [];
% Choose default command line output for kmeans
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kmeans wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kmeans_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double
handles.k = str2double(get(hObject,'String'));
guidata(hObject, handles); 
% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ux_Callback(hObject, eventdata, handles)
% hObject    handle to ux (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ux as text
%        str2double(get(hObject,'String')) returns contents of ux as a double

handles.ux = str2double(get(hObject,'String'));
guidata(hObject, handles); 
% --- Executes during object creation, after setting all properties.
function ux_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ux (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function uy_Callback(hObject, eventdata, handles)
% hObject    handle to uy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of uy as text
%        str2double(get(hObject,'String')) returns contents of uy as a double
handles.uy = str2double(get(hObject,'String'));
guidata(hObject, handles); 

% --- Executes during object creation, after setting all properties.
function uy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigmax_Callback(hObject, eventdata, handles)
% hObject    handle to sigmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigmax as text
%        str2double(get(hObject,'String')) returns contents of sigmax as a double
handles.sigmax = str2double(get(hObject,'String'));
guidata(hObject, handles); 
% --- Executes during object creation, after setting all properties.
function sigmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigmay_Callback(hObject, eventdata, handles)
% hObject    handle to sigmay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigmay as text
%        str2double(get(hObject,'String')) returns contents of sigmay as a double
handles.sigmay = str2double(get(hObject,'String'));
u = [handles.ux,handles.uy];
sigma = [handles.sigmax,0;0,handles.sigmay];
r = mvnrnd(u,sigma,100);
handles.data = [handles.data' r']';
plot(r(:,1),r(:,2),'k.');
guidata(hObject, handles); 
hold on;
 

% --- Executes during object creation, after setting all properties.
function sigmay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigmay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ginput.
function ginput_Callback(hObject, eventdata, handles)
% hObject    handle to ginput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = ginput(1);
handles.data = [handles.data' a']';
guidata(hObject, handles); 
scatter(a(1),a(2),5,'k','filled');
hold on;

% --- Executes on button press in run.
function run_Callback(hObject, eventdata, handles)
% hObject    handle to run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
core = [];
newcore = zeros(handles.k,2)-1;
cluster = zeros(length(handles.data),1);
for i = 1:handles.k
    core = [core' handles.data(uint8(rand()*length(handles.data)),:)']';
    %eval(['label' num2str(i) '=[]'])
end;
count = 1;
while newcore~=core
    if count ~= 1
        core = newcore;
        count = 1;
    end
    
    for i = 1:length(handles.data)     
        dist = squareform(pdist([handles.data(i,:)' core']'));
        [M,label] = min(dist(1,2:handles.k+1));        
        cluster(count) = label;
        count = count+1;
    end;
    newcore = [];
    for i = 1:handles.k          
        data = handles.data(cluster == i,:);   
        newcore = [newcore' [mean(data(:,1)),mean(data(:,2))]']';        
    end;    
    pause(0.5);
    
    scatter(handles.data(:,1),handles.data(:,2),5,cluster*10,'filled');
end

    
    

    
    
    

    
