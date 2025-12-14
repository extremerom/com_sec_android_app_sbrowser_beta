.class public interface abstract Lorg/chromium/media/mojom/SpeechRecognitionSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/SpeechRecognitionSession$Proxy;
    }
.end annotation


# virtual methods
.method public abstract abort()V
.end method

.method public abstract stopCapture()V
.end method

.method public abstract updateRecognitionContext(Lorg/chromium/media/mojom/SpeechRecognitionRecognitionContext;)V
.end method
