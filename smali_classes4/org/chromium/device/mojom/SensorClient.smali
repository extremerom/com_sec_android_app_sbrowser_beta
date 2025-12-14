.class public interface abstract Lorg/chromium/device/mojom/SensorClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SensorClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract raiseError()V
.end method

.method public abstract sensorReadingChanged()V
.end method
