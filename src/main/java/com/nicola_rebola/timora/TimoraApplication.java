package com.nicola_rebola.timora;
import org.springframework.boot.SpringApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@ComponentScan(basePackages = "com.nicola_rebola.timora.controllers")
@ComponentScan(basePackages = "com.nicola_rebola.timora.config")
public class TimoraApplication {

	public static void main(String[] args) {
		SpringApplication.run(TimoraApplication.class, args);
	}

}
