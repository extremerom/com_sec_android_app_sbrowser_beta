.class public interface abstract Lorg/chromium/device/mojom/SensorProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SensorProvider$GetVirtualSensorInformation_Response;,
        Lorg/chromium/device/mojom/SensorProvider$RemoveVirtualSensor_Response;,
        Lorg/chromium/device/mojom/SensorProvider$UpdateVirtualSensor_Response;,
        Lorg/chromium/device/mojom/SensorProvider$CreateVirtualSensor_Response;,
        Lorg/chromium/device/mojom/SensorProvider$GetSensor_Response;,
        Lorg/chromium/device/mojom/SensorProvider$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createVirtualSensor(ILorg/chromium/device/mojom/VirtualSensorMetadata;Lorg/chromium/device/mojom/SensorProvider$CreateVirtualSensor_Response;)V
.end method

.method public abstract getSensor(ILorg/chromium/device/mojom/SensorProvider$GetSensor_Response;)V
.end method

.method public abstract getVirtualSensorInformation(ILorg/chromium/device/mojom/SensorProvider$GetVirtualSensorInformation_Response;)V
.end method

.method public abstract removeVirtualSensor(ILorg/chromium/device/mojom/SensorProvider$RemoveVirtualSensor_Response;)V
.end method

.method public abstract updateVirtualSensor(ILorg/chromium/device/mojom/SensorReadingRaw;Lorg/chromium/device/mojom/SensorProvider$UpdateVirtualSensor_Response;)V
.end method
