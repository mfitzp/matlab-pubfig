function pubfig_bw(fh)

pubfig(fh)

% fh is a handle to the figure; 
set(fh, 'color', 'white'); % sets the color to white, get rid of border

% Change all lines and markers to B&W
hdl = findobj(fh,'Type','line');
for i = 1:length( hdl )
    set(hdl(i), 'Color','k'); 
    set(hdl(i), 'MarkerEdgeColor','k');
    set(hdl(i), 'MarkerFaceColor','k'); 
    set(hdl(i), 'MarkerSize',7); 
end

% Change all non-line markers to B&W
hdl = findobj(fh,'Type','patch');
for i = 1:length( hdl )
    set(hdl, 'MarkerEdgeColor','k');
    set(hdl, 'MarkerFaceColor','k'); 
    set(hdl, 'Markersize',7); 
end




%R=corrcoef(X,Y)
%R_squared=R(2)^2