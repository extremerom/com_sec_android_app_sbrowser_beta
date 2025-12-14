.class public interface abstract Lorg/chromium/blink/mojom/KeyboardLockService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/KeyboardLockService$GetKeyboardLayoutMap_Response;,
        Lorg/chromium/blink/mojom/KeyboardLockService$RequestKeyboardLock_Response;,
        Lorg/chromium/blink/mojom/KeyboardLockService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cancelKeyboardLock()V
.end method

.method public abstract getKeyboardLayoutMap(Lorg/chromium/blink/mojom/KeyboardLockService$GetKeyboardLayoutMap_Response;)V
.end method

.method public abstract requestKeyboardLock([Ljava/lang/String;Lorg/chromium/blink/mojom/KeyboardLockService$RequestKeyboardLock_Response;)V
.end method
