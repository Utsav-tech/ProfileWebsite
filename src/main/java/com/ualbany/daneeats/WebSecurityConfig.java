package com.ualbany.daneeats;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Qualifier("userDetailsServiceImpl")
    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    
    //We need to make sure that no authentication is required for /register and /confirm URLs as they are the landing pages
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/resources/**", "/register","/verify-email","/Customer-login","/customer","/Delivery-login","*/customer.png","*/delivery.jpeg",
                		"img/image2.jpg","/intro.jsp","img/starbucks.jpg","/cart.html","img/mcd.png","img/pizza.png","img/bk.png","img/dunkin.png","/order.jsp",
                		"/CustomerProfile.jsp","/home","img/dane.jpg","/ViewOrders.jsp","/DeliveryProfile.jsp","/home.jsp","/changePassC.jsp",
                		"/changePassD.jsp","/Action.jsp","/Action.jsp/*","/index.html","img/pizza-1.png","img/pizza-2.png","img/pizza-3.png","img/pizza-4.png","img/screenshot.jpg",
                		"img/logo.png","img/icon.png","img/cart.svg","/jquery.min.js","/mycart.js","/mycart-custom.js","custom-general.js",
                		"img/restaurant.png","img/restaurant.png","img/customer_banner.jpg","img/babas.jpg","img/fg.png","/css/style.css","/css/bootstrap.min.css",
                		"img/damiens.jpg", "img/damiens.jpg","img/umaisushi.jpg", "img/customer_banner.jpg","/customer/menu", "/customer/pastorders",
                		"img/cart.svg","js/jquery.min.js","js/mycart.js","js/mycart-custom.js","custom-general.js","/customer/currentorders","css/style.css",
                		"/customer/profile", "/customer/placeorder","/menu.html","/customer/save","/previousOrders.jsp","/CurrentOrders.jsp","/PreviousOrdersD.jsp",
                		"/delivery/currentorders","/delivery/availableorders","/delivery/previousordersd","/delivery/acceptorders","/ProcessOrder.jsp").permitAll()
                .anyRequest().authenticated()
                .and()
                
            .formLogin()
               .loginPage("/home")
                .permitAll()
                .and()
            .logout()
                .permitAll();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/api/order/save");
    }
    
    @Bean
    public AuthenticationManager customAuthenticationManager() throws Exception {
        return authenticationManager();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
    }
}