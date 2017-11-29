%In this directory, you will find a derivaitve function representing a
%three gene circuit in which each gene product represses the transcription of another
%gene in a cycle. This simple three gene circuit displays oscillations and was one
%of the first synthetic circuits ever constructed (see Elowitz & Leibler
%Nature 2000). 

% 1. Start with initial conditions x(1) = 1, x(2) = x(3) = 0. 
% Run the model for 200 time units and plot the result. verify that it
% does indeed oscillate. 
figure(1)
sol = ode23(@repressilator,[0 200], [1 0 0]);
plot(sol.y(1,:),sol.y(2,:))
% 2. What happens if you start with initial conditions x(1) = x(2) = x(3) =
% 0.5? Why?

figure(2)
sol = ode23(@repressilator,[0 200], [0.5 0.5 0.5]);
plot(sol.y(1,:),sol.y(2,:))
% This means the differntiation is not changing and the oscillation becomes a line instead. 

% 3. The strength of the repression is governed by the constant k2 which is
% the same for all the genes. What happens when you make k2 larger or
% smaller? Find the approximate value of k2 for which the system no longer
% oscillates. 

figure(3)
sol = ode23(@repressilator1,[0 200], [1 0 0]);
plot(sol.y(1,:),sol.y(2,:))

figure(4)
sol = ode23(@repressilator2,[0 200], [1 0 0]);
plot(sol.y(1,:),sol.y(2,:))
% when k2 is as low as 0.01, no oscillating is observed.
% When k2 is higher as 50. The curve become more packed towards the origin, which 
% means stronger repression between the genes.


% 4. What happens when you make k2 larger or smaller for only one of the
% genes? 

figure(5)
sol = ode23(@repressilator1_1,[0 200], [1 0 0]);
plot(sol.y(1,:),sol.y(2,:))


figure(6)
sol = ode23(@repressilator2_1,[0 200], [1 0 0]);
plot(sol.y(1,:),sol.y(2,:))


% The curve with only one higher k2 has greater oscillation.
% On the other way, the curve with only one lower k2 repress the expression less.