function g = evasion_02(state, time)
  
  n = size(state,1)/2;
  state = reshape(state, 2, n);
  state = state';
  state = [state; state(1,:)];
  
  g = [];
  for i = 1:n
    g = [g, (state(i,:) - state(i+1,:)) / norm(state(i,:) - state(i+1,:))];
  end
  
  g = reshape(g, 2*n, 1);
end
