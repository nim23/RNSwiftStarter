import React from 'react'
import {
  View,
  Text,
  StyleSheet,
  AppRegistry, 
  NativeModules 
} from 'react-native'

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  }, 
  text: {
    fontSize: 24,
    fontWeight: 'bold'
  }
})

const Logger = NativeModules.Logger

Logger.log('Hello World!!')

const App = () => (<View style={styles.container}>
              <Text style={styles.text}>Hello World</Text>
            </View>)

AppRegistry.registerComponent('App', () => App)

