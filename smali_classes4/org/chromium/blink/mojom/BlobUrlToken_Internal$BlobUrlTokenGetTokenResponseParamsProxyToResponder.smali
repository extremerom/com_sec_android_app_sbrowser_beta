.class Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/BlobUrlToken$GetToken_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/BlobUrlToken_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlobUrlTokenGetTokenResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParams;->token:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object p1, p0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    iget-wide v3, p0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParamsProxyToResponder;->mRequestId:J

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/BlobUrlToken_Internal$BlobUrlTokenGetTokenResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
