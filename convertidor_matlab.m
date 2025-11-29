function dxdt = convertidor_matlab(t, x)

    % Parámetros físicos
    L = 2e-3;      % 2 mH
    R = 10;        % 10 ohm
    C = 10e-6;     % 10 uF
    Uin = 32;      % 32 V
    d = 0.4;       % ciclo de trabajo (40%)

    % Estados
    iL = x(1);     % Corriente en el inductor
    VC = x(2);     % Voltaje en el capacitor

    % Ecuaciones promediadas del convertidor Buck
    diLdt = (1/L) * (d*Uin - VC);
    dVCdt = (1/C) * (iL - (VC/R));

    % Vector de derivadas
    dxdt = [diLdt; dVCdt];
end
