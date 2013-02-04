function pubfig_bw(fh)

% fh is a handle to the figure; 
set(fh, 'color', 'white'); % sets the color to white, get rid of border

% Change all lines and markers to B&W
hdl = findobj(fh,'Type','line');
for i = 1:length( hdl )
    set(hdl(i), 'Color','k'); 
    set(hdl(i), 'MarkerEdgeColor','k');
    set(hdl(i), 'MarkerFaceColor','k'); 
    set(hdl(i), 'MarkerSize',10); 
end

% Change all non-line markers to B&W
hdl = findobj(fh,'Type','patch');
for i = 1:length( hdl )
    set(hdl, 'MarkerEdgeColor','k');
    set(hdl, 'MarkerFaceColor','k'); 
    set(hdl, 'Markersize',10); 
end

% Change size of the figure legend and axis points
hdl = findobj(fh,'Type','axes');
for i = 1:length( hdl )
    set(hdl(i), 'FontSize',20);
    set(hdl(i), 'LineWidth',2); 
end

hdl = findobj(fh,'Type','text');
for i = 1:length( hdl )
    set(hdl(i), 'FontSize',20); 
end

set( get(gca, 'title'), 'Visible', 'off');

set( get(gca, 'xlabel'), 'FontSize', 20);
set( get(gca, 'ylabel'), 'FontSize', 20);

set(fh, 'PaperPosition', [0.5, 0.5, 8, 8]);
pbaspect(gca,[1,1,1])
legend(gca,'hide')



%R=corrcoef(X,Y)
%R_squared=R(2)^2