.class public interface abstract Lorg/chromium/blink/mojom/DevicePostureProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DevicePostureProvider$AddListenerAndGetCurrentPosture_Response;,
        Lorg/chromium/blink/mojom/DevicePostureProvider$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addListenerAndGetCurrentPosture(Lorg/chromium/blink/mojom/DevicePostureClient;Lorg/chromium/blink/mojom/DevicePostureProvider$AddListenerAndGetCurrentPosture_Response;)V
.end method

.method public abstract disableDevicePostureOverrideForEmulation()V
.end method

.method public abstract overrideDevicePostureForEmulation(I)V
.end method
