\ Model two_stage_furniture
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  2 x[b] + 4 x[f] + 5.2 x[c] - 18 y[d,l] - 24 y[d,m] - 18 y[d,h] - 12 y[t,l]
   - 16 y[t,m] - 12 y[t,h] - 3 y[c,l] - 4 y[c,m] - 3 y[c,h]
Subject To
 res_b_l: - x[b] + 8 y[d,l] + 6 y[t,l] + y[c,l] <= 0
 res_f_l: - x[f] + 4 y[d,l] + 2 y[t,l] + 1.5 y[c,l] <= 0
 res_c_l: - x[c] + 2 y[d,l] + 1.5 y[t,l] + 0.5 y[c,l] <= 0
 res_b_m: - x[b] + 8 y[d,m] + 6 y[t,m] + y[c,m] <= 0
 res_f_m: - x[f] + 4 y[d,m] + 2 y[t,m] + 1.5 y[c,m] <= 0
 res_c_m: - x[c] + 2 y[d,m] + 1.5 y[t,m] + 0.5 y[c,m] <= 0
 res_b_h: - x[b] + 8 y[d,h] + 6 y[t,h] + y[c,h] <= 0
 res_f_h: - x[f] + 4 y[d,h] + 2 y[t,h] + 1.5 y[c,h] <= 0
 res_c_h: - x[c] + 2 y[d,h] + 1.5 y[t,h] + 0.5 y[c,h] <= 0
 demand_d_l: y[d,l] <= 50
 demand_t_l: y[t,l] <= 20
 demand_c_l: y[c,l] <= 200
 demand_d_m: y[d,m] <= 150
 demand_t_m: y[t,m] <= 110
 demand_c_m: y[c,m] <= 225
 demand_d_h: y[d,h] <= 250
 demand_t_h: y[t,h] <= 250
 demand_c_h: y[c,h] <= 500
Bounds
End
