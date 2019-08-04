%%
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

%function [upoint,vpoint]=WyattJohnCode2(casefilename, xpoint,ypoint, domain)
function WyattJohnCode2();
%clc, clear all, close all;
global Gn c mu rho Pinf s0 vars solution N aa bb k lambda ;
k  = sym('k','real');
k=0.0001;
lambda=5;

% you send domain as an input argument
domain='d';% 's'for stokes(vug), 'd' for darcy(porous), 'b' for both

%case 1
casefilename='wytt1d.mat';
xc=[0];% x coordinate of center of the ellipse
zc=[0];% y coordinate of center of the ellipse
ac=[2]/4;% semi-major axis same as our ellipse in 161.inp
bc=[1]/4;% semi-minor axis same as our ellipse in 161.inp



Xpsio=0;
Xpso=0;
Xuso=0;
Xvso=0;

np=200;
for i=1:numel(xc)
    aa=ac(i);
    bb=bc(i);
    [X0,Z0,X,Z,Xd,Xs,Zd,Zs,pd,ps,ud,us,vd,vs,psis,psid,Keff]=AnalyticSolution();
%    save (casefilename, 'X0','Z0','X','Z','pd','ps','ud','us','vd','vs','psis','psid');
 %   load (casefilename, 'X0','Z0','X','Z','pd','ps','ud','us','vd','vs','psis','psid');
      L=max(ac);
    cL=4;
    [xo,zo]=meshgrid(linspace(0,cL*L,np),linspace(-cL*L,cL*L,np));
    if domain=='d'
        X=Xd;Z=Zd;
        ps=[];
        psis=[];
        us=[];
        vs=[];
    elseif domain=='s'
        X=Xs;Z=Zs;
        pd=[];
        psid=[];
        ud=[];
        vd=[];
        xo=Xs;
        zo=Zs;
    end

    
    
    Fpsis=scatteredInterpolant(X(:),Z(:),double([psis(:);psid(:)]),'natural');
    
    pso =griddata(X,Z,[double(ps)  ,double(pd)  ],xo,zo);
    uso =griddata(X,Z,[double(us)  ,double(ud)  ],xo,zo);
    vso =griddata(X,Z,[double(vs)  ,double(vd)  ],xo,zo);
    psio=Fpsis(xo,zo);
    
    xxo=[-xo(:,end:-1:2),xo];
    X0=[-X0(end:-1:2),X0];
    zzo=[ zo(:,end:-1:2),zo];% zzo=[ zo(:,1:end-1),zo];
   Z0=[Z0(end:-1:2),Z0];
    
    pso=[pso(:,end:-1:2),pso];
    uso=[uso(:,end:-1:2),uso];
    vso=[vso(:,end:-1:2),-vso];
    psio=[psio(:,end:-1:2),psio];
    
    L=max(ac);
    
    
    Fpsio=TriScatteredInterp([xxo(:)+xc(i),zzo(:)+zc(i)],psio(:),'natural');
    Fpso =TriScatteredInterp([xxo(:)+xc(i),zzo(:)+zc(i)],pso(:),'natural');
    Fuso =TriScatteredInterp([xxo(:)+xc(i),zzo(:)+zc(i)],uso(:),'natural');
    Fvso =TriScatteredInterp([xxo(:)+xc(i),zzo(:)+zc(i)],vso(:),'natural');
    
    
    L=L/2;
    [xo,zo]=meshgrid(linspace(-cL*L,cL*L,2*np),linspace(-cL*L,cL*L,2*np));
    Xpsio=Xpsio+Fpsio(xo,zo)+1/2*Pinf*k/mu*(xo+xc(i)).^2*(i>1);
    Xpso =Xpso+ Fpso(xo,zo)-Pinf.*zo*(i>1);
    Xuso =Xuso+ Fuso(xo,zo);
    Xvso =Xvso+ Fvso(xo,zo);
%     %for check 
    xpoint=X0; ypoint=Z0;
    
    save (casefilename, 'Fuso','Fvso');
    %load (casefilename, 'X0','Z0','X','Z','pd','ps','ud','us','vd','vs','psis','psid');
   
    %upoint=Fuso(xpoint,ypoint);
    %vpoint=Fvso(xpoint,ypoint);
    
    
    XX0(i,:)=X0+xc(i);
    ZZ0(i,:)=Z0+zc(i);
    
    i
end
%..............................................................
nn=1;
MM=[min(min(Xpsio)),Xpsio(end/2,(find(isnan(Xpsio(1,1:nn:end/2))==0)-1)*nn+1)];

%figure;hold on; contourf(xo,zo,(Xpsio),40);
% figure;hold on; contourf(xo,zo,(Xuso),40);
% figure;hold on; contourf(xo,zo,(Xvso),40);
% figure;hold on; contourf(xo,yo,(Xpso),90);
strg=sprintf('\\Psi \t so=%0.2f, a=%0.1f, b=%0.1f, K=%0.3f, \\lambda=%0.1f',s0,aa,bb,k,lambda);
title(strg);
axis equal;
hold on;
for i=1:numel(xc)
    plot(XX0(i,:),ZZ0(i,:),'c'); hold on;
end
grid on;
end
% -------------------------------------------------------------------------
% -------------------------------------------------------------------------
% -------------------------------------------------------------------------
% -------------------------------------------------------------------------
%--------------------------------------------------------------------------
function F=P(n,x)
if (n==0)
    F=1;
elseif (n>0)
    F=1/(2^n)/factorial(n)*diff((x^2-1)^n,x,n);
else
    F=0;
end

end
%--------------------------------------------------------------------------
function F=dP(n,x)
if (n==-1)
    F=0;%-x/(x^2-1);%dP(1,x)-P(0,x);
elseif (n==0)
    F=0;%1/(x^2-1);
else
    F=diff(P(n,x),x);
end
end
%--------------------------------------------------------------------------
function F=Q(n,x)
F= (log((x+1)/(x-1))/2*P(n,x)-W(n,x));
end
%--------------------------------------------------------------------------
function F=W(n,x)
F=0;
m=(mod(n,2)==0)*(n/2-1)+(mod(n,2)>0)*(n-1)/2;
for i=0:m
    F= F+(2*n-4*i-1)/((2*i+1)*(n-i))*P(n-2*i-1,x);
end
end
%--------------------------------------------------------------------------
function H=A(n)
global solution vars N c s0;
H=0;
if (n>0)&&(n<=N)
    strg=strcat('A',num2str(n));
    H=sym(strg);
    if (numel(solution)>0)
        H=vpa(subs(H,vars(:),solution(:)));
        H=H;%0.9924;%vpa(H,5);0.9924;%
    end
end
end
%--------------------------------------------------------------------------
function H=C(n)
global solution vars N;
H=0;
if (n>0)&&(n<=N)
    strg=strcat('C',num2str(n));
    H=sym(strg);
    if (numel(solution)>0)
        H=vpa(subs(H,vars(:),solution(:)));
    end
end
end
%--------------------------------------------------------------------------
function H=F(n,x)
global Pinf ;
H=(Pinf*x*(n==1)+A(n)*Q(n,x));
end
%--------------------------------------------------------------------------
function H=a(n)
global solution vars N;

H=0;
if (n>0)&&(n<=N)
    strg=strcat('a',num2str(n));
    H=sym(strg);
    if (numel(solution)>0)
        H=vpa(subs(H,vars(:),solution(:)));
    end
    
end
end
%--------------------------------------------------------------------------
function H=G(n,x)
global  c N ;
H=0;
if n>N
    return;
end
if (n>0)
    nn=n+1;
    if (nn==2)||(nn==3)
        H=(beta(nn)*C(n)/2/(2*nn+1)-alphaa(nn+2)*C(n+2)/2/(2*nn+1))*dP(n+2,x)/(nn+2)/(nn+1);
    else
        
        H=(beta(nn-2)*C(n-2)/2/(2*nn-3)-alphaa(nn)*C(nn)/2/(2*nn-3))*dP(n-2,x)/(nn-2)/(nn-3)+...
            (beta(nn)*C(n)/2/(2*nn+1)-alphaa(nn+2)*C(n+2)/2/(2*nn+1))*dP(n+2,x)/(nn+2)/(nn+1);
    end
    H=-simplify(a(n)*dP(n,x)/n/(n+1)+c^2*H)/n/(n+1);
end
end
%--------------------------------------------------------------------------
function H=beta(n)
if n<0
    H=0;
    return;
end
if n==0
    H=-2;
elseif  n==1
    H=2;
elseif  n==2
    H=4/5;
elseif  n==3
    H=4/7;
else
    H= (n+1)*(n+2)/(2*n-1)/(2*n+1);
end
end
%--------------------------------------------------------------------------
function H=alphaa(n)
if n<0
    H=0;
    return;
end
if n<4
    H=0;
else
    H= (n-3)*(n-2)/(2*n-3)/(2*n-1);
end
end
%--------------------------------------------------------------------------
function [solution]=Solve(eq1,eq2,eq3,N)
global vars;
A1 = sym('A1','real');
A2 = sym('A2','real');
A3 = sym('A3','real');
A4 = sym('A4','real');
A5 = sym('A5','real');
A6 = sym('A6','real');
A7 = sym('A7','real');
A8 = sym('A8','real');
A9 = sym('A9','real');

a1 = sym('a1','real');
a2 = sym('a2','real');
a3 = sym('a3','real');
a4 = sym('a4','real');
a5 = sym('a5','real');
a6 = sym('a6','real');
a7 = sym('a7','real');
a8 = sym('a8','real');
a9 = sym('a9','real');

C1 = sym('C1','real');
C2 = sym('C2','real');
C3 = sym('C3','real');
C4 = sym('C4','real');
C5 = sym('C5','real');
C6 = sym('C6','real');
C7 = sym('C7','real');
C8 = sym('C8','real');
C9 = sym('C9','real');

vars=sym(zeros(3*N,1));

for i=1:N
    vars(i)=A(i);
end
for i=N+1:2*N
    vars(i)=C(i-N);
end
for i=2*N+1:3*N
    vars(i)=a(i-2*N);
end
solution=sym(ones(1,3*N));


if (N==1)
    SS=solve(simplify(eq1),simplify(eq2),simplify(eq3),A1,C1,a1);
    disp('Solved');
    solution(1)=SS.A1;
    solution(2)=SS.C1;
    solution(3)=SS.a1;
end
%
if (N==2)
    SS=solve(eq1,eq2,eq3,A1,A2,C1,C2,a1,a2);
    disp('Solved');
    solution(1)=SS.A1;
    solution(2)=SS.A2;
    solution(3)=SS.C1;
    solution(4)=SS.C2;
    solution(5)=SS.a1;
    solution(6)=SS.a2;
end

if (N==3)
    SS=solve(eq1,eq2,eq3,A1,A2,A3,C1,C2,C3,a1,a2,a3);
    disp('Solved');
    solution(1)=SS.A1;
    solution(2)=SS.A2;
    solution(3)=SS.A3;
    solution(4)=SS.C1;
    solution(5)=SS.C2;
    solution(6)=SS.C3;
    solution(7)=SS.a1;
    solution(8)=SS.a2;
    solution(9)=SS.a3;
end

if (N==5)
    SS=solve(eq1,eq2,eq3,A1,A2,A3,A4,A5,C1,C2,C3,C4,C5,a1,a2,a3,a4,a5);
    disp('Solved');
    solution(1)=SS.A1;
    solution(2)=SS.A2;
    solution(3)=SS.A3;
    solution(4)=SS.A4;
    solution(5)=SS.A5;
    solution(6)=SS.C1;
    solution(7)=SS.C2;
    solution(8)=SS.C3;
    solution(9)=SS.C4;
    solution(10)=SS.C5;
    solution(11)=SS.a1;
    solution(12)=SS.a2;
    solution(13)=SS.a3;
    solution(14)=SS.a4;
    solution(15)=SS.a5;
end

if (N==7)
    SS=solve(eq1,eq2,eq3,A1,A2,A3,A4,A5,A6,A7,C1,C2,C3,C4,C5,C6,C7,a1,a2,a3,a4,a5,a6,a7);
    disp('Solved');
    solution(1)=SS.A1;
    solution(2)=SS.A2;
    solution(3)=SS.A3;
    solution(4)=SS.A4;
    solution(5)=SS.A5;
    solution(6)=SS.A6;
    solution(7)=SS.A7;
    solution(8)=SS.C1;
    solution(9)=SS.C2;
    solution(10)=SS.C3;
    solution(11)=SS.C4;
    solution(12)=SS.C5;
    solution(13)=SS.C6;
    solution(14)=SS.C7;
    solution(15)=SS.a1;
    solution(16)=SS.a2;
    solution(17)=SS.a3;
    solution(18)=SS.a4;
    solution(19)=SS.a5;
    solution(20)=SS.a6;
    solution(21)=SS.a7;
end



if (N==9)
    SS=solve(eq1,eq2,eq3,A1,A2,A3,A4,A5,A6,A7,A8,A9,C1,C2,C3,C4,C5,C6,C7,C8,C9,a1,a2,a3,a4,a5,a6,a7,a8,a9);
    disp('Solved');
    solution(1)=SS.A1;
    solution(2)=SS.A2;
    solution(3)=SS.A3;
    solution(4)=SS.A4;
    solution(5)=SS.A5;
    solution(6)=SS.A6;
    solution(7)=SS.A7;
    solution(8)=SS.A8;
    solution(9)=SS.A9;
    solution(10)=SS.C1;
    solution(11)=SS.C2;
    solution(12)=SS.C3;
    solution(13)=SS.C4;
    solution(14)=SS.C5;
    solution(15)=SS.C6;
    solution(16)=SS.C7;
    solution(17)=SS.C8;
    solution(18)=SS.C9;
    solution(19)=SS.a1;
    solution(20)=SS.a2;
    solution(21)=SS.a3;
    solution(22)=SS.a4;
    solution(23)=SS.a5;
    solution(24)=SS.a6;
    solution(25)=SS.a7;
    solution(26)=SS.a8;
    solution(27)=SS.a9;
end



solution=vpa(solution)
end
%--------------------------------------------------------------------------
function [X0,Z0,X,Z,Xd,Xs,Zd,Zs,pd,ps,ud,us,vd,vs,psis,psid,Keff]=AnalyticSolution()


global Gn c mu rho Pinf s0 vars solution N aa bb k lambda;
%

N=1;
mjd=1;
s0=sym('s0','real');
Pinf = sym('Pinf','real');

Gn=sym(zeros(N,1));
s0=sym('s0','real');
c  = sym('c','real');

s=sym('s','real');
t=sym('t','real');
syms    pd ps us vs ud vd
syms  h_s h_t h_3

sym n
syms r2
%aa=4;
for bb=bb%1.0%[linspace(0.1,3.6,10),3.99999]
    strg=sprintf('shperoid geometry a=%0.2f,  b=%0.2f', aa,bb );
    disp(strg);
    c=sqrt(aa^2-bb^2);
    s0=1/sqrt(1-(bb/aa)^2)
    Pinf=1;
    mu=1; rho=1;
    
    %  for lambda=lambda%[0.01,0.1,1,2]%(logspace(-3,1,10))
    disp('Lambda = ');disp( lambda);
    
    
    s2p1 = (s^2-1);
    t2m1=  (1-t^2);
    s2t2 = (s^2-t^2);
    h_t = sqrt(s2t2);
    h_s = sqrt(s2t2);
    h_3 = sqrt(1-t^2)*sqrt(s2p1);
    
    solution=[];
    eq1=sym(zeros(N,1));
    eq2=sym(zeros(N,1));
    eq3=sym(zeros(N,1));
    
    
    % normal velocities
    %------------ equations----------------------------------------------------
    disp('-----------------Normal velocities BC');
    for n=1:(N)
        eq1(n)=(G(n,s)+k/mu/n/(n+1)*diff(F(n,s),s));% OK
        eq1(n)=subs(eq1(n),'s',s0);
    end
    
    % BVJ condition
    %--------------------------------------------------------------------------
    disp('-----------------BVJ BC');
    
    Gpn =@(m) subs(diff((s^2-1)*G(m,s),s),'s',s0);
    Gppn=@(m) subs(diff(diff((s^2-1)*G(m,s),s),s),'s',s0);
    
    Cf1=@(m)Gpn(m)*c/(lambda*sqrt(k))*sqrt(s0^2-1)/m/(m+1);
    Cf2=@(m)-2*s0*Gpn(m)*(s0^2-1)/m/(m+1);
    Cf5=@(m) Gppn(m)*(s0^2-1)/m/(m+1)+subs(G(m,s),'s',s0)*(s0^2-1);
    %Cf3=@(m) subs(G(m,s),'s',s0)*(s0^2-1)*m*(m+1);
    Cf4=@(m) 2*(s0^2-1)*subs(G(m,s),'s',s0);
    
    ca1=@(m) -m*(m+1)/(2*m+1)/(2*m+3);
    ca2=@(m) 2*m*(m+1)/(2*m-1)/(2*m+3);
    ca3=@(m) -m*(m+1)/(2*m+1)/(2*m-1);
    
    cb1=@(m) (m+1)/(2*m+1)/(2*m+3);
    cb2=@(m) 1/(2*m-1)/(2*m+3);
    cb3=@(m) -m/(2*m+1)/(2*m-1);
    
    for n=1:N
        if (n==1)||(n==2)
            CC1=@(m) Cf4(m)*cb2(m)+Cf5(m)*(s0^2-1)+Cf5(m)*ca2(m)+Cf2(m)-Cf1(m)*s0^3-3/2*s0*Cf1(m)*(ca2(m)-1);
            CC2=@(m) Cf4(m)*cb1(m)                              ;
            CC3=@(m) Cf4(m)*cb3(m)                +Cf5(m)*ca3(m)                   -3/2*s0*Cf1(m)* ca3(m);
            eq2(n)=CC1(n)+CC3(n+2);
            
        else
            CC1=@(m) Cf4(m)*cb2(m)+Cf5(m)*(s0^2-1)+Cf5(m)*ca2(m)+Cf2(m)-Cf1(m)*s0^3-3/2*s0*Cf1(m)*(ca2(m)-1);
            CC2=@(m) Cf4(m)*cb1(m)                +Cf5(m)*ca1(m)                   -3/2*s0*Cf1(m)* ca1(m);
            CC3=@(m) Cf4(m)*cb3(m)                +Cf5(m)*ca3(m)                   -3/2*s0*Cf1(m)* ca3(m);
        end
        eq2(n)=eq2(n)+CC1(n)+CC2(n-2)+CC3(n+2);
    end
    %--------------------------------------------------------------------------
    disp('-----------------Pressure jump BC');
    
    ca1=@(m) (m+1)/(2*m+1);
    ca2=@(m) -(m)/(2*m+1);
    cb1=@(m) ca1(m)*ca1(m+1);
    cb2=@(m) ca1(m)*ca2(m+1)+ca2(m)*ca1(m-1);
    cb3=@(m) ca2(m)*ca2(m-1);
    cc1=@(m) cb1(m)*cb1(m+2);
    cc2=@(m) cb1(m)*cb2(m+2)+cb2(m)*cb1(m);
    cc3=@(m) cb1(m)*cb3(m+2)+cb2(m)*cb2(m)+cb3(m)*cb1(m-2);
    cc4=@(m) cb2(m)*cb3(m)+cb3(m)*cb2(m-2);
    cc5=@(m) cb3(m)*cb3(m-2);
    
    
    FG =@(m) c^2*(F(m,s)+mu/m/(m+1)*C(m)*P(m,s))/mu/2;
    G1=@(m) s^4*FG(m)-s^2*diff((s^2-1)*G(m,s),s)+s*(2*s^2-1)*G(m,s);%+...
    G2=@(m) -diff((s^2-1)*G(m,s),s)/(m+1);
    G3=@(m) -2*s^2*FG(m)+diff((s^2-1)*G(m,s),s)+diff((s^2-1)*G(m,s),s)/(m+1)-s*G(m,s);
    G4=@(m) FG(m);
    
    for n=1:N
        if (n==1)||(n==2)
            eq3(n)= G1(n)+ca1(n-1)*G2(n)+ca2(n+1)*G2(n+2)+...
                cb2(n)*G3(n)+cb3(n+2)*G3(n+2)+cc3(n)*G4(n)+cc4(n+2)*G4(n+2)+cc5(n+4)*G4(n+4);
        elseif (n==3)||(n==4)
            eq3(n)= G1(n)+ca1(n-1)*G2(n)+ca2(n+1)*G2(n+2)+cb1(n-2)*G3(n-2)+...
                (cb2(n)*G3(n)+cb3(n+2)*G3(n+2)+cc2(n-2)*G4(n-2)+cc3(n)*G4(n)+cc4(n+2)*G4(n+2)+cc5(n+4)*G4(n+4));
        else
            eq3(n)= G1(n)+ca1(n-1)*G2(n)+ca2(n+1)*G2(n+2)+cb1(n-2)*G3(n-2)+...
                (cb2(n)*G3(n)+cb3(n+2)*G3(n+2)+cc1(n-4)*G4(n-4)+cc2(n-2)*G4(n-2)+cc3(n)*G4(n)+cc4(n+2)*G4(n+2)+cc5(n+4)*G4(n+4));
        end
        eq3(n)=subs(eq3(n),s,s0);
    end
    %--------------------------------------------------------------------------
    %--------------------------------------------------------------------------
    disp('--------Solving 3N equations -----------');
    solution= Solve(eq1,eq2,eq3,N)  ;
    %------------pn Darcy -----------------------------------------------------
    % The external solution to the harmonic equation gives the pressure fild
    disp('............Computing pressure and velocity in porous domain');
    
    Pd=0;
    for n=1:N
        Pd=Pd+c*F(n,s)*P(n,t);
    end
    Ud=-k*sqrt(s2p1)/h_s/c*diff(Pd,s);
    Vd= k*sqrt(t2m1)/h_t/c*diff(Pd,t);
    disp('>>>____________Ud');pretty(collect(Ud,t));
    disp('>>>____________Vd');pretty(collect(Vd,t));
    
    Psid=0;
    for n=1:N
        Psid=Psid-k/mu*c^2*s2p1*t2m1/n/(n+1)*diff(F(n,s),s)*dP(n,t);
        %Psid=Psid-k*s2p1*diff(F(n,s),s)*int(P(n,t),t,t,1)/n/(n+1);
    end
    %--------------------------------------------------------------------------
    disp('............Computing pressure and velocity in Stokes domain');
    Psis=0;
    for n=1:N
        Psis=Psis+ G(n,s)*dP(n,t)*c^2*s2p1*t2m1;%*n*(n+1) already in G(n,x)
    end
    Us= simplify(1/c^2*diff(Psis,t)/sqrt(s2p1)/sqrt(s2t2));
    Vs= simplify(1/c^2*diff(Psis,s)/sqrt(t2m1)/sqrt(s2t2));
    disp('>>>____________Us');pretty(collect(Us,t));
    disp('>>>____________Vs');pretty(collect(Vs,t));
    
    Ps=0;
    for n=1:N
        %Ps=Ps+c*subs(F(n,s),s,s0)/subs(P(n,s),s,s0)*P(n,s)*P(n,t)
        Ps=Ps-mu*c/rho*C(n)*P(n,s)*P(n,t)/n/(n+1);
    end
    %----------------------Effective permeability calculation--------------
    disp('............Computing effective permeability of inclusion');
    Nomin=0;
    Denomin=0;
    %solution(1)=solution(1)/c;
    for kkk=1:N
        Nomin=simplify(Nomin+diff(F(kkk,s),s));
        FF=simplify(F(kkk,s)/kkk/(kkk+1)*dP(kkk,s)/P(kkk,s));
        %            FF=simplify(F(kkk,s)*dP(kkk,s)/P(kkk,s));
        Denomin=Denomin+FF;
    end
    Nomin=double(subs(Nomin,s,s0));
    Denomin=double(subs(Denomin,s,s0));
    Keff=(Nomin/Denomin)*k
    
    Kin=(k*(1-A(1)/(s0^2-1)/(A(1)*subs(Q(1,s),s,s0)+s0)));
    mjd=mjd+1;
end
%--------------------------- STOKES DOMAIN---------------------------------
srange=linspace(1+eps*1e3,s0,55);%interior
[xi,eta]=meshgrid(srange,linspace(-1,1,40));

ps=double(subs(Ps,{'s','t'},{xi,eta}));
us=double(subs(Us,{'s','t'},{xi,eta}));
vs=double(subs(Vs,{'s','t'},{xi,eta}));
psis=double(subs(Psis,{'s','t'},{xi,eta}));

Xs=c*sqrt(xi.^2-1).*sqrt(1-eta.^2);
Zs=c*xi.*eta;

%--------------------------- POROUS DOMAIN---------------------------------
xi1=xi; eta1=eta;
srange=linspace(s0,20*aa,500);% exterior
[xi,eta]=meshgrid(srange,linspace(-1,1,40));

pd= double(subs(Pd,{'s','t'},{xi,eta}));
ud= double(subs(Ud,{'s','t'},{xi,eta}));
vd= double(subs(Vd,{'s','t'},{xi,eta}));
psid=double(subs(Psid,{'s','t'},{xi,eta}));

Xd=c*sqrt(xi.^2-1).*sqrt(1-eta.^2);
Zd=c*xi.*eta;

%------------------- prepare the domain -----------------------------------
xi=[xi1,xi];
eta=[eta1,eta];
X=c*sqrt(xi.^2-1).*sqrt(1-eta.^2);
Z=c*xi.*eta;

X0=c*sqrt(s0.^2-1).*sqrt(1-linspace(-1,1,40).^2);
Z0=c*s0.*linspace(-1,1,40);

end
%--------------------------------------------------------------------------------

