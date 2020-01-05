close all
clear all
clc

tm=[1:1:7] %time values from 1 to 7

%Input the Values
Lamdat=input('Enter values of Fresh Call attempts='); %Number of call attempts
B=input('Enter values of Bolocking Propabilities='); %Number of Blocking Probabilities 
PNA=input('Enter values of Probabilities on Not Answering='); %Number of probability of not answer
PR =input('Enter values of Repeated Probabilities'); %Number of Repeated probabilities
per=input('Enter Percentages of Users in Hour %='); %Number of percentage in users in an every hour
no_of_users=input('Enter No. of Users in Hour='); %Number of users in an hour

LamdaR = ((Lamdat).*(B+(1-B)).*(PNA).*(PR)) %formula of Repeated Calls

LamdaT=LamdaR+Lamdat %formula of Total Arrival Rate

LamdaC=((no_of_users)/100).*(per) %formula of LAMDA(C)

PA=1-PNA %formula of Probability of Answer

%Ploting the Repeated Call Attempts LAMDA(R)
subplot(3,1,1)
plot(tm,LamdaR,'--ro')
xlabel('Time (hr)')
ylabel('call repeat')
title('Repeated Call Attempts LAMDA(R)')
grid on

%Ploting Total Arrival Rate LAMDA(T)
subplot(3,1,2)
plot(tm,LamdaT,'--bo')
xlabel('Time (hr)')
ylabel('call repeat')
title('Total Arrival Rate LAMDA(T)')
grid on

%Ploting LAMDA(C)
subplot(3,1,3)
plot(tm,LamdaC,'--go')
xlabel('Time (hr)')
ylabel('call repeat')
title('LAMDA(C)')
grid on