.class final Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal;
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
.method public clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal$DocumentIsolationPolicyReporterCloneParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal$DocumentIsolationPolicyReporterCloneParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal$DocumentIsolationPolicyReporterCloneParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public queueCorpViolationReport(Lorg/chromium/url/mojom/Url;IZ)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal$DocumentIsolationPolicyReporterQueueCorpViolationReportParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal$DocumentIsolationPolicyReporterQueueCorpViolationReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal$DocumentIsolationPolicyReporterQueueCorpViolationReportParams;->blockedUrl:Lorg/chromium/url/mojom/Url;

    iput p2, v0, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal$DocumentIsolationPolicyReporterQueueCorpViolationReportParams;->destination:I

    iput-boolean p3, v0, Lorg/chromium/network/mojom/DocumentIsolationPolicyReporter_Internal$DocumentIsolationPolicyReporterQueueCorpViolationReportParams;->reportOnly:Z

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
