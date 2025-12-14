.class public interface abstract Lorg/chromium/media/mojom/SpeechRecognitionSessionClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/SpeechRecognitionSessionClient$Proxy;
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

    sget-object v0, Lorg/chromium/media/mojom/SpeechRecognitionSessionClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/SpeechRecognitionSessionClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract audioEnded()V
.end method

.method public abstract audioStarted()V
.end method

.method public abstract ended()V
.end method

.method public abstract errorOccurred(Lorg/chromium/media/mojom/SpeechRecognitionError;)V
.end method

.method public abstract resultRetrieved([Lorg/chromium/media/mojom/WebSpeechRecognitionResult;)V
.end method

.method public abstract soundEnded()V
.end method

.method public abstract soundStarted()V
.end method

.method public abstract started()V
.end method
