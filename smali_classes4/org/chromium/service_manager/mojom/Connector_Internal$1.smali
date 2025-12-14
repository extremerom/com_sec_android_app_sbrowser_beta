.class Lorg/chromium/service_manager/mojom/Connector_Internal$1;
.super Lorg/chromium/mojo/bindings/Interface$Manager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/service_manager/mojom/Connector_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Manager<",
        "Lorg/chromium/service_manager/mojom/Connector;",
        "Lorg/chromium/service_manager/mojom/Connector$Proxy;",
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
.method public bridge synthetic buildArray(I)[Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/service_manager/mojom/Connector_Internal$1;->buildArray(I)[Lorg/chromium/service_manager/mojom/Connector;

    move-result-object p0

    return-object p0
.end method

.method public buildArray(I)[Lorg/chromium/service_manager/mojom/Connector;
    .locals 0

    new-array p0, p1, [Lorg/chromium/service_manager/mojom/Connector;

    return-object p0
.end method

.method public bridge synthetic buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/service_manager/mojom/Connector_Internal$1;->buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/service_manager/mojom/Connector_Internal$Proxy;

    move-result-object p0

    return-object p0
.end method

.method public buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/service_manager/mojom/Connector_Internal$Proxy;
    .locals 0

    new-instance p0, Lorg/chromium/service_manager/mojom/Connector_Internal$Proxy;

    invoke-direct {p0, p1, p2}, Lorg/chromium/service_manager/mojom/Connector_Internal$Proxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-object p0
.end method

.method public bridge synthetic buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;
    .locals 0

    check-cast p2, Lorg/chromium/service_manager/mojom/Connector;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/service_manager/mojom/Connector_Internal$1;->buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/service_manager/mojom/Connector;)Lorg/chromium/service_manager/mojom/Connector_Internal$Stub;

    move-result-object p0

    return-object p0
.end method

.method public buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/service_manager/mojom/Connector;)Lorg/chromium/service_manager/mojom/Connector_Internal$Stub;
    .locals 0

    new-instance p0, Lorg/chromium/service_manager/mojom/Connector_Internal$Stub;

    invoke-direct {p0, p1, p2}, Lorg/chromium/service_manager/mojom/Connector_Internal$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/service_manager/mojom/Connector;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "service_manager.mojom.Connector"

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
