.class Lorg/chromium/device/mojom/Geolocation_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/Geolocation_Internal$GeolocationQueryNextPositionResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Geolocation_Internal$GeolocationQueryNextPositionResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Geolocation_Internal$GeolocationQueryNextPositionResponseParams;,
        Lorg/chromium/device/mojom/Geolocation_Internal$GeolocationQueryNextPositionParams;,
        Lorg/chromium/device/mojom/Geolocation_Internal$GeolocationSetHighAccuracyHintParams;,
        Lorg/chromium/device/mojom/Geolocation_Internal$Stub;,
        Lorg/chromium/device/mojom/Geolocation_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/Geolocation;",
            "Lorg/chromium/device/mojom/Geolocation$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/Geolocation_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/Geolocation_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/Geolocation_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
