.class public interface abstract Lorg/chromium/device/mojom/WakeLock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/WakeLock$HasWakeLockForTests_Response;,
        Lorg/chromium/device/mojom/WakeLock$ChangeType_Response;,
        Lorg/chromium/device/mojom/WakeLock$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addClient(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/device/mojom/WakeLock;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelWakeLock()V
.end method

.method public abstract changeType(ILorg/chromium/device/mojom/WakeLock$ChangeType_Response;)V
.end method

.method public abstract hasWakeLockForTests(Lorg/chromium/device/mojom/WakeLock$HasWakeLockForTests_Response;)V
.end method

.method public abstract requestWakeLock()V
.end method
