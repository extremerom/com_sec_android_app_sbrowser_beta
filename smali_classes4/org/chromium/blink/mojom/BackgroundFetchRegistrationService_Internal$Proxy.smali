.class final Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal;
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
.method public abort(Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$Abort_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAbortParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAbortParams;-><init>()V

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

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAbortResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAbortResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$Abort_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public addRegistrationObserver(Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAddRegistrationObserverParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAddRegistrationObserverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceAddRegistrationObserverParams;->observer:Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public matchRequests(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;ZLorg/chromium/blink/mojom/BackgroundFetchRegistrationService$MatchRequests_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsParams;->requestToMatch:Lorg/chromium/blink/mojom/FetchApiRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsParams;->cacheQueryOptions:Lorg/chromium/blink/mojom/CacheQueryOptions;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsParams;->matchAll:Z

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

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceMatchRequestsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$MatchRequests_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateUi(Ljava/lang/String;Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$UpdateUi_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiParams;->title:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiParams;->icon:Lorg/chromium/skia/mojom/BitmapN32;

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

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService_Internal$BackgroundFetchRegistrationServiceUpdateUiResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BackgroundFetchRegistrationService$UpdateUi_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
