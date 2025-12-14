.class public interface abstract Lorg/chromium/device/mojom/Geolocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/Geolocation$QueryNextPosition_Response;,
        Lorg/chromium/device/mojom/Geolocation$Proxy;
    }
.end annotation


# virtual methods
.method public abstract queryNextPosition(Lorg/chromium/device/mojom/Geolocation$QueryNextPosition_Response;)V
.end method

.method public abstract setHighAccuracyHint(Z)V
.end method
