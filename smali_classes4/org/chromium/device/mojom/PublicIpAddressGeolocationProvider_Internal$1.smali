.class Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$1;
.super Lorg/chromium/mojo/bindings/Interface$Manager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Manager<",
        "Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider;",
        "Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider$Proxy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Interface$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public buildArray(I)[Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider;
    .locals 0

    new-array p0, p1, [Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider;

    return-object p0
.end method

.method public bridge synthetic buildArray(I)[Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$1;->buildArray(I)[Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider;

    move-result-object p0

    return-object p0
.end method

.method public buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$Proxy;
    .locals 0

    new-instance p0, Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$Proxy;

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$Proxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-object p0
.end method

.method public bridge synthetic buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$1;->buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$Proxy;

    move-result-object p0

    return-object p0
.end method

.method public buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider;)Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$Stub;
    .locals 0

    new-instance p0, Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$Stub;

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider;)V

    return-object p0
.end method

.method public bridge synthetic buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;
    .locals 0

    check-cast p2, Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$1;->buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider;)Lorg/chromium/device/mojom/PublicIpAddressGeolocationProvider_Internal$Stub;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "device.mojom.PublicIpAddressGeolocationProvider"

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
