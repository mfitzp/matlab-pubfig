pubfig_bw(gcf)
pubfig_rm_labels(gcf)

hdl = findobj(gcf,'Type','line');
for i = 1:length( hdl )
    set(hdl(i), 'MarkerSize',6); 
end

pubfig_m(gcf,'1','marker','o')
pubfig_m(gcf,'2','marker','o')
pubfig_m(gcf,'3','marker','o')

pubfig_m(gcf,'1','face','w')
pubfig_m(gcf,'2','face',[0.8,0.8,0.8])
pubfig_m(gcf,'3','face','k')

pubfig_m(gcf,'.*','size',6)