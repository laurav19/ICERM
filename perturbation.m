function pol = perturbation(initial_config, eigenvec, epsilon)
%% Lenghts and angles to cartesian coordinates
  pol = initial_config + epsilon.*eigenvec;
  pol = plot_polygon(pol);
end
