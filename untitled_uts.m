function varargout = untitled_uts(varargin)
% UNTITLED_UTS MATLAB code for untitled_uts.fig
%      UNTITLED_UTS, by itself, creates a new UNTITLED_UTS or raises the existing
%      singleton*.
%
%      H = UNTITLED_UTS returns the handle to a new UNTITLED_UTS or the handle to
%      the existing singleton*.
%
%      UNTITLED_UTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED_UTS.M with the given input arguments.
%
%      UNTITLED_UTS('Property','Value',...) creates a new UNTITLED_UTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_uts_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_uts_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled_uts

% Last Modified by GUIDE v2.5 28-Apr-2021 22:35:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_uts_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_uts_OutputFcn, ...
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


% --- Executes just before untitled_uts is made visible.
function untitled_uts_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled_uts (see VARARGIN)

% Choose default command line output for untitled_uts
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled_uts wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_uts_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]= uigetfile({'*.jpg','*png'});
picture= imread([pathname,filename]);

axes(handles.axes1);
imshow(picture);

%Citra RGB
R = picture(:,:,1);
G = picture(:,:,2);
B = picture(:,:,3);

Red = cat(3,R,G*0,B*0);
Green = cat(3,R*0,G,B*0);
Blue = cat(3,R*0,G*0,B);

axes(handles.axes2);
imshow(Red);
axes(handles.axes3);
histogram(Red(:),256,'FaceColor','r','EdgeColor','r')
set(gca,'XLim',[0 255])
set(gca,'YLim',[0 15000])
grid on

axes(handles.axes4);
imshow(Green);
axes(handles.axes5);
histogram(Red(:),256,'FaceColor','g','EdgeColor','g')
set(gca,'XLim',[0 255])
set(gca,'YLim',[0 15000])
grid on

axes(handles.axes6);
imshow(Blue);
axes(handles.axes7)
histogram(Red(:),256,'FaceColor','b','EdgeColor','b')
set(gca,'XLim',[0 255])
set(gca,'YLim',[0 15000])
grid on
