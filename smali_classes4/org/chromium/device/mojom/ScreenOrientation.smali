.class public interface abstract Lorg/chromium/device/mojom/ScreenOrientation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/ScreenOrientation$LockOrientation_Response;,
        Lorg/chromium/device/mojom/ScreenOrientation$Proxy;
    }
.end annotation


# virtual methods
.method public abstract lockOrientation(ILorg/chromium/device/mojom/ScreenOrientation$LockOrientation_Response;)V
.end method

.method public abstract unlockOrientation()V
.end method
