package com.uc.my_plugins.pluggables

import android.content.Context
import android.os.Handler
import io.flutter.plugin.common.MethodChannel
import com.uc.my_plugins.IsolateHolderService
import com.uc.my_plugins.Keys
import com.uc.my_plugins.PreferencesManager

class DisposePluggable : Pluggable {
    override fun setCallback(context: Context, callbackHandle: Long) {
        PreferencesManager.setCallbackHandle(context, Keys.DISPOSE_CALLBACK_HANDLE_KEY, callbackHandle)
    }

    override fun onServiceDispose(context: Context) {
        (PreferencesManager.getCallbackHandle(context, Keys.DISPOSE_CALLBACK_HANDLE_KEY))?.let { disposeCallback ->
            val backgroundChannel = MethodChannel(IsolateHolderService.backgroundEngine?.dartExecutor?.binaryMessenger,
                    Keys.BACKGROUND_CHANNEL_ID)
            Handler(context.mainLooper)
                    .post {
                        backgroundChannel.invokeMethod(Keys.BCM_DISPOSE,
                                hashMapOf(Keys.ARG_DISPOSE_CALLBACK to disposeCallback))
                    }
        }
    }
}