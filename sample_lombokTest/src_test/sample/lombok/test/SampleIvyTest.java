package sample.lombok.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;

import sample_lombok.sample.AuthorizationData;

public class SampleIvyTest{
      
    @Test
    public void test_AuthData() {
    	var data = AuthorizationData.builder().port("testPort").build();
    	assertThat(data.getPort()).isEqualTo("testPort");
    }
  
}
