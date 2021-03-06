%% Square eigenvectors
R = 1;

square = [R; pi/2; R; pi/2; R; pi/2; R; pi/2];

eig1 = [1; 0; 1; 0; 1; 0; 1; 0];

eig2 = [R*cos(pi/8)/2^(1/4); 0; -R*sin(pi/8)/2^(1/4); -1; -R*cos(pi/8)/2^(1/4); 0; R*sin(pi/8)/2^(1/4); 1];

eig3 = [-R*cos(pi/8)/2^(1/4); 0; R*sin(pi/8)/2^(1/4); -1; R*cos(pi/8)/2^(1/4); 0; -R*sin(pi/8)/2^(1/4); 1];

eig4 = [-R*cos(pi/8)/2^(1/4); 0; -R*sin(pi/8)/2^(1/4); -1; -R*cos(pi/8)/2^(1/4); 0; R*sin(pi/8)/2^(1/4); 1];

eig5 = [-R*cos(pi/8)/2^(1/4); 0; R*sin(pi/8)/2^(1/4); -1; R*cos(pi/8)/2^(1/4); 0; -R*sin(pi/8)/2^(1/4); 1];

eig6 = [0; -1; 0; 1; 0; -1; 0; 1];

eig7 = [0; -1; 0; 1; 0; -1; 0; 1];
