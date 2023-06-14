function varargout = dittoGUI(varargin)
%DITTOGUI MATLAB code file for dittoGUI.fig
%      DITTOGUI, by itself, creates a new DITTOGUI or raises the existing
%      singleton*.
%
%      H = DITTOGUI returns the handle to a new DITTOGUI or the handle to
%      the existing singleton*.
%
%      DITTOGUI('Property','Value',...) creates a new DITTOGUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to dittoGUI_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      DITTOGUI('CALLBACK') and DITTOGUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in DITTOGUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dittoGUI

% Last Modified by GUIDE v2.5 11-Jun-2023 03:11:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dittoGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @dittoGUI_OutputFcn, ...
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


% --- Executes just before dittoGUI is made visible.
function dittoGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for dittoGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dittoGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dittoGUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function sliderBpm_Callback(hObject, eventdata, handles)
% hObject    handle to sliderBpm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(hObject, 'Value');
set(handles.bpm,'String', num2str(sliderValue));


% --- Executes during object creation, after setting all properties.
function sliderBpm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderBpm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function sliderUsia_Callback(hObject, eventdata, handles)
% hObject    handle to sliderUsia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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

% --- Executes on slider movement.
function sliderMood_Callback(hObject, eventdata, handles)
% hObject    handle to sliderMood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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

set(handles.textHasil,'String', result);

sangat = imread('recommended.jpg');
lumayan = imread('cukup_recommended.png');
buruk = imread('not_recommended.jpg');

if result <= 5
    ucapan = sprintf("%s","Tidak Direkomendasikan :(");
    imshow(buruk);
elseif result > 5 && result <= 7.1
    ucapan = sprintf("%s","Cukup Direkomendasikan");
    imshow(lumayan);
elseif result > 7.1
    ucapan = sprintf("%s","Sangat Direkomendasikan :)");
    imshow(sangat);
end

set(handles.textHasilArti, 'String', ucapan);
