fontsize = 12;
fontsize2 = 10;
linewidth = 1.5; 
dim1 = [.16 .45 .2 .3];
dim2 = [.60 .45 .2 .3];
dim3 = [.16 .0001 .2 .3];
figure


% n = 10
    n = 10;
    h = 2*pi/(n+1);
    u1 = dlmread('n10.txt',',');
    u1 = u1 * (h*h);
    x = linspace(0,2*pi,10);
    subplot(2,2,1)
    hold on
    box on 
    plot(x,u1,'Linewidth',linewidth)
    plot(x,sin(x),'r--','Linewidth',linewidth)
    xlabel({'x','(n = 10)'},'fontsize',fontsize)
    ylabel('u(x)','fontsize',fontsize)
    L01 = infNorm(u1,sin(x));
    L11 = L1norm(u1,sin(x));
    L21 = L2norm(u1,sin(x));
    str1 = {['||E_{h}||_{\infty}= ',num2str(L01,'%.4f')],['||E_{h}||_{1}= ',num2str(L11,'%.4f')],['||E_{h}||_{1}= ',num2str(L21,'%.4f')]};
    annotation('textbox',dim1,'String',str1,'FitBoxToText','on','fontsize',fontsize2)
    legend('finite difference solution','exact solution','Location','northeast');
    legend('boxoff');
    axis([0 6.3 -1.4 1.4])
    set(gca,'FontSize',fontsize)


% n = 100
    n = 100;
    h = 2*pi/(n+1);
    u2 = dlmread('n100.txt',',');
    u2 = u2 * (h*h); %scale
    x = linspace(0,2*pi,100);
    %figure(2)
    subplot(2,2,2)
    hold on
    box on 
    plot(x,u2,'Linewidth',linewidth)
    plot(x,sin(x),'r--','Linewidth',linewidth)
    xlabel({'x','(n = 100)'},'fontsize',fontsize)
    ylabel('u(x)','fontsize',fontsize)
    legend('finite difference solution','exact solution','Location','northeast');
    legend('boxoff');
    L02 = infNorm(u2,sin(x));
    L12 = L1norm(u2,sin(x));
    L22 = L2norm(u2,sin(x));
    str2 = {['||E_{h}||_{\infty}= ',num2str(L02,'%.4f')],['||E_{h}||_{1}= ',num2str(L12,'%.4f')],['||E_{h}||_{1}= ',num2str(L22,'%.4f')]};
    annotation('textbox',dim2,'String',str2,'FitBoxToText','on','fontsize',fontsize2)
    axis([0 6.3 -1.3 1.3])
    set(gca,'FontSize',fontsize)


% n = 1000
    n = 1000;
    h = 2*pi/(n+1);
    u3 = dlmread('n1000.txt',',');
    u3 = u3 * (h*h);
    x = linspace(0,2*pi,1000);
    %figure(3)
    subplot(2,2,3)
    hold on
    box on 
    plot(x,u3,'Linewidth',linewidth)
    plot(x,sin(x),'r--','Linewidth',linewidth)
    xlabel({'x','(n = 1000)'},'fontsize',fontsize)
    ylabel('u(x)','fontsize',fontsize)
    legend('finite difference solution','exact solution','Location','northeast');
    legend('boxoff');
    axis([0 6.3 -1.3 1.3])
    set(gca,'FontSize',fontsize)
    L03 = infNorm(u3,sin(x));
    L13 = L1norm(u3,sin(x));
    L23 = L2norm(u3,sin(x));
    str3 = {['||E_{h}||_{\infty}= ',num2str(L03,'%.4f')],['||E_{h}||_{1}= ',num2str(L13,'%.4f')],['||E_{h}||_{1}= ',num2str(L23,'%.4f')]};
    annotation('textbox',dim3,'String',str3,'FitBoxToText','on','fontsize',fontsize2)

hold off