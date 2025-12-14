.class Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$SpeechRecognitionSessionClientEndedParams;,
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$SpeechRecognitionSessionClientAudioEndedParams;,
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$SpeechRecognitionSessionClientSoundEndedParams;,
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$SpeechRecognitionSessionClientSoundStartedParams;,
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$SpeechRecognitionSessionClientAudioStartedParams;,
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$SpeechRecognitionSessionClientStartedParams;,
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$SpeechRecognitionSessionClientErrorOccurredParams;,
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$SpeechRecognitionSessionClientResultRetrievedParams;,
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$Stub;,
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/SpeechRecognitionSessionClient;",
            "Lorg/chromium/media/mojom/SpeechRecognitionSessionClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
