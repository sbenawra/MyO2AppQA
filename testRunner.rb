system('pkill emulator')
system ('pkill calabash-android')
system('pkill cucumber')

fork { system('emulator -avd TestDevice1 -scale 0.75') }

fork {
  puts 'Loading Device.....'
  loop do
      puts 'Current Device State: ' + `adb get-state shell`
      sleep(5)
      if "device" == `adb get-state shell`.strip!() 
        break
      end
  end

  puts 'Waiting for Lock Screen to appear.....'
  loop do
      sleep(5)
      if '' == `adb shell ps | grep /system/bin/bootanimation`
        puts 'Device boot completed.'
        break
      end
  end
  
  system(`adb shell input keyevent 82`)
  
  puts 'status : Device unlocked'

  system('calabash-android run ~/projects/o2/MyO2Android/bin/MyO2-debug.apk --format html --out reports.html')
    
  system(`adb emu kill`)
  
  system('/n')
  
}

