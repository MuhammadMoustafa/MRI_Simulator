function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 15-May-2017 16:30:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
button_state = get(hObject,'Value');

if button_state == get(hObject,'Max')
    set(handles.togglebutton1, 'String', 'Image 2');

elseif button_state == get(hObject,'Min')
    set(handles.togglebutton1, 'String', 'Image 1');

end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imsave

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

N=str2double(get(handles.edit1,'String'));
global shift;
shift = 2;

prepseq = get(handles.popupmenu1,'Value');
acqseq = get(handles.popupmenu2,'Value');


% set tissue properties
Prop = zeros(N,N,3);

if( get(handles.togglebutton1,'Value') == get(handles.togglebutton1,'Min'))
    switch prepseq
        case 1
            pre = 'None';
        case 2 
            pre = 'IR';
        case 3 
            pre = 'T2Prep';
        case 4 
            pre = 'Tagging';
    end
    
    switch acqseq
        case 1
            acq = 'GRE';
        case 2 
            acq = 'SSFP';
        case 3 
            acq = 'SE';
        case 4 
            acq = 'FSE';
    end
    
    if  get(handles.radiobutton1,'Value') == 1
        set(handles.text3, 'String','Phantom 1');
        Prop = generatedPhantom(Prop, 1 , N);
    elseif get(handles.radiobutton2,'Value') == 1
        set(handles.text3, 'String','Phantom 2');
        Prop = generatedPhantom(Prop, 2 , N);
    else
        set(handles.text3, 'String','Phantom 3');
        Prop = generatedPhantom(Prop, 3 , N);
    end
    
    set(handles.text1, 'String', pre);
    set(handles.text2, 'String', acq);
    
else
    switch prepseq
        case 1
            pre = 'None';
        case 2 
            pre = 'IR';
        case 3 
            pre = 'T2Prep';
        case 4 
            pre = 'Tagging';
    end

    switch acqseq
        case 1
            acq = 'GRE';
        case 2 
            acq = 'SSFP';
        case 3 
            acq = 'SE';
        case 4 
            acq = 'FSE';
    end
    
    if  get(handles.radiobutton1,'Value') == 1
        set(handles.text6, 'String','Phantom 1');
        Prop = generatedPhantom(Prop, 1 , N);
    elseif get(handles.radiobutton2,'Value') == 1
        set(handles.text6, 'String','Phantom 2');
        Prop = generatedPhantom(Prop, 2 , N);
    else
        set(handles.text6, 'String','Phantom 3');
        Prop = generatedPhantom(Prop, 3 , N);
    end
    
    set(handles.text4, 'String', pre);
    set(handles.text5, 'String', acq);
end
Prop(:,:,1)= 1000*Prop(:,:,1);
Prop(:,:,2)= 50*Prop(:,:,2);

progress = 0.05;
h = waitbar(progress,'Loading...');
progress = 0;


% define Image & Kspace  
Image = zeros(N,N,3);
Image(:,:,3)=1;

Kspace = zeros(N,N);
Kspace = complex(Kspace);


prepseq = get(handles.popupmenu1,'Value');

switch prepseq
    case 1
        file = 'NullPrep.xml';
    case 2 
        file = 'IR.xml';
    case 3 
        file = 'T2Prep.xml';
    case 4 
        file = 'Tagging.xml';
end

Prep = xml2struct(file);
PrepAngle1 = str2num(Prep.Sequence.RFPulse1.Attributes.Angle);
PrepTime = str2num(Prep.Sequence.Time.Attributes.Time);
PrepAngle2 = str2num(Prep.Sequence.RFPulse2.Attributes.Angle);
PrepDeacyFlag = str2double(Prep.Sequence.Decay.Attributes.Flag);
Tagging = str2double(Prep.Sequence.Tagging.Attributes.Flag);
PrepGRXFlag = str2double(Prep.Sequence.GRX.Attributes.Flag);
PrepGRYFlag = str2double(Prep.Sequence.GRY.Attributes.Flag);

acqseq = get(handles.popupmenu2,'Value');

switch acqseq
    case 1
        file = 'GRE.xml';
    case 2 
        file = 'SSFP.xml';
    case 3 
        file = 'SE.xml';
    case 4 
        file = 'FSE.xml';
end
Seq = xml2struct(file);

excitationAngle = str2num(Seq.Sequence.RFPulse.Attributes.Angle);
TE = str2double(Seq.Sequence.Time.Attributes.TE);
TR = str2double(Seq.Sequence.Time.Attributes.TR);

step = str2double(Seq.Sequence.Main.Attributes.Repeat); % how many line in K-space to be read in one cycle
inversionRfAngle = str2num(Seq.Sequence.Main.RFSeq.Attributes.Angle); % flip angle for the sequence usually=0 except for SE
inversionRfAxis = Seq.Sequence.Main.RFSeq.Attributes.Axis;
ThetaY_Spoiler = str2double(Seq.Sequence.Main.GRYSpoiler.Attributes.Flag); 
ThetaX_Spoiler = str2double(Seq.Sequence.Main.GRXSpoiler.Attributes.Flag);


if( get(handles.togglebutton1,'Value') == get(handles.togglebutton1,'Min'))
   axes(handles.axes2);
   cla reset
   hold on
else
   axes(handles.axes4);
   cla reset
   hold on
end

%%% Sequence Diagram

    draw (1,PrepAngle1,1,0);
    if(PrepGRXFlag == 1)
        draw (2,0,1,0);
    end
    if(PrepGRYFlag == 1)
        draw (3,0,1,0);
    end
    draw (1,PrepAngle2,1,0);
    
    draw (1,excitationAngle,1,0);
    
    for i=1:step         
    draw (1,inversionRfAngle,1,0);
    
    draw (2,0,1,0);

    draw (3,0,1,1);
      
   if (ThetaY_Spoiler == 1)
    draw (2,0,0,0);
   end
       
   if (ThetaX_Spoiler == 1)
    draw (3,0,0,0);
   end
   
   end
hold off


% Acquisition loop
for cycle = 1:step:N

    %%% Preparation Phase
    Image = rf(PrepAngle1 , 'Y' , Image , N);
    
    if(PrepGRXFlag == 1)
        Image = gradient( 0, 2*pi, 'X' , Image ,N);
    end
    
    if(PrepGRYFlag == 1)
        Image = gradient( 0, 2*pi, 'Y' , Image ,N);
    end
    
    if( PrepDeacyFlag == 1)%%% error as T1 Must be not divided by 2
        Image = decay_recovery(PrepTime, Prop ,Image , N);    
    end
    
    Image = rf(PrepAngle2 , 'Y' , Image , N);
    
    if(PrepGRXFlag == 1)
        Image(:,:,1)=0;
        Image(:,:,2)=0;
    end
    
    if(PrepGRYFlag == 1)
        Image(:,:,1)=0;
        Image(:,:,2)=0;
    end
    %%% Acquisition Phase
    
    %%% Rf Pulse ... Rotation around Y   
    if (Tagging)
    excitationAngle = asin (cycle /N);
    end
    Image = rf(excitationAngle , 'Y' , Image , N);
        
    for line=0:(step-1)
    if(cycle+line<=N)
         
        Image = decay_recovery(TE/2 , Prop ,Image , N);
        
        %%% Rf Pulse ... Rotation around Y      
        Image = rf(inversionRfAngle , inversionRfAxis , Image , N);
    
        %%% first deacy and recovery ... before readout
        Image = decay_recovery(TE/2 , Prop ,Image , N);
        
        %%% Y Gradient phase encoding
        Image = gradient( 0,2*pi*(cycle+line) , 'Y' , Image ,N);
       
        %%% Readout & X Gradient frequency encoding
        [Image, Kspace] = readOut(2*pi/N, Image , Kspace ,N , cycle+line);
       
        if (ThetaY_Spoiler == 1)
        %%% y Gradient phase encoding .... spoiler
        Image = gradient( 0,-2*pi*(cycle+line) , 'Y' , Image ,N);
        end
        
        if (ThetaX_Spoiler == 1)
        %%% X Gradient phase encoding .... spoiler
        Image = gradient( 0,-2*pi, 'X' , Image ,N);
        end
    end    
    end
    
    Image = decay_recovery(TR-step*TE , Prop ,Image , N);  
    progress = 0.5*cycle/N;
    waitbar(progress, h ,'Loading...');
end

% Show Image
img = abs(ifft2(Kspace));    
img2 = zeros(N,N);

%%% to mirror the image

for i=1:N
    for j=1:N
        img2( abs(i-N)+1 , abs(j-N)+1) = img ( i,j );
    end
    progress = 0.5*i/N -0.1;
    waitbar(progress,h,'Loading...');
end

if( get(handles.togglebutton1,'Value') == get(handles.togglebutton1,'Min'))    
    axes(handles.axes1);
    imshow(img2,[]);    
else
    axes(handles.axes3);
    imshow(img2,[]);
end


progress = 1;
waitbar(progress,h,'Done');
close(h);
% set(handles.pushbutton1,'string','running','ForegroundColor','red','enable','off');
