% Usage:
%       out = dsge_example_f(params, y)
%   where
%       out    is a (6,1) column vector of the residuals
%              of the static system
%       params is a (7,1) vector of parameter values
%              in the ordering as declared
%       y      is a (6,1) vector of endogenous variables
%              in the ordering as declared
%
% Created by Dynare++ v. 4.5.6

% params ordering
% =====================
% beta
% rho
% alpha
% delta
% theta
% psi
% tau
%
% y ordering
% =====================
% Y
% C
% K
% A
% H
% B

function out = dsge_example_f(params, y)
if size(y) ~= [6,1]
	error('Wrong size of y, must be [6,1]');
end
if size(params) ~= [7,1]
	error('Wrong size of params, must be [7,1]');
end

% hardwired constants
a0 =            0;
a1 =            1;
a2 = NaN;
a3 =    1.1283792;
% numerical constants
a8 =            1;
% parameter values
a18 = params(1); % beta
a57 = params(2); % rho
a13 = params(3); % alpha
a34 = params(4); % delta
a5 = params(5); % theta
a9 = params(6); % psi
a60 = params(7); % tau
% exogenous variables to zeros
a63 = 0.0; % EPS
a69 = 0.0; % NU
% endogenous variables to y
a48 = y(1); % Y
a15 = y(1); % Y
a29 = y(1); % Y
a49 = y(2); % C
a4 = y(2); % C
a26 = y(2); % C
a53 = y(3); % K
a40 = y(3); % K
a31 = y(3); % K
a58 = y(4); % A
a38 = y(4); % A
a7 = y(5); % H
a46 = y(6); % B
a19 = y(6); % B
a23 = y(6); % B

t6 = a4 * a5;
t10 = a8 + a9;
t11 = a7 ^ t10;
t12 = t6 * t11;
t14 = a8 - a13;
t16 = t14 * a15;
t17 = t12 - t16;
t20 = exp(a19);
t21 = a18 * t20;
t22 = a4 * t21;
t24 = exp(a23);
t25 = t22 / t24;
t27 = t25 / a26;
t28 = a13 * t24;
t30 = t28 * a29;
t32 = t30 / a31;
t33 = a8 + t32;
t35 = t33 - a34;
t36 = t27 * t35;
t37 = t36 - a8;
t39 = exp(a38);
t41 = a40 ^ a13;
t42 = t39 * t41;
t43 = a7 ^ t14;
t44 = t42 * t43;
t45 = a15 - t44;
t47 = exp(a46);
t50 = a48 - a49;
t51 = t47 * t50;
t52 = a8 - a34;
t54 = t52 * a53;
t55 = t51 + t54;
t56 = a40 - t55;
t59 = a57 * a58;
t61 = a46 * a60;
t62 = t59 + t61;
t64 = t62 + a63;
t65 = a38 - t64;
t66 = a58 * a60;
t67 = a46 * a57;
t68 = t66 + t67;
t70 = t68 + a69;
t71 = a19 - t70;
% setting the output variable
out = zeros(6, 1);
out(1) = t17;
out(2) = t37;
out(3) = t45;
out(4) = t56;
out(5) = t65;
out(6) = t71;
