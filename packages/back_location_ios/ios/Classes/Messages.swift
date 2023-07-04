// Autogenerated from Pigeon (v10.1.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

enum PigeonLocationAccuracy: Int {
  case powerSave = 0
  case low = 1
  case balanced = 2
  case high = 3
  case navigation = 4
}

/// Generated class from Pigeon that represents data sent in messages.
struct PigeonLocationData {
  var latitude: Double? = nil
  var longitude: Double? = nil
  var accuracy: Double? = nil
  var altitude: Double? = nil
  var bearing: Double? = nil
  var bearingAccuracyDegrees: Double? = nil
  var elapsedRealTimeNanos: Double? = nil
  var elapsedRealTimeUncertaintyNanos: Double? = nil
  var satellites: Int64? = nil
  var speed: Double? = nil
  var speedAccuracy: Double? = nil
  var time: Double? = nil
  var verticalAccuracy: Double? = nil
  var isMock: Bool? = nil

  static func fromList(_ list: [Any?]) -> PigeonLocationData? {
    let latitude: Double? = nilOrValue(list[0])
    let longitude: Double? = nilOrValue(list[1])
    let accuracy: Double? = nilOrValue(list[2])
    let altitude: Double? = nilOrValue(list[3])
    let bearing: Double? = nilOrValue(list[4])
    let bearingAccuracyDegrees: Double? = nilOrValue(list[5])
    let elapsedRealTimeNanos: Double? = nilOrValue(list[6])
    let elapsedRealTimeUncertaintyNanos: Double? = nilOrValue(list[7])
    let satellites: Int64? = list[8] is NSNull ? nil : (list[8] is Int64? ? list[8] as! Int64? : Int64(list[8] as! Int32))
    let speed: Double? = nilOrValue(list[9])
    let speedAccuracy: Double? = nilOrValue(list[10])
    let time: Double? = nilOrValue(list[11])
    let verticalAccuracy: Double? = nilOrValue(list[12])
    let isMock: Bool? = nilOrValue(list[13])

    return PigeonLocationData(
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
      altitude: altitude,
      bearing: bearing,
      bearingAccuracyDegrees: bearingAccuracyDegrees,
      elapsedRealTimeNanos: elapsedRealTimeNanos,
      elapsedRealTimeUncertaintyNanos: elapsedRealTimeUncertaintyNanos,
      satellites: satellites,
      speed: speed,
      speedAccuracy: speedAccuracy,
      time: time,
      verticalAccuracy: verticalAccuracy,
      isMock: isMock
    )
  }
  func toList() -> [Any?] {
    return [
      latitude,
      longitude,
      accuracy,
      altitude,
      bearing,
      bearingAccuracyDegrees,
      elapsedRealTimeNanos,
      elapsedRealTimeUncertaintyNanos,
      satellites,
      speed,
      speedAccuracy,
      time,
      verticalAccuracy,
      isMock,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct PigeonNotificationSettings {
  var channelName: String? = nil
  var title: String? = nil
  var iconName: String? = nil
  var subtitle: String? = nil
  var description: String? = nil
  var color: String? = nil
  var onTapBringToFront: Bool? = nil

  static func fromList(_ list: [Any?]) -> PigeonNotificationSettings? {
    let channelName: String? = nilOrValue(list[0])
    let title: String? = nilOrValue(list[1])
    let iconName: String? = nilOrValue(list[2])
    let subtitle: String? = nilOrValue(list[3])
    let description: String? = nilOrValue(list[4])
    let color: String? = nilOrValue(list[5])
    let onTapBringToFront: Bool? = nilOrValue(list[6])

    return PigeonNotificationSettings(
      channelName: channelName,
      title: title,
      iconName: iconName,
      subtitle: subtitle,
      description: description,
      color: color,
      onTapBringToFront: onTapBringToFront
    )
  }
  func toList() -> [Any?] {
    return [
      channelName,
      title,
      iconName,
      subtitle,
      description,
      color,
      onTapBringToFront,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct PigeonLocationSettings {
  var useGooglePlayServices: Bool
  var fallbackToGPS: Bool
  var ignoreLastKnownPosition: Bool
  var expirationDuration: Double? = nil
  var expirationTime: Double? = nil
  var fastestInterval: Double
  var interval: Double
  var maxWaitTime: Double? = nil
  var numUpdates: Int64? = nil
  var accuracy: PigeonLocationAccuracy
  var smallestDisplacement: Double
  var waitForAccurateLocation: Bool
  var acceptableAccuracy: Double? = nil

  static func fromList(_ list: [Any?]) -> PigeonLocationSettings? {
    let useGooglePlayServices = list[0] as! Bool
    let fallbackToGPS = list[1] as! Bool
    let ignoreLastKnownPosition = list[2] as! Bool
    let expirationDuration: Double? = nilOrValue(list[3])
    let expirationTime: Double? = nilOrValue(list[4])
    let fastestInterval = list[5] as! Double
    let interval = list[6] as! Double
    let maxWaitTime: Double? = nilOrValue(list[7])
    let numUpdates: Int64? = list[8] is NSNull ? nil : (list[8] is Int64? ? list[8] as! Int64? : Int64(list[8] as! Int32))
    let accuracy = PigeonLocationAccuracy(rawValue: list[9] as! Int)!
    let smallestDisplacement = list[10] as! Double
    let waitForAccurateLocation = list[11] as! Bool
    let acceptableAccuracy: Double? = nilOrValue(list[12])

    return PigeonLocationSettings(
      useGooglePlayServices: useGooglePlayServices,
      fallbackToGPS: fallbackToGPS,
      ignoreLastKnownPosition: ignoreLastKnownPosition,
      expirationDuration: expirationDuration,
      expirationTime: expirationTime,
      fastestInterval: fastestInterval,
      interval: interval,
      maxWaitTime: maxWaitTime,
      numUpdates: numUpdates,
      accuracy: accuracy,
      smallestDisplacement: smallestDisplacement,
      waitForAccurateLocation: waitForAccurateLocation,
      acceptableAccuracy: acceptableAccuracy
    )
  }
  func toList() -> [Any?] {
    return [
      useGooglePlayServices,
      fallbackToGPS,
      ignoreLastKnownPosition,
      expirationDuration,
      expirationTime,
      fastestInterval,
      interval,
      maxWaitTime,
      numUpdates,
      accuracy.rawValue,
      smallestDisplacement,
      waitForAccurateLocation,
      acceptableAccuracy,
    ]
  }
}

private class LocationHostApiCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return PigeonLocationData.fromList(self.readValue() as! [Any?])
      case 129:
        return PigeonLocationSettings.fromList(self.readValue() as! [Any?])
      case 130:
        return PigeonLocationSettings.fromList(self.readValue() as! [Any?])
      case 131:
        return PigeonNotificationSettings.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class LocationHostApiCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? PigeonLocationData {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else if let value = value as? PigeonLocationSettings {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else if let value = value as? PigeonLocationSettings {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else if let value = value as? PigeonNotificationSettings {
      super.writeByte(131)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class LocationHostApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return LocationHostApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return LocationHostApiCodecWriter(data: data)
  }
}

class LocationHostApiCodec: FlutterStandardMessageCodec {
  static let shared = LocationHostApiCodec(readerWriter: LocationHostApiCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol LocationHostApi {
  func getLocation(settings: PigeonLocationSettings?, completion: @escaping (Result<PigeonLocationData, Error>) -> Void)
  func setLocationSettings(settings: PigeonLocationSettings) throws -> Bool
  func changeNotificationSettings(settings: PigeonNotificationSettings) throws -> Bool
  func setBackgroundActivated(activated: Bool) throws -> Bool
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class LocationHostApiSetup {
  /// The codec used by LocationHostApi.
  static var codec: FlutterStandardMessageCodec { LocationHostApiCodec.shared }
  /// Sets up an instance of `LocationHostApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: LocationHostApi?) {
    let getLocationChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.LocationHostApi.getLocation", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      getLocationChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let settingsArg: PigeonLocationSettings? = nilOrValue(args[0])
        api.getLocation(settings: settingsArg) { result in
          switch result {
            case .success(let res):
              reply(wrapResult(res))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      getLocationChannel.setMessageHandler(nil)
    }
    let setLocationSettingsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.LocationHostApi.setLocationSettings", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setLocationSettingsChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let settingsArg = args[0] as! PigeonLocationSettings
        do {
          let result = try api.setLocationSettings(settings: settingsArg)
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setLocationSettingsChannel.setMessageHandler(nil)
    }
    let changeNotificationSettingsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.LocationHostApi.changeNotificationSettings", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      changeNotificationSettingsChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let settingsArg = args[0] as! PigeonNotificationSettings
        do {
          let result = try api.changeNotificationSettings(settings: settingsArg)
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      changeNotificationSettingsChannel.setMessageHandler(nil)
    }
    let setBackgroundActivatedChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.LocationHostApi.setBackgroundActivated", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setBackgroundActivatedChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let activatedArg = args[0] as! Bool
        do {
          let result = try api.setBackgroundActivated(activated: activatedArg)
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setBackgroundActivatedChannel.setMessageHandler(nil)
    }
  }
}
