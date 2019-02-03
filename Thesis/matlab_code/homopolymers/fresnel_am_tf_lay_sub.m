function [r_jklm] = fresnel_am_tf_lay_sub(n_j,n_k,n_l,n_m,d_k,d_l,lamda)

r_jklm = (fresnel_am_s(n_j,n_k)+ fresnel_am_tf_s(n_k,n_l,n_m,d_l,lamda).*exp(-2i.*filmphasethickness(lamda,n_k,d_k))) ...
./ (1+fresnel_am_s(n_j,n_k).*fresnel_am_tf_s(n_k,n_l,n_m,d_l,lamda).*exp(-2i.*filmphasethickness(lamda,n_k,d_k)));

end