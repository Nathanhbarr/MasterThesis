function [r_jklm] = fresnel_am_tf_lay_s(n_j,n_k,n_l,n_m,d1,d2,lamda)

r_jklm = ( ...
fresnel_am_s(n_j,n_k) + ... 
fresnel_am_s(n_k,n_l).*exp(-2i.*filmphasethickness(lamda,n_k,d1)) + ...
(fresnel_am_s(n_j,n_k).*fresnel_am_s(n_k,n_l)+exp(-2i.*filmphasethickness(lamda,n_k,d1))) .* ...
fresnel_am_s(n_l,n_m).*exp(-2i.*filmphasethickness(lamda,n_l,d2)))./ ...
(1+fresnel_am_s(n_j,n_k).*fresnel_am_s(n_k,n_l).*exp(-2i.*filmphasethickness(lamda,n_k,d1))+...
(fresnel_am_s(n_k,n_l)+fresnel_am_s(n_j,n_k).*exp(-2i.*filmphasethickness(lamda,n_k,d1))) .* ...
fresnel_am_s(n_l,n_m).*exp(-2i.*filmphasethickness(lamda,n_l,d2)) ...
         );
     
end