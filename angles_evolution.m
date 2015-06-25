function ang = angles_evolution(sol)
  
  [steps, n] = size(sol);
  n = n/2;
  ang = nan(steps, n);
  
  for i = 1:steps
    
    pol = sol(i,:);
    pol = reshape(pol, 2, n);
    pol = pol';
    
    a = angles(pol);
    
    ang(i,:) = a';
    
  end
  
  colors = ['b','r','m','g','y'];
  
  figure
  
  subplot(1,2,1)
  hold on
  for i = 1:n
    dif = ang(2:steps,i) - ang(1:steps-1,i);
    plot(1:steps-1, dif', colors(i), 'LineWidth',1.5);
  end
  title('Angles evolution');
  legend('\alpha_1', '\alpha_2', '\alpha_3', '\alpha_4');
  hold off
  
  subplot(1,2,2)
  hold on
  for i = 1:n
    plot(1:steps, ang(:,i), colors(i), 'LineWidth',1.5)
  end
  title('Angles length');
  legend('\alpha_1', '\alpha_2', '\alpha_3', '\alpha_4');
  hold off
  
end
