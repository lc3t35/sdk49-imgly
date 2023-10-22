import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { PhotoEditorModal } from 'react-native-photoeditorsdk';
const image = require('./assets/demo_discover.jpg');

export default function App() {
  return (
    <View style={styles.container}>
      <PhotoEditorModal
        // Add a photo from the assets directory.
        image={image}
        // Determine whether the editor should be visible or not.
        visible={true}
        onExport={(result) => {
          // The user exported a new photo successfully and the newly generated photo is located at `result.image`.
          console.log(result.image);
        }}
        onCancel={() => {
          // The user tapped on the cancel button within the editor.
        }}
        onError={(error) => {
          // There was an error generating the photo.
          console.log(error);
        }}
      ></PhotoEditorModal>
      <Text>Open up App.js to start working on your app!</Text>
      <StatusBar style='auto' />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
