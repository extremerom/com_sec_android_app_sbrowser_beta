.class Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/Decryptor$DecryptAndDecodeVideo_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/Decryptor_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecryptorDecryptAndDecodeVideoResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(ILorg/chromium/media/mojom/VideoFrame;Lorg/chromium/media/mojom/FrameResourceReleaser;)V
    .locals 4

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParams;->status:I

    iput-object p2, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParams;->videoFrame:Lorg/chromium/media/mojom/VideoFrame;

    iput-object p3, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParams;->releaser:Lorg/chromium/media/mojom/FrameResourceReleaser;

    iget-object p1, p0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    iget-wide v1, p0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParamsProxyToResponder;->mRequestId:J

    const/4 v3, 0x6

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
