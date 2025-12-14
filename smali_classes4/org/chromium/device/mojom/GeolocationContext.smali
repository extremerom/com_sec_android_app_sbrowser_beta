.class public interface abstract Lorg/chromium/device/mojom/GeolocationContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/GeolocationContext$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bindGeolocation(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/url/mojom/Url;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/device/mojom/Geolocation;",
            ">;",
            "Lorg/chromium/url/mojom/Url;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract clearOverride()V
.end method

.method public abstract onPermissionRevoked(Lorg/chromium/url/internal/mojom/Origin;)V
.end method

.method public abstract setOverride(Lorg/chromium/device/mojom/GeopositionResult;)V
.end method
