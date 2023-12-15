package com.example.apiclientsdk;

import com.example.apiclientsdk.client.APIClient;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties("api.client")
@Data
@ComponentScan
public class APIClientConfig {
    private String accessKey;
    private String secretKey;
    @Bean
    public APIClient apiClient(){
        return new APIClient(accessKey, secretKey);
    }
}
