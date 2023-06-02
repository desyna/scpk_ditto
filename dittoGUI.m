function varargout = GUIditto(varargin)
%GUIDITTO MATLAB code file for GUIditto.fig
%      GUIDITTO, by itself, creates a new GUIDITTO or raises the existing
%      singleton*.
%
%      H = GUIDITTO returns the handle to a new GUIDITTO or the handle to
%      the existing singleton*.
%
%      GUIDITTO('Property','Value',...) creates a new GUIDITTO using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to GUIditto_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUIDITTO('CALLBACK') and GUIDITTO('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUIDITTO.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIditto

% Last Modified by GUIDE v2.5 02-Jun-2023 10:58:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIditto_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIditto_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before GUIditto is made visible.
function GUIditto_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for GUIditto
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIditto wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIditto_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function bpm_Callback(hObject, eventdata, handles)
% hObject    handle to bpm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bpm as text
%        str2double(get(hObject,'String')) returns contents of bpm as a double


% --- Executes during object creation, after setting all properties.
function bpm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bpm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderBpm_Callback(hObject, eventdata, handles)
% hObject    handle to sliderBpm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
% Buat slider dengan uicontrol
% Dapatkan nilai dari slider

sliderValue = get(hObject, 'Value');
set(handles.bpm,'String',num2str(sliderValue));




% --- Executes during object creation, after setting all properties.
function sliderBpm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderBpm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function usia_Callback(hObject, eventdata, handles)
% hObject    handle to usia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of usia as text
%        str2double(get(hObject,'String')) returns contents of usia as a double


% --- Executes during object creation, after setting all properties.
function usia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to usia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderUsia_Callback(hObject, eventdata, handles)
% hObject    handle to sliderUsia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderValue = get(hObject, 'Value');
set(handles.usia,'String',num2str(sliderValue));


% --- Executes during object creation, after setting all properties.
function sliderUsia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderUsia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function mood_Callback(hObject, eventdata, handles)
% hObject    handle to mood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mood as text
%        str2double(get(hObject,'String')) returns contents of mood as a double


% --- Executes during object creation, after setting all properties.
function mood_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderMood_Callback(hObject, eventdata, handles)
% hObject    handle to sliderMood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderValue = get(hObject, 'Value');
set(handles.mood,'String',num2str(sliderValue));


% --- Executes during object creation, after setting all properties.
function sliderMood_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderMood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnSubmit.
function btnSubmit_Callback(hObject, eventdata, handles)
% hObject    handle to btnSubmit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bpm = str2double(get(handles.bpm, 'String'));
usia = str2double(get(handles.usia, 'String'));
mood = str2double(get(handles.mood, 'String'));

fis = readfis('dito.fis');
result = evalfis(fis, [bpm, usia, mood]);

set(handles.hasil,'String', result);

sangat = imread('ditto.png');
lumayan = imread('ditto.png');
none = imread('ditto2.png');

disp(result);

if result <= 5
    ucapan = sprintf("%s","Ga rekomended :(");
    imshow(none);
elseif result > 5 && result < 10
    ucapan = sprintf("%s","Lumayan rekomended lah");
    imshow(lumayan);
elseif result >= 10
    ucapan = sprintf("%s","Rekomended banget");
    imshow(sangat);
end

set(handles.hasil, 'String', ucapan);


% --- Executes on button press in btnReset.
function btnReset_Callback(hObject, eventdata, handles)
% hObject    handle to btnReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bpm,'String','0');
set(handles.usia,'String','0');
set(handles.mood,'String','0');
set(handles.hasil,'String','');
cla(handles.img);



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
