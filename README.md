# Tugas_UTS_Pengolahan_Citra
Konversi RGB &amp; Menampilkan Histogram

**_Tampilan awal :_**

![image](https://user-images.githubusercontent.com/56193251/116456894-f9840a00-a88c-11eb-9b4f-085e85701ebe.png)

**_Setelah di Run :_**

![image](https://user-images.githubusercontent.com/56193251/116457068-29cba880-a88d-11eb-9f33-17baa3cf9c5f.png)

_**Sintak :**_

_Executes on button press in pushbutton1.
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

%Histogram
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
grid on_
