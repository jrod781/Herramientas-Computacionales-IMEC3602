theta1=0:5:90;
Ttot1=ones(size(theta1))*70;
theta2=90:5:180;Ttot2=ones(size(theta2))*-30;
theta3=180:5:225;Ttot3=ones(size(theta3))*450;
theta4=225:5:270;Ttot4=ones(size(theta4))*50;
theta5=270:5:360;Ttot5=ones(size(theta5))*-50;

theta=[theta1,theta2,theta3,theta4,theta5];
Ttot=[Ttot1,Ttot2,Ttot3,Ttot4,Ttot5];
Ttot=Ttot*0.0981;

plot(theta,Ttot)
ylim([-10,50])
grid on
xlabel('Angulo [Grados]')
ylabel('Torque[Nm]')
hold on

promedio= (70*90+-30*90+450*45+50*45-50*90)/360;
disp('El promedio en kg-cm es')

disp(promedio)

disp(' El promedio en Nm es')
promedio=promedio*0.0981;
disp(promedio)
Tprom=ones(size(theta))*promedio;
plot(theta,Tprom)
hold off

%%
figure()
Tnor=Ttot-Tprom;
plot(theta,Tnor);
grid on 
xlabel('Angulo [Grados]')
ylabel('Torque[Nm]')

