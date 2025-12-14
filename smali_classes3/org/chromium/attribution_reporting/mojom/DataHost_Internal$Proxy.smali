.class final Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/attribution_reporting/mojom/DataHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/attribution_reporting/mojom/DataHost_Internal;
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
.method public osSourceDataAvailable(Lorg/chromium/attribution_reporting/mojom/OsRegistration;Z)V
    .locals 2

    new-instance v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostOsSourceDataAvailableParams;

    invoke-direct {v0}, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostOsSourceDataAvailableParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostOsSourceDataAvailableParams;->registration:Lorg/chromium/attribution_reporting/mojom/OsRegistration;

    iput-boolean p2, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostOsSourceDataAvailableParams;->wasFetchedViaServiceWorker:Z

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

.method public osTriggerDataAvailable(Lorg/chromium/attribution_reporting/mojom/OsRegistration;Z)V
    .locals 2

    new-instance v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostOsTriggerDataAvailableParams;

    invoke-direct {v0}, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostOsTriggerDataAvailableParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostOsTriggerDataAvailableParams;->registration:Lorg/chromium/attribution_reporting/mojom/OsRegistration;

    iput-boolean p2, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostOsTriggerDataAvailableParams;->wasFetchedViaServiceWorker:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public reportRegistrationHeaderError(Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;Lorg/chromium/attribution_reporting/mojom/RegistrationHeaderError;)V
    .locals 2

    new-instance v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostReportRegistrationHeaderErrorParams;

    invoke-direct {v0}, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostReportRegistrationHeaderErrorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostReportRegistrationHeaderErrorParams;->reportingOrigin:Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;

    iput-object p2, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostReportRegistrationHeaderErrorParams;->error:Lorg/chromium/attribution_reporting/mojom/RegistrationHeaderError;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x4

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public sourceDataAvailable(Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;Lorg/chromium/attribution_reporting/mojom/SourceRegistration;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostSourceDataAvailableParams;

    invoke-direct {v0}, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostSourceDataAvailableParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostSourceDataAvailableParams;->reportingOrigin:Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;

    iput-object p2, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostSourceDataAvailableParams;->data:Lorg/chromium/attribution_reporting/mojom/SourceRegistration;

    iput-boolean p3, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostSourceDataAvailableParams;->wasFetchedViaServiceWorker:Z

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

.method public triggerDataAvailable(Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostTriggerDataAvailableParams;

    invoke-direct {v0}, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostTriggerDataAvailableParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostTriggerDataAvailableParams;->reportingOrigin:Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;

    iput-object p2, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostTriggerDataAvailableParams;->data:Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;

    iput-boolean p3, v0, Lorg/chromium/attribution_reporting/mojom/DataHost_Internal$DataHostTriggerDataAvailableParams;->wasFetchedViaServiceWorker:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
