pubfig_bw(gcf)
pubfig_rm_labels(gcf)


% Change size of the figure legend and axis points
hdl = findobj(gcf,'Type','axes');
for i = 1:length( hdl )
    set(hdl(i), 'FontSize',24);
    set(hdl(i), 'LineWidth',3); 
end

hdl = findobj(gcf,'Type','text');
for i = 1:length( hdl )
    set(hdl(i), 'FontSize',24); 
end

% Change all lines and markers to B&W
hdl = findobj(gcf,'Type','line');
for i = 1:length( hdl )
    set(hdl(i), 'LineWidth',1);
end

set( get(gca, 'xlabel'), 'FontSize', 24);
set( get(gca, 'ylabel'), 'FontSize', 24);

%set(gcf, 'PaperPosition', [0, 0, 8, 8]);
set(gcf, 'units', 'centimeters', 'pos', [0 0 30 30])
pbaspect(gca,[1,1,1])
legend(gca,'hide')
