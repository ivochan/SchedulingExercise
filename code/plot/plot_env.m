%plotting
figure 

axis 'manual'
axis([0 30 0 30]) %margine in cui spaziano gli assi

%dimensioni mappa
g_y=0:10; %asse y
g_x=0:10;%asse x

%linee della griglia
hold on


% 
% 
% %%
% for i=1:length(g_x)
%    plot([g_x(i) g_x(i)],[g_y(1) g_y(end)],'k:') %y grid lines
%    hold on    
% end
% 
% for i=1:length(g_y)
%    plot([g_x(1) g_x(end)],[g_y(i) g_y(i)],'k:') %x grid lines
%    hold on    
% end
% 
% %Posizionamento degli
% 
% %dati
% margine=0.25;
% db=margine*2; %delta di ingrossamento del bordo
% 
% %area con il margine di sicurezza
% base_area=10-db;
% altezza_area=5-db;
% pos_area=[0.25,0.25,base_area,altezza_area];
% area = rectangle('Position',pos_area);
% area.EdgeColor = 'r';
% area.LineStyle = '--';
% 
% axis equal
% %dati delle figure
% lq = 1.5;%lato dei quadrati
% br = 1;%base rettangolo
% hr = 2;%altezza rettangolo
% rc = 0.50;%raggio della circonferenza
% 
% %quadrato 1
% pos_q1=[2,0.5,lq,lq]; %vertice B, lato 1.5
% q1 = rectangle('Position',pos_q1);%creazione
% q1.FaceColor = [0 0 1];
% q1.EdgeColor = 'b';
% %quadrato 1 ingrossato
% lqb=lq+db;%lato ingrossato del quadrato
% pos_q1b=[1.75,0.25,lqb,lqb];
% q1b = rectangle('Position',pos_q1b);
% q1b.EdgeColor = 'r';
% q1b.LineStyle = '--';
% axis equal
% 
% %quadrato 2
% pos_q2b=[3.5,3,lq,lq]; %vertice F, lato 1.5
% q2 = rectangle('Position',pos_q2b);%creazione
% q2.FaceColor = [0 0 1];
% q2.EdgeColor = 'b';
% %quadrato 2 ingrossato
% pos_q2b=[3.25,2.75,lqb,lqb];
% q2b = rectangle('Position',pos_q2b);
% q2b.EdgeColor = 'r';
% q2b.LineStyle = '--';
% axis equal
% 
% %rettangolo
% pos_r=[6,1.50,br,hr]; %coordinata punto in basso a sinistra L, base, altezza
% r = rectangle('Position',pos_r);
% r.FaceColor = [0 0 1];
% r.EdgeColor = 'b';
% %rettangolo ingrossato
% brb=br+db;
% hrb=hr+db;
% pos_rb=[5.75,1.25,brb,hrb];
% rb = rectangle('Position',pos_rb);
% rb.EdgeColor = 'r';
% rb.LineStyle = '--';
% 
% 
% %cerchio
% xc=8;
% yc=4;
% t=linspace(0,2*pi);
% patch(xc+rc*cos(t),yc+rc*sin(t),'b','EdgeColor','b');
% %cerchio ingrossato come esagono
% theta = 0:60:360;
% x = (db+0.25)*cosd(theta)+xc;
% y = (db+0.25)*sind(theta)+yc;
% plot(x, y, 'r-', 'LineWidth',1,'LineStyle','--');
% 
% %punto di partenza
% xinizio = 1;
% yinizio = 0.5;
% plot(xinizio,yinizio,'r*');
% text(0.3,0.8,'Partenza');
% %punto di arrivo
% xfine = 9;
% yfine = 4.5;
% plot(xfine,yfine,'r*');
% text(8.8,4,'Arrivo');
% 
% 
% hold off
