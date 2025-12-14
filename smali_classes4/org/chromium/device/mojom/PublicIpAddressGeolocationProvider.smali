.class public interface abstract Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createGeolocation(Lorg/chromium/network/mojom/MutablePartialNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/MutablePartialNetworkTrafficAnnotationTag;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/device/mojom/Geolocation;",
            ">;I)V"
        }
    .end annotation
.end method
