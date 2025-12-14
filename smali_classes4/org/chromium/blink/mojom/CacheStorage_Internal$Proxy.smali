.class final Lorg/chromium/blink/mojom/CacheStorage_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/CacheStorage$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/CacheStorage_Internal;
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
.method public delete(Lorg/chromium/mojo_base/mojom/String16;JLorg/chromium/blink/mojom/CacheStorage$Delete_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteParams;->cacheName:Lorg/chromium/mojo_base/mojom/String16;

    iput-wide p2, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteParams;->traceId:J

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

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorage$Delete_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public has(Lorg/chromium/mojo_base/mojom/String16;JLorg/chromium/blink/mojom/CacheStorage$Has_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasParams;->cacheName:Lorg/chromium/mojo_base/mojom/String16;

    iput-wide p2, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasParams;->traceId:J

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

    const/4 v3, 0x0

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorage$Has_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public keys(JLorg/chromium/blink/mojom/CacheStorage$Keys_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysParams;->traceId:J

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

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorage$Keys_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public match(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/MultiCacheQueryOptions;ZZJLorg/chromium/blink/mojom/CacheStorage$Match_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->matchOptions:Lorg/chromium/blink/mojom/MultiCacheQueryOptions;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->inRelatedFetchEvent:Z

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->inRangeFetchEvent:Z

    iput-wide p5, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->traceId:J

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

    const/4 p6, 0x3

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorage$Match_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public open(Lorg/chromium/mojo_base/mojom/String16;JLorg/chromium/blink/mojom/CacheStorage$Open_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenParams;->cacheName:Lorg/chromium/mojo_base/mojom/String16;

    iput-wide p2, v0, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenParams;->traceId:J

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

    const/4 v3, 0x4

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorage$Open_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
