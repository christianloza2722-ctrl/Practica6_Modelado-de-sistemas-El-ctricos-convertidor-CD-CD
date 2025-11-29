% Condiciones iniciales
x0 = [0; 0];      % [iL(0), VC(0)]
tspan = [0 0.01];  % Tiempo de simulación

% Resolver ODE
[t, x] = ode45(@convertidor_matlab, tspan, x0);

% Extraer resultados
iL = x(:,1);   % Corriente en el inductor
VC = x(:,2);   % Voltaje en el capacitor

% Graficar resultados
figure;

subplot(2,1,1);
plot(t, iL, 'r', 'LineWidth', 1.5); 
grid on;
xlabel('Tiempo (s)');
ylabel('i_L(t) [A]');
title('Corriente en el inductor');

subplot(2,1,2);
plot(t, VC, 'b', 'LineWidth', 1.5); 
grid on;
xlabel('Tiempo (s)');
ylabel('V_C(t) [V]');
title('Voltaje en el capacitor');
