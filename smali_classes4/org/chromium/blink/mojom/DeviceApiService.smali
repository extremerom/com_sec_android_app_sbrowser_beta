.class public interface abstract Lorg/chromium/blink/mojom/DeviceApiService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DeviceApiService$GetAnnotatedLocation_Response;,
        Lorg/chromium/blink/mojom/DeviceApiService$GetAnnotatedAssetId_Response;,
        Lorg/chromium/blink/mojom/DeviceApiService$GetSerialNumber_Response;,
        Lorg/chromium/blink/mojom/DeviceApiService$GetHostname_Response;,
        Lorg/chromium/blink/mojom/DeviceApiService$GetDirectoryId_Response;,
        Lorg/chromium/blink/mojom/DeviceApiService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getAnnotatedAssetId(Lorg/chromium/blink/mojom/DeviceApiService$GetAnnotatedAssetId_Response;)V
.end method

.method public abstract getAnnotatedLocation(Lorg/chromium/blink/mojom/DeviceApiService$GetAnnotatedLocation_Response;)V
.end method

.method public abstract getDirectoryId(Lorg/chromium/blink/mojom/DeviceApiService$GetDirectoryId_Response;)V
.end method

.method public abstract getHostname(Lorg/chromium/blink/mojom/DeviceApiService$GetHostname_Response;)V
.end method

.method public abstract getSerialNumber(Lorg/chromium/blink/mojom/DeviceApiService$GetSerialNumber_Response;)V
.end method
