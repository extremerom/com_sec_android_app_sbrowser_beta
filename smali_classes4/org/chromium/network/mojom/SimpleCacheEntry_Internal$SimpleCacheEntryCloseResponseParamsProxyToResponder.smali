.class Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/SimpleCacheEntry$Close_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/SimpleCacheEntry_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleCacheEntryCloseResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call()V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParams;-><init>()V

    iget-object v1, p0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    iget-wide v3, p0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;->mRequestId:J

    const/4 v5, 0x4

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
