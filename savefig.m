function pubfig_m(fn, dim)
    %set(gcf, 'units', 'centimeters', 'pos', [0 0 dim dim])
    set(gcf,'PaperUnits','centimeters','PaperPosition', [0 0 dim dim])
    print('-dtiff','-r300', fn)
