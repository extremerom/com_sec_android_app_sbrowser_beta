.class final Lorg/chromium/media/mojom/Decryptor_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/Decryptor$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/Decryptor_Internal;
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
.method public cancelDecrypt(I)V
    .locals 3

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorCancelDecryptParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorCancelDecryptParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorCancelDecryptParams;->streamType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public decrypt(ILorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/Decryptor$Decrypt_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptParams;->streamType:I

    iput-object p2, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptParams;->encrypted:Lorg/chromium/media/mojom/DecoderBuffer;

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

    new-instance p2, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/Decryptor$Decrypt_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public decryptAndDecodeAudio(Lorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/Decryptor$DecryptAndDecodeAudio_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioParams;->encrypted:Lorg/chromium/media/mojom/DecoderBuffer;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/Decryptor$DecryptAndDecodeAudio_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public decryptAndDecodeVideo(Lorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/Decryptor$DecryptAndDecodeVideo_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoParams;->encrypted:Lorg/chromium/media/mojom/DecoderBuffer;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeVideoResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/Decryptor$DecryptAndDecodeVideo_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public deinitializeDecoder(I)V
    .locals 3

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDeinitializeDecoderParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDeinitializeDecoderParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDeinitializeDecoderParams;->streamType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public initialize(Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeParams;->audioPipe:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p2, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeParams;->videoPipe:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p3, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeParams;->decryptPipe:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p4, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeParams;->decryptedPipe:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

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

.method public initializeAudioDecoder(Lorg/chromium/media/mojom/AudioDecoderConfig;Lorg/chromium/media/mojom/Decryptor$InitializeAudioDecoder_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeAudioDecoderParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeAudioDecoderParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeAudioDecoderParams;->config:Lorg/chromium/media/mojom/AudioDecoderConfig;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeAudioDecoderResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeAudioDecoderResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/Decryptor$InitializeAudioDecoder_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public initializeVideoDecoder(Lorg/chromium/media/mojom/VideoDecoderConfig;Lorg/chromium/media/mojom/Decryptor$InitializeVideoDecoder_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeVideoDecoderParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeVideoDecoderParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeVideoDecoderParams;->config:Lorg/chromium/media/mojom/VideoDecoderConfig;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeVideoDecoderResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorInitializeVideoDecoderResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/Decryptor$InitializeVideoDecoder_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public resetDecoder(I)V
    .locals 3

    new-instance v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorResetDecoderParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorResetDecoderParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorResetDecoderParams;->streamType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
