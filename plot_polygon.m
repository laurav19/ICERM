function pol = plot_polygon(len_ang)
  
  n = size(len_ang(:,1))/2;
  tol = 1e-5;
  
  v = nan(n,2);
  v(1,:) = [0, len_ang(1,1)];
  
  for i = 2:n
    theta = v(i-1,1) + pi - len_ang(2*(i-1));
    v(i,:) = [theta, len_ang(2*i - 1)];
  end
  
  [v(:,1), v(:,2)] = pol2cart(v);
  
  pol = nan(n,2);
  sum = [0,0];
  
  for i = 1:n
    pol(i,:) = sum;
    sum = sum + v(i,:);
  end
  
  %norm(sum - pol(1,:))
  
  if norm(sum - pol(1,:)) > tol
    fprintf('\nNon valid polygon\n');
    last = sum
  end
  
  initial = pol;
  initial = [initial; sum];
  
  figure
  
  plot(initial(:,1), initial(:,2),'LineWidth',2);
  title('Initial configuration');
  axis('equal');
  
  %min1 = min(min(initial(:,1)), min(initial(:,2)));
  %max1 = max(max(initial(:,1)), max(initial(:,2)));
  
  %axis([min1, max1, min1, max1]);
  
end
