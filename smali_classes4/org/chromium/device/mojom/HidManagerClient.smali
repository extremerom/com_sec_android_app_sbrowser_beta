.class public interface abstract Lorg/chromium/device/mojom/HidManagerClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/HidManagerClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract deviceAdded(Lorg/chromium/device/mojom/HidDeviceInfo;)V
.end method

.method public abstract deviceChanged(Lorg/chromium/device/mojom/HidDeviceInfo;)V
.end method

.method public abstract deviceRemoved(Lorg/chromium/device/mojom/HidDeviceInfo;)V
.end method
