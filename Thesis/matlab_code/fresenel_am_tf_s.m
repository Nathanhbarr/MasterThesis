function [r_jkl] = fresnel_am_tf_s(n_j,n_k,n_l,d,lamda)

r_jkl = (fresnel_am_s(n_j,n_k)+fresnel_am_s(n_k,n_l) ...
        .*exp(-2.*1i.*filmphasethickness(d,n_k,lamda)))./ ...
        (1+fresnel_am_s(n_j,n_k).*fresnel_am_s(n_k,n_l) ...
        .*exp(-2.*1i.*filmphasethickness(d,n_k,lamda)));

end