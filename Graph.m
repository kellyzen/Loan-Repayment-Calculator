function varargout = Graph(varargin)
% GRAPH MATLAB code for Graph.fig
%      GRAPH, by itself, creates a new GRAPH or raises the existing
%      singleton*.
%
%      H = GRAPH returns the handle to a new GRAPH or the handle to
%      the existing singleton*.
%
%      GRAPH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPH.M with the given input arguments.
%
%      GRAPH('Property','Value',...) creates a new GRAPH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Graph_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Graph_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Graph

% Last Modified by GUIDE v2.5 01-Apr-2021 20:03:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Graph_OpeningFcn, ...
                   'gui_OutputFcn',  @Graph_OutputFcn, ...
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


% --- Executes just before Graph is made visible.
function Graph_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Graph (see VARARGIN)

% Choose default command line output for Graph
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Graph wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Graph_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

a_num= num2str(get(handles.a,'Value'))
set(handles.a_txt,'String',a_num)
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

b_num= num2str(get(handles.b,'Value'))
set(handles.b_txt,'String',b_num)
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function c_Callback(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

c_num= num2str(get(handles.c,'Value'))
set(handles.c_txt,'String',c_num)
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in plot_1.
function plot_1_Callback(hObject, eventdata, handles)
% hObject    handle to plot_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plot_1
a= get(handles.a,'Value');
b= get(handles.b,'Value');
c= get(handles.c,'Value');

t = [0:0.1:100];
axes(handles.axes1)
y= a*sin(b*t+c);
plot(t,y,'r.-')

% --- Executes on button press in plot_2.
function plot_2_Callback(hObject, eventdata, handles)
% hObject    handle to plot_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plot_2
a= get(handles.a,'Value');
b= get(handles.b,'Value');
c= get(handles.c,'Value');

button= errordlg('Monthly Payment must contain numbers only.','Error','OK')
if strcmp(button,'OK')
    t = [0:0.1:100];
    axes(handles.axes1)
    y=sin(a*t)+sin(c*t);
    plot(t,y,'b.-')
end



% --- Executes during object creation, after setting all properties.
function plot_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plot_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function a_txt_Callback(hObject, eventdata, handles)
% hObject    handle to a_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a_txt as text
%        str2double(get(hObject,'String')) returns contents of a_txt as a double

a_input= str2num(get(handles.a_txt,'String'));
set(handles.a,'Value',a_input)
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function a_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_txt_Callback(hObject, eventdata, handles)
% hObject    handle to b_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b_txt as text
%        str2double(get(hObject,'String')) returns contents of b_txt as a double

b_input= str2num(get(handles.b_txt,'String'));
set(handles.b,'Value',b_input)
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function b_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c_txt_Callback(hObject, eventdata, handles)
% hObject    handle to c_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c_txt as text
%        str2double(get(hObject,'String')) returns contents of c_txt as a double

c_input= str2num(get(handles.c_txt,'String'));
set(handles.c,'Value',c_input)
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function c_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function file_menu_Callback(hObject, eventdata, handles)
% hObject    handle to file_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function edit_menu_Callback(hObject, eventdata, handles)
% hObject    handle to edit_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function graph_menu_Callback(hObject, eventdata, handles)
% hObject    handle to graph_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function table_menu_Callback(hObject, eventdata, handles)
% hObject    handle to table_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_6_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_7_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
