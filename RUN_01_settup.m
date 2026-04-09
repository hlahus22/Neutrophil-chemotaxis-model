%% Storage files.
Gabg_store  = fopen( 'data_Gabg_time_course',   'w');  
Gbg_store   = fopen(  'data_Gbg_time_course',   'w');  
PI3Kc_store = fopen('data_PI3Kc_time_course',   'w');  
PI3Km_store = fopen('data_PI3Km_time_course',   'w');  
PIP2_store  = fopen( 'data_PIP2_time_course',   'w');  
PIP3_store  = fopen( 'data_PIP3_time_course',   'w');  
PTEN_store  = fopen( 'data_PTEN_time_course',   'w');  
actin_store = fopen('data_actin_time_course',   'w');  
myoII_store = fopen('data_myoII_time_course',   'w');  

m_store = fopen('data_mass_time_course','w');  % protein mass

% End storage files.
%% Space and time parameters for differential equation solvers. 

% space
Len  = 26.4;          % length of membrane (um)
Dx   = 0.1;           % grid size (um)
N    = round(Len/Dx); % integer number of grid points

% time
Ttot = 5*60;       % simulation time (s)
Dt   = 0.01;        % diffusion time step (s)
Ns   = Ttot/Dt;     % number of diffusion time steps in the simulation
Nr   = 300;         % number of reaction steps per diffusion step 
DtR  = Dt/Nr;       % reaction time step (s)

% End space and time parameters for differential equation solvers.
%% Diffusion parameters.
% For now all membrane associated proteins that diffuse will diffuse with
% the same diffusion coefficient. This can be changed later. 

Dm   = 0.1;         % Diffusion coefficient ( (um^2)/s )    

% Diffusion matrix 
d = Dm*Dt/(Dx^2);
A = (1-2*d)*eye(N);
Ap = d*diag(ones(1,N-1),1);
Am = d*diag(ones(1,N-1),-1);
A = A + Ap + Am;
A(1,N) = d;
A(N,1) = d;
A = sparse(A);

% check for convergence 1D
if d > 0.5
    disp('no convergence')
    disp('Dm*Dt/(Dx^2) = ')
    d
end

% End diffusion parameters. 
%% Reaction parameters

% All parameters set to 1, this will have to be changed.

k1  = 1;
k2  = 1;
k3  = 1;
k4  = 8;
k5  = 0.5;
k6  = 4; % exparimentally validated
k7  = 1;
k8  = 0.1;
k9  = 8;
k10 = 1;
k11 = 1;
k12 = 1.64; % exparimentally validated
k13 = 1;

% End reaction parameters
%% Initial concentrations 

% Setting the initial concentration of proteins as random between 0 and 1.
% This should be changed to something more biological.

Gabg  = rand(N,1);  
Gbg   = rand(N,1);  
PI3Kc = rand(N,1); 
PI3Km = rand(N,1); 
PIP2  = rand(N,1); 
PIP3  = rand(N,1); 
PTEN  = rand(N,1);   
actin = rand(N,1);   
myoII = rand(N,1); 

% ligand
L     = [zeros(N/3,1); ones(N/3,1) ; zeros(N/3,1)];  

% End initial concentrations