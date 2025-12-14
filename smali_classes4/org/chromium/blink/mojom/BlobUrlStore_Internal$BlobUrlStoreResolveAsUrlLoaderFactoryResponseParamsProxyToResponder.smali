.class Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/BlobUrlStore$ResolveAsUrlLoaderFactory_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/BlobUrlStore_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/SchemefulSite;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParams;->unsafeAgentClusterId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParams;->unsafeTopLevelSite:Lorg/chromium/network/mojom/SchemefulSite;

    iget-object p1, p0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {p2, v1, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
