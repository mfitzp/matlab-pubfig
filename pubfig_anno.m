function pubfig_anno(fh,annotations)


% First get the figure's data-cursor mode, activate it, and set some of its properties
cursorMode = datacursormode(fh);
% Delete previous data tips
cursorMode.removeAllDataCursors()
set(cursorMode, 'enable','on', 'NewDataCursorOnClick',false, 'SnapToDataVertex', 'on', 'UpdateFcn',@dummy_updatefcn);
% Note: the optional @setDataTipTxt is used to customize the data-tip's appearance
 
% Note: the following code was adapted from %matlabroot%\toolbox\matlab\graphics\datacursormode.m

for i = 1:length( annotations )

    % Create a new data tip
    hTarget = findobj(fh,'Type','line');
    hDatatip = cursorMode.createDatatip(hTarget);
     
    % Create a copy of the context menu for the datatip:
    set(hDatatip,'UIContextMenu',get(cursorMode,'UIContextMenu'));
    set(hDatatip,'HandleVisibility','off');
    set(hDatatip,'Host',hTarget);
    set(hDatatip,'ViewStyle','datatip');
    
    % Update the datatip marker appearance
    set(hDatatip, 'MarkerSize',2, 'MarkerFaceColor','none', ...
                  'MarkerEdgeColor','k', 'Marker','o', 'HitTest','on',...
                  'BackgroundColor', 'w', 'FontSize', 14);
    
    [x,y,label] = annotations{i,:};
    fprintf ( 1, 'Annotating... %s at %s %s\n', label, x, y); 

    % Set the data-tip orientation to top-right rather than auto
    %set(hDatatip,'OrientationMode','manual');

    if y > 0
        set(hDatatip,'Orientation','top-left');
    elseif y < 0
        set(hDatatip,'Orientation','bottom-left');
    end

    % Move the datatip to the x,y position
    position = [x,y,0; x,y,1];
    update(hDatatip, position);

    % Update the label now after positioning because of the UpdateFunction
    set(hDatatip,'String', sprintf('%s (%4.2f)',label,x) );
    
end


