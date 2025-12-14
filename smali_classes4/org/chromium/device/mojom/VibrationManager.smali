.class public interface abstract Lorg/chromium/device/mojom/VibrationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/VibrationManager$Cancel_Response;,
        Lorg/chromium/device/mojom/VibrationManager$Vibrate_Response;,
        Lorg/chromium/device/mojom/VibrationManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cancel(Lorg/chromium/device/mojom/VibrationManager$Cancel_Response;)V
.end method

.method public abstract vibrate(JLorg/chromium/device/mojom/VibrationManager$Vibrate_Response;)V
.end method
