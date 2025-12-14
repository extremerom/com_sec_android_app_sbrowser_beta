.class final Lorg/chromium/blink/mojom/AttributionHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/AttributionHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AttributionHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public notifyNavigationWithBackgroundRegistrationsWillStart(Lorg/chromium/blink/mojom/AttributionSrcToken;I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostNotifyNavigationWithBackgroundRegistrationsWillStartParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostNotifyNavigationWithBackgroundRegistrationsWillStartParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostNotifyNavigationWithBackgroundRegistrationsWillStartParams;->attributionSrcToken:Lorg/chromium/blink/mojom/AttributionSrcToken;

    iput p2, v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostNotifyNavigationWithBackgroundRegistrationsWillStartParams;->expectedRegistrations:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public registerDataHost(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ[Lorg/chromium/url/internal/mojom/Origin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/attribution_reporting/mojom/DataHost;",
            ">;IZ[",
            "Lorg/chromium/url/internal/mojom/Origin;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterDataHostParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterDataHostParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterDataHostParams;->dataHost:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput p2, v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterDataHostParams;->registrationEligibility:I

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterDataHostParams;->isForBackgroundRequests:Z

    iput-object p4, v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterDataHostParams;->reportingOrigins:[Lorg/chromium/url/internal/mojom/Origin;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public registerNavigationDataHost(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/AttributionSrcToken;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/attribution_reporting/mojom/DataHost;",
            ">;",
            "Lorg/chromium/blink/mojom/AttributionSrcToken;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterNavigationDataHostParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterNavigationDataHostParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterNavigationDataHostParams;->dataHost:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AttributionHost_Internal$AttributionHostRegisterNavigationDataHostParams;->attributionSrcToken:Lorg/chromium/blink/mojom/AttributionSrcToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
