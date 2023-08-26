function varargout = loan_repayment(varargin)
% LOAN_REPAYMENT MATLAB code for loan_repayment.fig
%      LOAN_REPAYMENT, by itself, creates a new LOAN_REPAYMENT or raises the existing
%      singleton*.
%
%      H = LOAN_REPAYMENT returns the handle to a new LOAN_REPAYMENT or the handle to
%      the existing singleton*.
%
%      LOAN_REPAYMENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOAN_REPAYMENT.M with the given input arguments.
%
%      LOAN_REPAYMENT('Property','Value',...) creates a new LOAN_REPAYMENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before loan_repayment_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to loan_repayment_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help loan_repayment

% Last Modified by GUIDE v2.5 02-Apr-2021 15:42:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 0;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @loan_repayment_OpeningFcn, ...
                   'gui_OutputFcn',  @loan_repayment_OutputFcn, ...
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


% --- Executes just before loan_repayment is made visible.
function loan_repayment_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to loan_repayment (see VARARGIN)

% Choose default command line output for loan_repayment
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes loan_repayment wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = loan_repayment_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function loan_amount_slider_Callback(hObject, eventdata, handles)
% hObject    handle to loan_amount_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

loan=num2str(get(handles.loan_amount_slider,'Value'))
set(handles.loan_amount_txt,'String',loan)
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function loan_amount_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loan_amount_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function interest_rate_slider_Callback(hObject, eventdata, handles)
% hObject    handle to interest_rate_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

interest=num2str(get(handles.interest_rate_slider,'Value'))
set(handles.interest_rate_txt,'String',interest)
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function interest_rate_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to interest_rate_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function monthly_payment_txt_Callback(hObject, eventdata, handles)
% hObject    handle to monthly_payment_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of monthly_payment_txt as text
%        str2double(get(hObject,'String')) returns contents of monthly_payment_txt as a double

payment=str2double(get(handles.monthly_payment_txt,'string'))
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function monthly_payment_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to monthly_payment_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function total_payment_txt_Callback(hObject, eventdata, handles)
% hObject    handle to total_payment_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of total_payment_txt as text
%        str2double(get(hObject,'String')) returns contents of total_payment_txt as a double


% --- Executes during object creation, after setting all properties.
function total_payment_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to total_payment_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function total_interest_txt_Callback(hObject, eventdata, handles)
% hObject    handle to total_interest_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of total_interest_txt as text
%        str2double(get(hObject,'String')) returns contents of total_interest_txt as a double


% --- Executes during object creation, after setting all properties.
function total_interest_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to total_interest_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in reset_button.
function reset_button_Callback(hObject, eventdata, handles)
% hObject    handle to reset_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 button=questdlg('Are you sure you want to reset the values?','Reset?','Yes','No','Yes')
 
    if strcmp(button,'No')
            
    else
        set(handles.loan_amount_slider,'Value',5000);
        set(handles.loan_amount_txt,'String','5000');
        set(handles.interest_rate_slider,'Value',1.5);
        set(handles.interest_rate_txt,'String','1.5');
        set(handles.monthly_payment_txt,'String','');
        set(handles.total_payment_txt,'String','');
        set(handles.total_interest_txt,'String','');
        set(handles.table,'Data','');
        axes(handles.graph)
        plot(0)
        legend('off')
        grid off

     end

% --- Executes on button press in calculate_button.
function calculate_button_Callback(hObject, eventdata, handles)
% hObject    handle to calculate_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

loan_amount=get(handles.loan_amount_slider,'Value');
interest_rate=get(handles.interest_rate_slider,'Value');
payment_amount=str2double(get(handles.monthly_payment_txt,'String'));

%Warning Message
balance= loan_amount;
interest= balance*(interest_rate/100)/12;
interest= round(interest,2);

if isnan(payment_amount)|| ~isreal(payment_amount)
    button=questdlg('Monthly payment must contain numbers only.Do you want to re-enter a new value?','Error','Yes','No','Yes')
 
    if strcmp(button,'No')
            close
            breaks=1;
            return
            
        else
            prompt = {'Enter New Monthly Payment Value : '};
            dlgtitle = 'Re-enter ';
            numlines=1;
            defaultanswer={'1000'};
            options.Resize='on';
            answer_reenter = inputdlg(prompt,dlgtitle,numlines,defaultanswer,options);
            breaks=0;
            
            payment=answer_reenter{1};
            payment_amount=str2double(payment);
    end
        if breaks==1
                nothing=0;clear nothing;
            else
              set(handles.monthly_payment_txt,'String',payment_amount)
        end
end

while payment_amount<interest
   
    button=questdlg('Monthly payment too small(cannot be less than interest).Do you want to re-enter a new value?','Error','Yes','No','Yes')
 
    if strcmp(button,'No')
            close
            breaks=1;
            return
            
        else
            prompt = {'Enter New Monthly Payment Value : '};
            dlgtitle = 'Re-enter ';
            numlines=1;
            defaultanswer={'1000'};
            options.Resize='on';
            answer_reenter = inputdlg(prompt,dlgtitle,numlines,defaultanswer,options);
            breaks=0;
            
            payment=answer_reenter{1};
            payment_amount=str2double(payment);
    end
        if breaks==1
                nothing=0;clear nothing;
            else
              set(handles.monthly_payment_txt,'String',payment_amount)
        end
end

while loan_amount>105000 || loan_amount<5000
    button=questdlg('Loan Amount must be more than RM5000 and less than RM105000.Do you want to re-enter a new value?','Error','Yes','No','Yes')
 
    if strcmp(button,'No')
            close
            breaks=1;
            return
            
        else
            prompt = {'Enter New Loan Amount : '};
            dlgtitle = 'Re-enter ';
            numlines=1;
            defaultanswer={'5000'};
            options.Resize='on';
            answer_reenter = inputdlg(prompt,dlgtitle,numlines,defaultanswer,options);
            breaks=0;
            
            loan_amount=str2double(answer_reenter{1});
    end
        if breaks==1
                nothing=0;clear nothing;
        else
              set(handles.loan_amount_slider,'Value',loan_amount)
              set(handles.loan_amount_txt,'String',loan_amount)
        end
end

while interest_rate>11.5 || interest_rate<1.5
    button=questdlg('Interest Rate must be more than 1.5% and less than 11.5%.Do you want to re-enter a new value?','Error','Yes','No','Yes')
 
    if strcmp(button,'No')
            close
            breaks=1;
            return
            
        else
            prompt = {'Enter New Interest Rate : '};
            dlgtitle = 'Re-enter ';
            numlines=1;
            defaultanswer={'1.5'};
            options.Resize='on';
            answer_reenter = inputdlg(prompt,dlgtitle,numlines,defaultanswer,options);
            breaks=0;
            
            interest= str2double(answer_reenter{1});
    end
        if breaks==1
                nothing=0;clear nothing;
        else
              set(handles.interest_rate_slider,'Value',interest)
              set(handles.interest_rate_txt,'String',interest)
        end
end

%Calculation
balance= loan_amount;
total_interest= 0;
done= 0;
x_max=0;

empty= [];
set(handles.table,'Data',empty)

while ~done
    if balance <= payment_amount
        interest= 0;
        payment_amount= balance;
        done= 1;
    else
        interest= balance*(interest_rate/100)/12;
        interest= round(interest,2);
    end
    
    principal= payment_amount-interest;
    ending_balance= balance- principal;
    
    T=[balance,payment_amount,interest,principal,ending_balance];
    
    oldData = get(handles.table,'Data');
    newData = [oldData; T];
    set(handles.table,'Data',newData)
    
    balance= ending_balance;
    total_interest= total_interest + interest;
    x_max= x_max + 1;
end

%Total Repayment
total_repayment= loan_amount + total_interest;
total_repayment= round(total_repayment,2);
set(handles.total_payment_txt,'String',total_repayment)

%Total Interest Cost
total_interest= round(total_interest,2);
set(handles.total_interest_txt,'String',total_interest)

%Graph
xlim([1 x_max]);
ylim([0 loan_amount]);
axes(handles.graph)
t= get(handles.table,'Data');
plot(t)
legend('Beginning Balance','Payment','Interest','Principal','Ending Balance')
title('Graph')
xlabel('Month')
ylabel('RM')


function loan_amount_txt_Callback(hObject, eventdata, handles)
% hObject    handle to loan_amount_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of loan_amount_txt as text
%        str2double(get(hObject,'String')) returns contents of loan_amount_txt as a double

loan=str2num(get(handles.loan_amount_txt,'String'))

%Warning Message
while loan>105000 || loan<5000
    button=questdlg('Loan Amount must be more than RM5000 and less than RM105000.Do you want to re-enter a new value?','Error','Yes','No','Yes')
    
    if strcmp(button,'No')
            close
            breaks=1;
            return
            
        else
            prompt = {'Enter New Loan Amount : '};
            dlgtitle = 'Re-enter ';
            numlines=1;
            defaultanswer={'1'};
            options.Resize='on';
            answer_reenter = inputdlg(prompt,dlgtitle,numlines,defaultanswer,options);
            breaks=0;
            
            loan=str2double(answer_reenter{1});
    end
        if breaks==1
                nothing=0;clear nothing;
        else
              set(handles.loan_amount_slider,'Value',loan)
              set(handles.loan_amount_txt,'String',loan)
        end
end

set(handles.loan_amount_slider,'Value',loan)
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function loan_amount_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loan_amount_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function interest_rate_txt_Callback(hObject, eventdata, handles)
% hObject    handle to interest_rate_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of interest_rate_txt as text
%        str2double(get(hObject,'String')) returns contents of interest_rate_txt as a double

interest=str2num(get(handles.interest_rate_txt,'String'))

%Warning Message
if interest>11.5 || interest<1.5
    button=questdlg('Interest Rate must be more than 1.5% and less than 11.5%.Do you want to re-enter a new value?','Error','Yes','No','Yes')
 
    if strcmp(button,'No')
            close
            breaks=1;
            return
            
        else
            prompt = {'Enter New Interest Rate : '};
            dlgtitle = 'Re-enter ';
            numlines=1;
            defaultanswer={'1.5'};
            options.Resize='on';
            answer_reenter = inputdlg(prompt,dlgtitle,numlines,defaultanswer,options);
            breaks=0;
            
            interest= str2double(answer_reenter{1});
    end
        if breaks==1
                nothing=0;clear nothing;
        else
              set(handles.interest_rate_slider,'Value',interest)
              set(handles.interest_rate_txt,'String',interest)
        end
end

set(handles.interest_rate_slider,'Value',interest)
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function interest_rate_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to interest_rate_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function reset_button_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reset_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function graph_CreateFcn(hObject, eventdata, handles)
% hObject    handle to graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate graph

% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --------------------------------------------------------------------
function file_menu_Callback(hObject, eventdata, handles)
% hObject    handle to file_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function open_menu_Callback(hObject, eventdata, handles)
% hObject    handle to open_menu (see GCBO)
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
function background_menu_Callback(hObject, eventdata, handles)
% hObject    handle to background_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function white_background_menu_Callback(hObject, eventdata, handles)
% hObject    handle to white_background_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Color','white')
set(handles.title,'BackgroundColor','white')
set(handles.loan_amount,'BackgroundColor','white')
set(handles.interest_rate,'BackgroundColor','white')
set(handles.monthly_payment,'BackgroundColor','white')
set(handles.total_repayment,'BackgroundColor','white')
set(handles.total_interest,'BackgroundColor','white')


% --------------------------------------------------------------------
function blue_background_menu_Callback(hObject, eventdata, handles)
% hObject    handle to blue_background_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.figure1,'Color','blue')
set(handles.title,'BackgroundColor','blue')
set(handles.loan_amount,'BackgroundColor','blue')
set(handles.interest_rate,'BackgroundColor','blue')
set(handles.monthly_payment,'BackgroundColor','blue')
set(handles.total_repayment,'BackgroundColor','blue')
set(handles.total_interest,'BackgroundColor','blue')

% --------------------------------------------------------------------
function grid_menu_Callback(hObject, eventdata, handles)
% hObject    handle to grid_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function text_colour_menu_Callback(hObject, eventdata, handles)
% hObject    handle to text_colour_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function new_menu_Callback(hObject, eventdata, handles)
% hObject    handle to new_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.loan_amount_slider,'Value',5000);
set(handles.loan_amount_txt,'String','5000');
set(handles.interest_rate_slider,'Value',1.5);
set(handles.interest_rate_txt,'String','1.5');
set(handles.monthly_payment_txt,'String','');
set(handles.total_payment_txt,'String','');
set(handles.total_interest_txt,'String','');
set(handles.table,'Data','');
axes(handles.graph)
plot(0)
legend('off')
grid off
set(handles.figure1,'Color','#d1edf2')
set(handles.title,'BackgroundColor','#d1edf2')
set(handles.loan_amount,'BackgroundColor','#d1edf2')
set(handles.interest_rate,'BackgroundColor','#d1edf2')
set(handles.monthly_payment,'BackgroundColor','#d1edf2')
set(handles.total_repayment,'BackgroundColor','#d1edf2')
set(handles.total_interest,'BackgroundColor','#d1edf2')

% --------------------------------------------------------------------
function exit_menu_Callback(hObject, eventdata, handles)
% hObject    handle to exit_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
closereq();

% --------------------------------------------------------------------
function save_menu_Callback(hObject, eventdata, handles)
% hObject    handle to save_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function print_menu_Callback(hObject, eventdata, handles)
% hObject    handle to print_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

orient landscape
file = uiputfile('*.pdf');
print(file, '-dpdf');

% --------------------------------------------------------------------
function black_graph_menu_Callback(~, eventdata, handles)
% hObject    handle to black_graph_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
title('Graph','Color','k')
xlabel('Month','Color','k')
ylabel('RM','Color','k')

% --------------------------------------------------------------------
function white_graph_menu_Callback(hObject, eventdata, handles)
% hObject    handle to white_graph_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
title('Graph','Color','w')
xlabel('Month','Color','w')
ylabel('RM','Color','w')

% --------------------------------------------------------------------
function blue_graph_menu_Callback(hObject, eventdata, handles)
% hObject    handle to blue_graph_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
title('Graph','Color','b')
xlabel('Month','Color','b')
ylabel('RM','Color','b')

% --------------------------------------------------------------------
function purple_graph_menu_Callback(hObject, eventdata, handles)
% hObject    handle to purple_graph_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
title('Graph','Color','m')
xlabel('Month','Color','m')
ylabel('RM','Color','m')

% --------------------------------------------------------------------
function red_graph_menu_Callback(hObject, eventdata, handles)
% hObject    handle to red_graph_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
title('Graph','Color','r')
xlabel('Month','Color','r')
ylabel('RM','Color','r')

% --------------------------------------------------------------------
function none_background_menu_Callback(hObject, eventdata, handles)
% hObject    handle to none_background_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Color','#d1edf2')
set(handles.title,'BackgroundColor','#d1edf2')
set(handles.loan_amount,'BackgroundColor','#d1edf2')
set(handles.interest_rate,'BackgroundColor','#d1edf2')
set(handles.monthly_payment,'BackgroundColor','#d1edf2')
set(handles.total_repayment,'BackgroundColor','#d1edf2')
set(handles.total_interest,'BackgroundColor','#d1edf2')

% --------------------------------------------------------------------
function red_background_menu_Callback(hObject, eventdata, handles)
% hObject    handle to red_background_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Color','red')
set(handles.title,'BackgroundColor','red')
set(handles.loan_amount,'BackgroundColor','red')
set(handles.interest_rate,'BackgroundColor','red')
set(handles.monthly_payment,'BackgroundColor','red')
set(handles.total_repayment,'BackgroundColor','red')
set(handles.total_interest,'BackgroundColor','red')

% --------------------------------------------------------------------
function yellow_background_menu_Callback(hObject, eventdata, handles)
% hObject    handle to yellow_background_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Color','yellow')
set(handles.title,'BackgroundColor','yellow')
set(handles.loan_amount,'BackgroundColor','yellow')
set(handles.interest_rate,'BackgroundColor','yellow')
set(handles.monthly_payment,'BackgroundColor','yellow')
set(handles.total_repayment,'BackgroundColor','yellow')
set(handles.total_interest,'BackgroundColor','yellow')

% --------------------------------------------------------------------
function green_background_menu_Callback(hObject, eventdata, handles)
% hObject    handle to green_background_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Color','green')
set(handles.title,'BackgroundColor','green')
set(handles.loan_amount,'BackgroundColor','green')
set(handles.interest_rate,'BackgroundColor','green')
set(handles.monthly_payment,'BackgroundColor','green')
set(handles.total_repayment,'BackgroundColor','green')
set(handles.total_interest,'BackgroundColor','green')

% --------------------------------------------------------------------
function cyan_background_menu_Callback(hObject, eventdata, handles)
% hObject    handle to cyan_background_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Color','cyan')
set(handles.title,'BackgroundColor','cyan')
set(handles.loan_amount,'BackgroundColor','cyan')
set(handles.interest_rate,'BackgroundColor','cyan')
set(handles.monthly_payment,'BackgroundColor','cyan')
set(handles.total_repayment,'BackgroundColor','cyan')
set(handles.total_interest,'BackgroundColor','cyan')

% --------------------------------------------------------------------
function magenta_background_menu_Callback(hObject, eventdata, handles)
% hObject    handle to magenta_background_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'Color','magenta')
set(handles.title,'BackgroundColor','magenta')
set(handles.loan_amount,'BackgroundColor','magenta')
set(handles.interest_rate,'BackgroundColor','magenta')
set(handles.monthly_payment,'BackgroundColor','magenta')
set(handles.total_repayment,'BackgroundColor','magenta')
set(handles.total_interest,'BackgroundColor','magenta')


% --------------------------------------------------------------------
function grid_off_menu_Callback(hObject, eventdata, handles)
% hObject    handle to grid_off_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.graph)
grid off

% --------------------------------------------------------------------
function grid_on_menu_Callback(hObject, eventdata, handles)
% hObject    handle to grid_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.graph)
grid on


% --------------------------------------------------------------------
function png_save_menu_Callback(hObject, eventdata, handles)
% hObject    handle to png_save_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
orient landscape
file = uiputfile('*.png');
print(file, '-dpng');

% --------------------------------------------------------------------
function jpg_save_menu_Callback(hObject, eventdata, handles)
% hObject    handle to jpg_save_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
orient landscape
file = uiputfile('*.jpeg');
print(file, '-djpeg');

% --------------------------------------------------------------------
function pdf_save_menu_Callback(hObject, eventdata, handles)
% hObject    handle to pdf_save_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
orient landscape
file = uiputfile('*.pdf');
print(file, '-dpdf');


% --------------------------------------------------------------------
function line_style_menu_Callback(hObject, eventdata, handles)
% hObject    handle to line_style_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function dotted_menu_Callback(hObject, eventdata, handles)
% hObject    handle to dotted_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph,'LineStyleOrder',':')

% --------------------------------------------------------------------
function dashed_menu_Callback(hObject, eventdata, handles)
% hObject    handle to dashed_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph,'LineStyleOrder','--')

% --------------------------------------------------------------------
function solid_menu_Callback(hObject, eventdata, handles)
% hObject    handle to solid_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph,'LineStyleOrder','-')
