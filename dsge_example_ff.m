% Usage:
%       out = dsge_example_ff(params, y)
%   where
%       out    is a (6,6) matrix of the first order
%              derivatives of the static system residuals
%              columns correspond to endo variables in
%              the ordering as declared
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

function out = dsge_example_ff(params, y)
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
t74 = t10 - a1;
t75 = a7 ^ t74;
t76 = t10 * t75;
t77 = t6 * t76;
t14 = a8 - a13;
t78 = -(t14);
t11 = a7 ^ t10;
t79 = a5 * t11;
t20 = exp(a19);
t21 = a18 * t20;
t22 = a4 * t21;
t24 = exp(a23);
t25 = t22 / t24;
t27 = t25 / a26;
t28 = a13 * t24;
t137 = t28 / a31;
t138 = t27 * t137;
t30 = t28 * a29;
t32 = t30 / a31;
t33 = a8 + t32;
t35 = t33 - a34;
t139 = -(t25);
t140 = a26 * a26;
t141 = t139 / t140;
t142 = t35 * t141;
t143 = -(t30);
t144 = a31 * a31;
t145 = t143 / t144;
t146 = t27 * t145;
t152 = t27 * t32;
t147 = t22 * t24;
t148 = -(t147);
t149 = t24 * t24;
t150 = t148 / t149;
t151 = t150 / a26;
t153 = t35 * t151;
t154 = t152 + t153;
t155 = t21 / t24;
t156 = t155 / a26;
t157 = t35 * t156;
t36 = t27 * t35;
t39 = exp(a38);
t41 = a40 ^ a13;
t42 = t39 * t41;
t2161 = t14 - a1;
t2162 = a7 ^ t2161;
t2163 = t14 * t2162;
t2164 = t42 * t2163;
t2165 = -(t2164);
t43 = a7 ^ t14;
t44 = t42 * t43;
t2166 = -(t44);
t1 = a1;
t2169 = a13 - a1;
t2170 = a40 ^ t2169;
t2171 = a13 * t2170;
t2172 = t39 * t2171;
t2173 = t43 * t2172;
t2174 = -(t2173);
t47 = exp(a46);
t2337 = -(t47);
t2338 = -(a1);
t2339 = t47 * t2338;
t2340 = -(t2339);
t52 = a8 - a34;
t2341 = -(t52);
t50 = a48 - a49;
t51 = t47 * t50;
t2342 = -(t51);
t2343 = -(a57);
t2344 = -(a60);
% setting the output variable
out = zeros(6, 6);
out(1,5) = out(1,5) + t77; % H(0)
out(1,1) = out(1,1) + t78; % Y(0)
out(1,2) = out(1,2) + t79; % C(0)
out(2,1) = out(2,1) + t138; % Y(1)
out(2,2) = out(2,2) + t142; % C(1)
out(2,3) = out(2,3) + t146; % K(1)
out(2,6) = out(2,6) + t154; % B(1)
out(2,2) = out(2,2) + t157; % C(0)
out(2,6) = out(2,6) + t36; % B(0)
out(3,5) = out(3,5) + t2165; % H(0)
out(3,4) = out(3,4) + t2166; % A(0)
out(3,1) = out(3,1) + t1; % Y(0)
out(3,3) = out(3,3) + t2174; % K(0)
out(4,3) = out(4,3) + t1; % K(0)
out(4,1) = out(4,1) + t2337; % Y(-1)
out(4,2) = out(4,2) + t2340; % C(-1)
out(4,3) = out(4,3) + t2341; % K(-1)
out(4,6) = out(4,6) + t2342; % B(-1)
out(5,4) = out(5,4) + t1; % A(0)
out(5,4) = out(5,4) + t2343; % A(-1)
out(5,6) = out(5,6) + t2344; % B(-1)
out(6,6) = out(6,6) + t1; % B(0)
out(6,4) = out(6,4) + t2344; % A(-1)
out(6,6) = out(6,6) + t2343; % B(-1)
