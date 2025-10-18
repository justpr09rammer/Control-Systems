%{
G1 = tf(1, [1,1]);
figure;
step(G1, 0:0.01:5);
title('first order system step response');
info1 = stepinfo(G1);
disp('first order system step response info');
disp(info1);

G2 = tf(1, [1 2 2]);
damp_G2 = damp(G2);
figure;
step(G2, 0:0.01:5);
title('second order system step response');
info2 = stepinfo(G2);
disp('second order system step response info');
disp(info2);
disp('Second order system poles');
disp(damp_G2);
%}
G_undamped = tf(1, [1 0 1]);

G_underdamped = tf(1, [1 1 1]);
G_critical = tf(1, [1 2 1]);
G_overdamped = tf(1, [1 4 1]);

figure;
step(G_undamped, 'b', G_underdamped, 'r', G_critical, 'g', G_overdamped, 'k', 0:0.01:10);
legend('Undamped', 'Underdamped', 'critically dumped', 'over dumped');
title('step response for different damping');
info_undamped = stepinfo(G_undamped);
info_underdamped = stepinfo(G_underdamped);
info_critical = stepinfo(G_critical);
info_overdamped = stepinfo(G_overdamped);

poles_undamped = poles(G_undamped);
poles_underdamped = poles(G_underdamped);
poles_critical = pole(G_critical);
poles_overdamped = pole(G_overdamped);



