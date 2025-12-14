.class Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextSafetySessionClassifyTextSafetyResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/on_device_model/mojom/TextSafetySession$ClassifyTextSafety_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/on_device_model/mojom/TextSafetySession$ClassifyTextSafety_Response;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    iput-object p1, p0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParamsForwardToCallback;->mCallback:Lorg/chromium/on_device_model/mojom/TextSafetySession$ClassifyTextSafety_Response;

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParams;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParamsForwardToCallback;->mCallback:Lorg/chromium/on_device_model/mojom/TextSafetySession$ClassifyTextSafety_Response;

    iget-object p1, p1, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParams;->safetyInfo:Lorg/chromium/on_device_model/mojom/SafetyInfo;

    invoke-interface {p0, p1}, Lorg/chromium/on_device_model/mojom/TextSafetySession$ClassifyTextSafety_Response;->call(Lorg/chromium/on_device_model/mojom/SafetyInfo;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    return v0
.end method
