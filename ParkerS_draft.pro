pro ParkerS_draft


  ;input parameters  
R_q = 1.0
t_0 = 6.0178215487213205
t_1 = 6.021385919380437
R_AU = 0.06355015948369724
tau_ = 2.9316301206979682
a_ = -2.987088096855869     
 

;plot Parker spiral
q_0 = R_q*sin(t_1) - R_q*cos(t_1)*tan(t_0)
x_ = R_AU*cos(tau_+!PI)*FINDGEN(3600) + R_AU*cos(tau_+!PI)
A = 50.*(!PI/180.)
k = -FLOOR((a_ + !PI)/(!PI - a_))      
w = -FINDGEN(3600)*(!PI/1800.)-2*k*!PI-a_   
tangent_line = tangent_m(tau_, a_)*x_ + tangent_q(tau_, a_)
teta_0_line = tan(t_0)*x_ + q_0
  
Gang = w
Gmag = P_Spiral(w + a_)
  
  
plot_PS1_sav = POLARPLOT(P_Spiral(w+a_+2*k*!PI), Gang, $
  TITLE='Parker Spiral, r [AU], $\theta$ [rad]',axis_style=0,$
  COLOR='blue', THICK=3, DIM=[1000,1000],FONT_SIZE=15)
plot_PS2 = POLARPLOT( P_Spiral(-w-a_-2*k*!PI), Gang,axis_style=0,$
  COLOR='blue', /OVERPLOT, THICK=3)

plot_teta_0_line = PLOT(x_, teta_0_line, /OVERPLOT, 'r',xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3, axis_style=0,$
  NAME='Direction of max intensity')
  
plot_tangent = PLOT(x_, tangent_line, /OVERPLOT, 'g', xrange=[-1.7, 1.7], yrange=[-1.7, 1.7], THICK=3,linestyle=2, axis_style=0,$
  NAME='Tangent to Parker spiral')
  
plot_R_q = POLARPLOT(fltarr(3600)+R_q, FINDGEN(3600)*(!PI/1800.), COLOR='black', THICK=3, /OVERPLOT,axis_style=0)
  
plot_point_observer = scatterplot(R_q*cos(t_1), R_q*sin(t_1), SYMBOL='star',SYM_SIZE=2.0,SYM_COLOR = 'orange',axis_style=0,$
  Name='Observer',/SYM_FILLED, /OVERPLOT)

plot_point_tangent = scatterplot(R_AU*cos(tau_+!PI), R_AU*sin(tau_+!PI), SYMBOL='square',SYM_SIZE=0.7, axis_style=0,$
  SYM_COLOR = 'green',/SYM_FILLED, NAME='Observed source Position', /OVERPLOT)

plot_point_Sun = scatterplot(0, 0, SYMBOL='circle',SYM_SIZE=4.0,SYM_COLOR = 'orange',/SYM_FILLED, /OVERPLOT, axis_style=0)

leg = LEGEND(TARGET=[plot_teta_0_line, plot_tangent, plot_point_observer, plot_point_tangent], $
  POSITION=[1.7, 1.7], FONT_SIZE=10,$
  /DATA, /AUTO_TEXT_COLOR)


plot_PS1_sav.save,'ParkerSpiral15deg.png'

  end


function Tangent_q, tau, a
  compile_opt strictarr
  A_ = 50.*(!PI/180.)
  return, ((a+tau)/A_)*cos(tau)*(tan(tau) - (a+tau+tan(tau))/(1-(a+tau)*tan(tau)))
end

function Tangent_m, tau, a
  compile_opt strictarr

  return, (a+tau+tan(tau))/(1-(a+tau)*tan(tau))
end


function P_Spiral, tau
  A_ = 50.*(!PI/180.)

  return, -tau/A_
end


