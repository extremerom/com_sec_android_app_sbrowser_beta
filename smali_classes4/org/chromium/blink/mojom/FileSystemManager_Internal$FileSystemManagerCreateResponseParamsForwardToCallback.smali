.class Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FileSystemManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSystemManagerCreateResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/blink/mojom/FileSystemManager$Create_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/blink/mojom/FileSystemManager$Create_Response;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateResponseParamsForwardToCallback;->mCallback:Lorg/chromium/blink/mojom/FileSystemManager$Create_Response;

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateResponseParams;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateResponseParamsForwardToCallback;->mCallback:Lorg/chromium/blink/mojom/FileSystemManager$Create_Response;

    iget p1, p1, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateResponseParams;->errorCode:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FileSystemManager$Create_Response;->call(I)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
