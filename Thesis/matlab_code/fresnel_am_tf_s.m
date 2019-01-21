function [r_jkl] = fresnel_am_tf_s(n_j,n_k,n_l,d,lamda)

r_jkl = (fresnel_am_s(n_j,n_k)+fresnel_am_s(n_k,n_l) ...
        .*exp(-2i.*filmphasethickness(lamda,n_k,d)))./ ...
        (1+fresnel_am_s(n_j,n_k).*fresnel_am_s(n_k,n_l) ...
        .*exp(-2.*1i.*filmphasethickness(lamda,n_k,d)));

end