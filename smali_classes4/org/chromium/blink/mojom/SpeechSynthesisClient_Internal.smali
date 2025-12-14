.class Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$SpeechSynthesisClientOnEncounteredSpeakingErrorParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$SpeechSynthesisClientOnEncounteredSentenceBoundaryParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$SpeechSynthesisClientOnEncounteredWordBoundaryParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$SpeechSynthesisClientOnResumedSpeakingParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$SpeechSynthesisClientOnPausedSpeakingParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$SpeechSynthesisClientOnFinishedSpeakingParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$SpeechSynthesisClientOnStartedSpeakingParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$Stub;,
        Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/SpeechSynthesisClient;",
            "Lorg/chromium/blink/mojom/SpeechSynthesisClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
