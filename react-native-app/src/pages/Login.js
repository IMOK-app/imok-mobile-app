import React from 'react';
import { 
  SafeAreaView,
  Image,
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet
} from 'react-native';

const Login = () => (
  <SafeAreaView style={styles.container}>
    <Image source={require('../../assets/icon.png')} style={styles.logo} />

    <View style={styles.titleContainer}>
      <Text style={styles.title}>Já esteve aqui antes?</Text>
      <Text style={styles.subtitle}>Faça seu login novamente :)</Text>
    </View>

    <View style={styles.formContainer}>
      <Text>Qual é o seu email mesmo?</Text>
      <TextInput style={styles.input} placeholder='Ex.: email@domínio.com' />
      
      <Text>Coloque a sua senha</Text>
      <TextInput style={styles.input} />

      <View style={{ borderBottomColor: 'grey', borderBottomWidth: 3, paddingBottom: 20, marginBottom: 10 }}>
        <TouchableOpacity style={styles.loginButton}>
          <Text style={styles.loginButtonText}>Pronto!</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.googleButton}>
          <Text style={styles.googleButtonText}>Conectar com Google</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.forgotButton}>
          <Text style={styles.forgotButtonText}>Esqueci minha senha :(</Text>
        </TouchableOpacity>
      </View>

      <TouchableOpacity style={styles.createButton}>
        <Text style={styles.createButtonText}>Ainda não tenho conta :)</Text>
      </TouchableOpacity>
    </View>
  </SafeAreaView>
);

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    paddingVertical: 30
  },
  logo: {
    width: 150,
    height: 150
  },
  titleContainer: {
    alignItems: 'center',

    padding: 10,
    margin: 30,

    borderBottomWidth: 3,
    borderBottomColor: 'grey'
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold'
  },
  subtitle: {
    fontSize: 15,
    fontWeight: '800'
  },
  formContainer: {
    marginVertical: 10
  },
  text: {
    fontSize: 15,
    marginVertical: 10
  },
  input: {
    borderColor: 'rgb(40, 53, 147)',
    borderWidth: 1,
    borderRadius: 4,
    padding: 5,
    marginVertical: 5,
    fontSize: 15
  },
  loginButton: {
    alignItems: 'center',
    backgroundColor: 'rgb(40, 53, 147)',
    borderRadius: 7,
    padding: 10,
    marginVertical: 5
  },
  loginButtonText: {
    color: 'white',
    fontSize: 15
  },
  forgotButton: {
    alignItems: 'center',
    borderColor: 'rgb(40, 53, 147)',
    borderWidth: 1,
    borderRadius: 7,
    padding: 10,
    marginVertical: 5
  },
  forgotButtonText: {
    color: 'rgb(40, 53, 147)',
    fontSize: 15
  },
  googleButton: {
    alignItems: 'center',
    borderColor: 'grey',
    borderWidth: 1,
    borderRadius: 5,
    padding: 10,
    marginVertical: 5
  },
  googleButtonText: {
    color: 'grey',
    fontSize: 15
  },
  createButton: {
    alignItems: 'center',
    backgroundColor: 'rgb(40, 53, 147)',
    borderRadius: 5,
    padding: 10,
    marginVertical: 5
  },
  createButtonText: {
    color: 'white',
    fontSize: 15
  },
});

export default Login;