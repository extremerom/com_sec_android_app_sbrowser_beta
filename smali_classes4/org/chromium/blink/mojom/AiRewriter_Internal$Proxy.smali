.class final Lorg/chromium/blink/mojom/AiRewriter_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/AiRewriter$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AiRewriter_Internal;
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
.method public measureUsage(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/AiRewriter$MeasureUsage_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterMeasureUsageParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterMeasureUsageParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterMeasureUsageParams;->input:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterMeasureUsageParams;->context:Ljava/lang/String;

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

    invoke-direct {p2, v1, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterMeasureUsageResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterMeasureUsageResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AiRewriter$MeasureUsage_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public rewrite(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/ModelStreamingResponder;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterRewriteParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterRewriteParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterRewriteParams;->input:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterRewriteParams;->context:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/AiRewriter_Internal$AiRewriterRewriteParams;->pendingResponder:Lorg/chromium/blink/mojom/ModelStreamingResponder;

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
