.class public interface abstract Lorg/chromium/blink/mojom/SpeechSynthesisClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SpeechSynthesisClient$Proxy;
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

    sget-object v0, Lorg/chromium/blink/mojom/SpeechSynthesisClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/SpeechSynthesisClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onEncounteredSentenceBoundary(II)V
.end method

.method public abstract onEncounteredSpeakingError()V
.end method

.method public abstract onEncounteredWordBoundary(II)V
.end method

.method public abstract onFinishedSpeaking(I)V
.end method

.method public abstract onPausedSpeaking()V
.end method

.method public abstract onResumedSpeaking()V
.end method

.method public abstract onStartedSpeaking()V
.end method
