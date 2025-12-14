.class Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/AiManager$CanCreateRewriter_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AiManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AiManagerCanCreateRewriterResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(I)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParams;->result:I

    iget-object p1, p0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    iget-wide v3, p0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsProxyToResponder;->mRequestId:J

    const/4 v5, 0x7

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
