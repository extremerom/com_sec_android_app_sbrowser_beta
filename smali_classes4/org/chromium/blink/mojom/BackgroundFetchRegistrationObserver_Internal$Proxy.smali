.class final Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal;
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
.method public onProgress(JJJJII)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->uploadTotal:J

    iput-wide p3, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->uploaded:J

    iput-wide p5, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->downloadTotal:J

    iput-wide p7, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->downloaded:J

    iput p9, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->result:I

    iput p10, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->failureReason:I

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

.method public onRecordsUnavailable()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnRecordsUnavailableParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnRecordsUnavailableParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onRequestCompleted(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/FetchApiResponse;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnRequestCompletedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnRequestCompletedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnRequestCompletedParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnRequestCompletedParams;->response:Lorg/chromium/blink/mojom/FetchApiResponse;

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
