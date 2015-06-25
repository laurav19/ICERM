function solution = evasion_evolution(initial_config, time_limit, steps)
  
  n = size(initial_config,1);
  
  time = linspace(0,time_limit,steps);
  
  y_01 = initial_config';
  y_01 = reshape(y_01, 2*n, 1);
  
  solution = lsode(@evasion_02, y_01, time);
  
  initial = initial_config;
  initial = [initial; initial(1,:)];
  
  interval = floor(steps/3);
  plot_steps = interval.*[1;2;3];
  
  figure
  
  subplot(2,2,1)
  axis('equal');
  plot(initial(:,1), initial(:,2),'LineWidth',2);
  title('Initial configuration');
  axis('equal');
  axis off
  
  for j = 1:3
  
    subplot(2,2,j+1)
    hold on
    
    plot(initial(:,1), initial(:,2),'LineWidth',1.2);
    colors = ['c','r','m','g','y'];
    for i = 1:n
      plot(solution(1:plot_steps(j),2*i - 1), solution(1:plot_steps(j),2*i), colors(i));
    end
    
    final = reshape(solution(plot_steps(j),:),2,n);
    final = final';
    final = [final; final(1,:)];
    
    plot(final(:,1), final(:,2), 'k','LineWidth',1.2);
    axis('equal');
    axis off
    title(['Time = ', num2str(plot_steps(j)*time_limit/steps)]);
    hold off
    
  end
  
end
