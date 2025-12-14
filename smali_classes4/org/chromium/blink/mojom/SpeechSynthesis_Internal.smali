.class Lorg/chromium/blink/mojom/SpeechSynthesis_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SpeechSynthesis_Internal$SpeechSynthesisCancelParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesis_Internal$SpeechSynthesisResumeParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesis_Internal$SpeechSynthesisPauseParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesis_Internal$SpeechSynthesisSpeakParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesis_Internal$SpeechSynthesisAddVoiceListObserverParams;,
        Lorg/chromium/blink/mojom/SpeechSynthesis_Internal$Stub;,
        Lorg/chromium/blink/mojom/SpeechSynthesis_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/SpeechSynthesis;",
            "Lorg/chromium/blink/mojom/SpeechSynthesis$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SpeechSynthesis_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SpeechSynthesis_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/SpeechSynthesis_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
