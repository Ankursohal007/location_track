package com.uc.uclocation.provider

import java.util.HashMap

interface LocationUpdateListener {
    fun onLocationUpdated(location: HashMap<Any, Any>?)
}