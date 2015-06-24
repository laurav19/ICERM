function solution = solve_and_plot(initial_config, time_limit, steps)
  
  time = linspace(0,time_limit,steps);
  
  y_01 = reshape(initial_config, 8, 1);
  
  %if this doesn't work, try using [T,solution] = solver(@evasion_01,time,y_01);
  solution = lsode(@evasion_01, y_01, time);
  
  initial = initial_config;
  initial = [initial, initial(:,1)];
  
  final = reshape(solution(steps,:),2,4);
  final = [final, final(:,1)];
  
  figure
  
  subplot(2,1,1)
  plot(initial(1,:), initial(2,:),'LineWidth',2);
  title('Initial configuration');
  axis([0 1 0 1]);
  axis('square');
  
  subplot(2, 1, 2)
  hold on
  plot(initial(1,:), initial(2,:),'LineWidth',1.2);
  plot(solution(:,1), solution(:,2), 'b');
  plot(solution(:,3), solution(:,4), 'r');
  plot(solution(:,5), solution(:,6), 'm');
  plot(solution(:,7), solution(:,8), 'g');
  plot(final(1,:), final(2,:), 'k','LineWidth',1.2);
  axis('equal');
  axis off
  title(['Time = ', num2str(time_limit)]);
  hold off
  
end
