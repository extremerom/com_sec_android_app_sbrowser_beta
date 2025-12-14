.class public interface abstract Lorg/chromium/device/mojom/WakeLockProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/WakeLockProvider$GetActiveWakeLocksForTests_Response;,
        Lorg/chromium/device/mojom/WakeLockProvider$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getActiveWakeLocksForTests(ILorg/chromium/device/mojom/WakeLockProvider$GetActiveWakeLocksForTests_Response;)V
.end method

.method public abstract getWakeLockContextForId(ILorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/device/mojom/WakeLockContext;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getWakeLockWithoutContext(IILjava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/device/mojom/WakeLock;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyOnWakeLockDeactivation(ILorg/chromium/device/mojom/WakeLockObserver;)V
.end method
