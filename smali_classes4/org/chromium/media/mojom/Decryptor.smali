.class public interface abstract Lorg/chromium/media/mojom/Decryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/Decryptor$DecryptAndDecodeVideo_Response;,
        Lorg/chromium/media/mojom/Decryptor$DecryptAndDecodeAudio_Response;,
        Lorg/chromium/media/mojom/Decryptor$InitializeVideoDecoder_Response;,
        Lorg/chromium/media/mojom/Decryptor$InitializeAudioDecoder_Response;,
        Lorg/chromium/media/mojom/Decryptor$Decrypt_Response;,
        Lorg/chromium/media/mojom/Decryptor$Proxy;,
        Lorg/chromium/media/mojom/Decryptor$StreamType;,
        Lorg/chromium/media/mojom/Decryptor$Status;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/Decryptor;",
            "Lorg/chromium/media/mojom/Decryptor$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media/mojom/Decryptor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/Decryptor;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract cancelDecrypt(I)V
.end method

.method public abstract decrypt(ILorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/Decryptor$Decrypt_Response;)V
.end method

.method public abstract decryptAndDecodeAudio(Lorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/Decryptor$DecryptAndDecodeAudio_Response;)V
.end method

.method public abstract decryptAndDecodeVideo(Lorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/Decryptor$DecryptAndDecodeVideo_Response;)V
.end method

.method public abstract deinitializeDecoder(I)V
.end method

.method public abstract initialize(Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;)V
.end method

.method public abstract initializeAudioDecoder(Lorg/chromium/media/mojom/AudioDecoderConfig;Lorg/chromium/media/mojom/Decryptor$InitializeAudioDecoder_Response;)V
.end method

.method public abstract initializeVideoDecoder(Lorg/chromium/media/mojom/VideoDecoderConfig;Lorg/chromium/media/mojom/Decryptor$InitializeVideoDecoder_Response;)V
.end method

.method public abstract resetDecoder(I)V
.end method
