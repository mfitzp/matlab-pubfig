function pubfig_bw(fh)

% fh is a handle to the figure; 
set(fh, 'color', 'white'); % sets the color to white, get rid of border

% Change size of the figure legend and axis points
hdl = findobj(fh,'Type','axes');
for i = 1:length( hdl )
    set(hdl(i), 'FontSize',8);
    set(hdl(i), 'LineWidth',1); 
end

hdl = findobj(fh,'Type','text');
for i = 1:length( hdl )
    set(hdl(i), 'FontSize',8); 
end

% Change all lines and markers to B&W
hdl = findobj(fh,'Type','line');
for i = 1:length( hdl )
    set(hdl(i), 'LineWidth',1);
end


set( get(gca, 'title'), 'Visible', 'off');

set( get(gca, 'xlabel'), 'FontSize', 8);
set( get(gca, 'ylabel'), 'FontSize', 8);

%set(fh, 'PaperPosition', [0, 0, 8, 8]);
set(fh, 'units', 'centimeters', 'pos', [0 0 10 10])
pbaspect(gca,[1,1,1])
legend(gca,'hide')



%R=corrcoef(X,Y)
%R_squared=R(2)^2