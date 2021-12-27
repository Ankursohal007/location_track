# location_track

Plugin for tracking location in background.

## Getting Started

Please see example for more details.



### IOS

1) Add below code in AppDelegate.swift


```

func registerPlugins(registry: FlutterPluginRegistry) {
    GeneratedPluginRegistrant.register(with: registry)
}


  UCLocationPlugin.setPluginRegistrantCallback(registerPlugins)
  
```


2) Add below changes in Capabilities


<img width="684" alt="1" src="https://user-images.githubusercontent.com/89975680/147493113-c598523c-fb5a-4008-b5ef-d085dd2d977b.png">

<img width="716" alt="2" src="https://user-images.githubusercontent.com/89975680/147493117-4cea86e7-2bd0-47dd-8fcd-6d4a08498a38.png">

<img width="689" alt="3" src="https://user-images.githubusercontent.com/89975680/147493122-a3492f7a-dec2-44c8-a448-318f8931d54c.png">

  
  
