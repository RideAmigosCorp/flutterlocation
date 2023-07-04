// Autogenerated from Pigeon (v10.1.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon


import android.util.Log
import io.flutter.plugin.common.BasicMessageChannel
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MessageCodec
import io.flutter.plugin.common.StandardMessageCodec
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer

private fun wrapResult(result: Any?): List<Any?> {
  return listOf(result)
}

private fun wrapError(exception: Throwable): List<Any?> {
  if (exception is FlutterError) {
    return listOf(
      exception.code,
      exception.message,
      exception.details
    )
  } else {
    return listOf(
      exception.javaClass.simpleName,
      exception.toString(),
      "Cause: " + exception.cause + ", Stacktrace: " + Log.getStackTraceString(exception)
    )
  }
}

/**
 * Error class for passing custom error details to Flutter via a thrown PlatformException.
 * @property code The error code.
 * @property message The error message.
 * @property details The error details. Must be a datatype supported by the api codec.
 */
class FlutterError (
  val code: String,
  override val message: String? = null,
  val details: Any? = null
) : Throwable()

enum class PigeonLocationAccuracy(val raw: Int) {
  POWERSAVE(0),
  LOW(1),
  BALANCED(2),
  HIGH(3),
  NAVIGATION(4);

  companion object {
    fun ofRaw(raw: Int): PigeonLocationAccuracy? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class PigeonLocationData (
  val latitude: Double? = null,
  val longitude: Double? = null,
  val accuracy: Double? = null,
  val altitude: Double? = null,
  val bearing: Double? = null,
  val bearingAccuracyDegrees: Double? = null,
  val elapsedRealTimeNanos: Double? = null,
  val elapsedRealTimeUncertaintyNanos: Double? = null,
  val satellites: Long? = null,
  val speed: Double? = null,
  val speedAccuracy: Double? = null,
  val time: Double? = null,
  val verticalAccuracy: Double? = null,
  val isMock: Boolean? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): PigeonLocationData {
      val latitude = list[0] as Double?
      val longitude = list[1] as Double?
      val accuracy = list[2] as Double?
      val altitude = list[3] as Double?
      val bearing = list[4] as Double?
      val bearingAccuracyDegrees = list[5] as Double?
      val elapsedRealTimeNanos = list[6] as Double?
      val elapsedRealTimeUncertaintyNanos = list[7] as Double?
      val satellites = list[8].let { if (it is Int) it.toLong() else it as Long? }
      val speed = list[9] as Double?
      val speedAccuracy = list[10] as Double?
      val time = list[11] as Double?
      val verticalAccuracy = list[12] as Double?
      val isMock = list[13] as Boolean?
      return PigeonLocationData(latitude, longitude, accuracy, altitude, bearing, bearingAccuracyDegrees, elapsedRealTimeNanos, elapsedRealTimeUncertaintyNanos, satellites, speed, speedAccuracy, time, verticalAccuracy, isMock)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
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
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class PigeonNotificationSettings (
  val channelName: String? = null,
  val channelDescription: String? = null,
  val title: String? = null,
  val iconName: String? = null,
  val subtitle: String? = null,
  val description: String? = null,
  val color: String? = null,
  val onTapBringToFront: Boolean? = null,
  val setOngoing: Boolean? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): PigeonNotificationSettings {
      val channelName = list[0] as String?
      val channelDescription = list[1] as String?
      val title = list[2] as String?
      val iconName = list[3] as String?
      val subtitle = list[4] as String?
      val description = list[5] as String?
      val color = list[6] as String?
      val onTapBringToFront = list[7] as Boolean?
      val setOngoing = list[8] as Boolean?
      return PigeonNotificationSettings(channelName, channelDescription, title, iconName, subtitle, description, color, onTapBringToFront, setOngoing)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      channelName,
      channelDescription,
      title,
      iconName,
      subtitle,
      description,
      color,
      onTapBringToFront,
      setOngoing,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class PigeonLocationSettings (
  val askForGooglePlayServices: Boolean,
  val useGooglePlayServices: Boolean,
  val fallbackToGPS: Boolean,
  val ignoreLastKnownPosition: Boolean,
  val expirationDuration: Double? = null,
  val fastestInterval: Double,
  val interval: Double,
  val maxWaitTime: Double? = null,
  val numUpdates: Long? = null,
  val accuracy: PigeonLocationAccuracy,
  val smallestDisplacement: Double,
  val waitForAccurateLocation: Boolean,
  val acceptableAccuracy: Double? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): PigeonLocationSettings {
      val askForGooglePlayServices = list[0] as Boolean
      val useGooglePlayServices = list[1] as Boolean
      val fallbackToGPS = list[2] as Boolean
      val ignoreLastKnownPosition = list[3] as Boolean
      val expirationDuration = list[4] as Double?
      val fastestInterval = list[5] as Double
      val interval = list[6] as Double
      val maxWaitTime = list[7] as Double?
      val numUpdates = list[8].let { if (it is Int) it.toLong() else it as Long? }
      val accuracy = PigeonLocationAccuracy.ofRaw(list[9] as Int)!!
      val smallestDisplacement = list[10] as Double
      val waitForAccurateLocation = list[11] as Boolean
      val acceptableAccuracy = list[12] as Double?
      return PigeonLocationSettings(askForGooglePlayServices, useGooglePlayServices, fallbackToGPS, ignoreLastKnownPosition, expirationDuration, fastestInterval, interval, maxWaitTime, numUpdates, accuracy, smallestDisplacement, waitForAccurateLocation, acceptableAccuracy)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      askForGooglePlayServices,
      useGooglePlayServices,
      fallbackToGPS,
      ignoreLastKnownPosition,
      expirationDuration,
      fastestInterval,
      interval,
      maxWaitTime,
      numUpdates,
      accuracy.raw,
      smallestDisplacement,
      waitForAccurateLocation,
      acceptableAccuracy,
    )
  }
}

@Suppress("UNCHECKED_CAST")
private object LocationHostApiCodec : StandardMessageCodec() {
  override fun readValueOfType(type: Byte, buffer: ByteBuffer): Any? {
    return when (type) {
      128.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          PigeonLocationData.fromList(it)
        }
      }
      129.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          PigeonLocationSettings.fromList(it)
        }
      }
      130.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          PigeonLocationSettings.fromList(it)
        }
      }
      131.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          PigeonNotificationSettings.fromList(it)
        }
      }
      else -> super.readValueOfType(type, buffer)
    }
  }
  override fun writeValue(stream: ByteArrayOutputStream, value: Any?)   {
    when (value) {
      is PigeonLocationData -> {
        stream.write(128)
        writeValue(stream, value.toList())
      }
      is PigeonLocationSettings -> {
        stream.write(129)
        writeValue(stream, value.toList())
      }
      is PigeonLocationSettings -> {
        stream.write(130)
        writeValue(stream, value.toList())
      }
      is PigeonNotificationSettings -> {
        stream.write(131)
        writeValue(stream, value.toList())
      }
      else -> super.writeValue(stream, value)
    }
  }
}

/** Generated interface from Pigeon that represents a handler of messages from Flutter. */
interface LocationHostApi {
  fun getLocation(settings: PigeonLocationSettings?, callback: (Result<PigeonLocationData>) -> Unit)
  fun setLocationSettings(settings: PigeonLocationSettings): Boolean
  fun changeNotificationSettings(settings: PigeonNotificationSettings): Boolean
  fun setBackgroundActivated(activated: Boolean): Boolean

  companion object {
    /** The codec used by LocationHostApi. */
    val codec: MessageCodec<Any?> by lazy {
      LocationHostApiCodec
    }
    /** Sets up an instance of `LocationHostApi` to handle messages through the `binaryMessenger`. */
    @Suppress("UNCHECKED_CAST")
    fun setUp(binaryMessenger: BinaryMessenger, api: LocationHostApi?) {
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.LocationHostApi.getLocation", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val settingsArg = args[0] as PigeonLocationSettings?
            api.getLocation(settingsArg) { result: Result<PigeonLocationData> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                val data = result.getOrNull()
                reply.reply(wrapResult(data))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.LocationHostApi.setLocationSettings", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val settingsArg = args[0] as PigeonLocationSettings
            var wrapped: List<Any?>
            try {
              wrapped = listOf<Any?>(api.setLocationSettings(settingsArg))
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.LocationHostApi.changeNotificationSettings", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val settingsArg = args[0] as PigeonNotificationSettings
            var wrapped: List<Any?>
            try {
              wrapped = listOf<Any?>(api.changeNotificationSettings(settingsArg))
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.LocationHostApi.setBackgroundActivated", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val activatedArg = args[0] as Boolean
            var wrapped: List<Any?>
            try {
              wrapped = listOf<Any?>(api.setBackgroundActivated(activatedArg))
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
    }
  }
}
