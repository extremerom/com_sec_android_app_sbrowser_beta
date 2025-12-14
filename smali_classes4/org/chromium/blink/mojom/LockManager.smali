.class public interface abstract Lorg/chromium/blink/mojom/LockManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LockManager$QueryState_Response;,
        Lorg/chromium/blink/mojom/LockManager$Proxy;,
        Lorg/chromium/blink/mojom/LockManager$WaitMode;
    }
.end annotation


# virtual methods
.method public abstract queryState(Lorg/chromium/blink/mojom/LockManager$QueryState_Response;)V
.end method

.method public abstract requestLock(Ljava/lang/String;IILorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;)V
.end method
