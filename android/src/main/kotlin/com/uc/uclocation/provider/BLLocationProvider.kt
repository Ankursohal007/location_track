package com.uc.uclocation.provider

interface BLLocationProvider {
    var listener: LocationUpdateListener?

    fun removeLocationUpdates()

    fun requestLocationUpdates(request: LocationRequestOptions)
}
