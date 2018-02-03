package CurrencyApp.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    public void configure(WebSecurity web) throws Exception {
        //   web.ignoring().antMatchers("/resources/**");
        web.ignoring().antMatchers("/login2/**");////NOT SURE WHAT OGNORE MEANSJ


    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
           //.antMatchers("/").permitAll()
        http.authorizeRequests().antMatchers("/index").hasAnyRole("USER", "ADMIN")
                .antMatchers("/getListofBankUsers").hasAnyRole("ADMIN", "ADMIN").antMatchers("/all-tasks")
                .hasAnyRole("ADMIN").anyRequest().authenticated()
                .and().formLogin().loginPage("/login").permitAll()
                .and().logout().permitAll();

        http.csrf().disable();///lokkinto this 1/19]2018 setteled = no
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder authentication__Mgr) throws Exception {
        authentication__Mgr.inMemoryAuthentication().withUser("user1").password("user1").authorities("ROLE_USER").and()
                .withUser("admin").password("admin").authorities("ROLE_USER", "ROLE_ADMIN");

        ///AUTHENTICATIONmGR CAN CHAMGE
    }

}