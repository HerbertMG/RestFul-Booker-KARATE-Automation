function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
    karate.configure('retry',{ count:10, interval:2000});
  if (!env) {
    env = 'uat';
  } var config = {
        env: env,
            Entorno: 'UAT',
            host: 'https://restful-booker.herokuapp.com',
      }
  if (env == 'STG') {
    config.Entorno='STG';
    config.host='https://restful-booker.herokuapp.com';
  } else if (env == 'uat') {
        config.Entorno= 'UAT';
        config.host= 'https://restful-booker.herokuapp.com';
  }
  return config;
}