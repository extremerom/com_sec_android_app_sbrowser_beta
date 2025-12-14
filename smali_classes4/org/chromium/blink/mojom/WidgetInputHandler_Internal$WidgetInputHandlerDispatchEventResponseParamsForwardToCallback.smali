.class Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/WidgetInputHandler_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetInputHandlerDispatchEventResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/blink/mojom/WidgetInputHandler$DispatchEvent_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/blink/mojom/WidgetInputHandler$DispatchEvent_Response;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParamsForwardToCallback;->mCallback:Lorg/chromium/blink/mojom/WidgetInputHandler$DispatchEvent_Response;

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParams;

    move-result-object p1

    iget-object v1, p0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParamsForwardToCallback;->mCallback:Lorg/chromium/blink/mojom/WidgetInputHandler$DispatchEvent_Response;

    iget v2, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParams;->source:I

    iget-object v3, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParams;->updatedLatency:Lorg/chromium/ui/mojom/LatencyInfo;

    iget v4, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParams;->state:I

    iget-object v5, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParams;->overscroll:Lorg/chromium/blink/mojom/DidOverscrollParams;

    iget-object v6, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParams;->touchAction:Lorg/chromium/blink/mojom/TouchActionOptional;

    invoke-interface/range {v1 .. v6}, Lorg/chromium/blink/mojom/WidgetInputHandler$DispatchEvent_Response;->call(ILorg/chromium/ui/mojom/LatencyInfo;ILorg/chromium/blink/mojom/DidOverscrollParams;Lorg/chromium/blink/mojom/TouchActionOptional;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
