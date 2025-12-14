.class Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/LocalMainFrame$ClosePage_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalMainFrame_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalMainFrameClosePageResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParams;-><init>()V

    iget-object v1, p0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x2

    iget-wide v4, p0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
