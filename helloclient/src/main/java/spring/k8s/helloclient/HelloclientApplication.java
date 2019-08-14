package spring.k8s.helloclient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class HelloclientApplication {

	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}

	public static void main(String[] args) {
		SpringApplication.run(HelloclientApplication.class, args);
	}

}

@RestController
class HelloClientController {

	@Autowired
	RestTemplate restTemplate;

	@GetMapping("/")
	public String callHello() {
		System.out.println("Calling hello-service");
		String str = restTemplate.getForObject("http://hello-service:8080/madhav", String.class);
		System.out.println("Return: " + str);
		return str;
	}
}
