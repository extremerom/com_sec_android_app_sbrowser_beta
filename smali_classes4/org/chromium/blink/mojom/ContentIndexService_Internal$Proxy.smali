.class final Lorg/chromium/blink/mojom/ContentIndexService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ContentIndexService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ContentIndexService_Internal;
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
.method public add(JLorg/chromium/blink/mojom/ContentDescription;[Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ContentIndexService$Add_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddParams;->serviceWorkerRegistrationId:J

    iput-object p3, v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddParams;->description:Lorg/chromium/blink/mojom/ContentDescription;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddParams;->icon:[Lorg/chromium/skia/mojom/BitmapN32;

    iput-object p5, v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddParams;->launchUrl:Lorg/chromium/url/mojom/Url;

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

    invoke-direct {p2, p3, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceAddResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ContentIndexService$Add_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public delete(JLjava/lang/String;Lorg/chromium/blink/mojom/ContentIndexService$Delete_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteParams;->serviceWorkerRegistrationId:J

    iput-object p3, v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteParams;->id:Ljava/lang/String;

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

    new-instance p2, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceDeleteResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ContentIndexService$Delete_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getDescriptions(JLorg/chromium/blink/mojom/ContentIndexService$GetDescriptions_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetDescriptionsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetDescriptionsParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetDescriptionsParams;->serviceWorkerRegistrationId:J

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

    const/4 v4, 0x3

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetDescriptionsResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetDescriptionsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ContentIndexService$GetDescriptions_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getIconSizes(ILorg/chromium/blink/mojom/ContentIndexService$GetIconSizes_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetIconSizesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetIconSizesParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetIconSizesParams;->category:I

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

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetIconSizesResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ContentIndexService_Internal$ContentIndexServiceGetIconSizesResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ContentIndexService$GetIconSizes_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
