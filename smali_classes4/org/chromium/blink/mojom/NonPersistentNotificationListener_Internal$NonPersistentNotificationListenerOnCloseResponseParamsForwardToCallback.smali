.class Lorg/chromium/blink/mojom/NonPersistentNotificationListener_Internal$NonPersistentNotificationListenerOnCloseResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/NonPersistentNotificationListener_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonPersistentNotificationListenerOnCloseResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/blink/mojom/NonPersistentNotificationListener$OnClose_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/blink/mojom/NonPersistentNotificationListener$OnClose_Response;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/NonPersistentNotificationListener_Internal$NonPersistentNotificationListenerOnCloseResponseParamsForwardToCallback;->mCallback:Lorg/chromium/blink/mojom/NonPersistentNotificationListener$OnClose_Response;

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v1}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lorg/chromium/blink/mojom/NonPersistentNotificationListener_Internal$NonPersistentNotificationListenerOnCloseResponseParamsForwardToCallback;->mCallback:Lorg/chromium/blink/mojom/NonPersistentNotificationListener$OnClose_Response;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/NonPersistentNotificationListener$OnClose_Response;->call()V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
