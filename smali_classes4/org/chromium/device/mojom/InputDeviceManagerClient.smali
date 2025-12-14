.class public interface abstract Lorg/chromium/device/mojom/InputDeviceManagerClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/InputDeviceManagerClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract inputDeviceAdded(Lorg/chromium/device/mojom/InputDeviceInfo;)V
.end method

.method public abstract inputDeviceRemoved(Ljava/lang/String;)V
.end method
