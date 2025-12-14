.class public interface abstract Lorg/chromium/blink/mojom/GeolocationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/GeolocationService$CreateGeolocation_Response;,
        Lorg/chromium/blink/mojom/GeolocationService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createGeolocation(Lorg/chromium/mojo/bindings/InterfaceRequest;ZLorg/chromium/blink/mojom/GeolocationService$CreateGeolocation_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/device/mojom/Geolocation;",
            ">;Z",
            "Lorg/chromium/blink/mojom/GeolocationService$CreateGeolocation_Response;",
            ")V"
        }
    .end annotation
.end method
