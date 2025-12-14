.class public interface abstract Lorg/chromium/blink/mojom/SpeechSynthesis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SpeechSynthesis$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addVoiceListObserver(Lorg/chromium/blink/mojom/SpeechSynthesisVoiceListObserver;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract speak(Lorg/chromium/blink/mojom/SpeechSynthesisUtterance;Lorg/chromium/blink/mojom/SpeechSynthesisClient;)V
.end method
