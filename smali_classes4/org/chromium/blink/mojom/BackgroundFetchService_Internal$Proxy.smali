.class final Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/BackgroundFetchService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/BackgroundFetchService_Internal;
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
.method public fetch(JLjava/lang/String;[Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/BackgroundFetchOptions;Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/blink/mojom/BackgroundFetchUkmData;Lorg/chromium/blink/mojom/BackgroundFetchService$Fetch_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchParams;->serviceWorkerRegistrationId:J

    iput-object p3, v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchParams;->developerId:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchParams;->requests:[Lorg/chromium/blink/mojom/FetchApiRequest;

    iput-object p5, v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchParams;->options:Lorg/chromium/blink/mojom/BackgroundFetchOptions;

    iput-object p6, v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchParams;->icon:Lorg/chromium/skia/mojom/BitmapN32;

    iput-object p7, v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchParams;->ukmData:Lorg/chromium/blink/mojom/BackgroundFetchUkmData;

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

    const-wide/16 p4, 0x0

    const/4 p6, 0x0

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchResponseParamsForwardToCallback;

    invoke-direct {p2, p8}, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceFetchResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BackgroundFetchService$Fetch_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getDeveloperIds(JLorg/chromium/blink/mojom/BackgroundFetchService$GetDeveloperIds_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetDeveloperIdsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetDeveloperIdsParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetDeveloperIdsParams;->serviceWorkerRegistrationId:J

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

    const/4 v4, 0x2

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetDeveloperIdsResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetDeveloperIdsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BackgroundFetchService$GetDeveloperIds_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getIconDisplaySize(Lorg/chromium/blink/mojom/BackgroundFetchService$GetIconDisplaySize_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetIconDisplaySizeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetIconDisplaySizeParams;-><init>()V

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

    const/4 v6, 0x3

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetIconDisplaySizeResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetIconDisplaySizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BackgroundFetchService$GetIconDisplaySize_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getRegistration(JLjava/lang/String;Lorg/chromium/blink/mojom/BackgroundFetchService$GetRegistration_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationParams;->serviceWorkerRegistrationId:J

    iput-object p3, v0, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationParams;->developerId:Ljava/lang/String;

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

    invoke-direct {p2, p3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/BackgroundFetchService_Internal$BackgroundFetchServiceGetRegistrationResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BackgroundFetchService$GetRegistration_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
