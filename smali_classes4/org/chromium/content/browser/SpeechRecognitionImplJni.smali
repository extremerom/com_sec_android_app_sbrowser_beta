.class Lorg/chromium/content/browser/SpeechRecognitionImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/SpeechRecognitionImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAudioEnd(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M2TRi32V(JLjava/lang/Object;)V

    return-void
.end method

.method public onAudioStart(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MdhaXGcn(JLjava/lang/Object;)V

    return-void
.end method

.method public onRecognitionEnd(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MmgQYR9M(JLjava/lang/Object;)V

    return-void
.end method

.method public onRecognitionError(JLorg/chromium/content/browser/SpeechRecognitionImpl;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MUf_fHKN(JLjava/lang/Object;I)V

    return-void
.end method

.method public onRecognitionResults(JLorg/chromium/content/browser/SpeechRecognitionImpl;[Ljava/lang/String;[FZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MnkvkoGY(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onSoundEnd(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MFB2QCbe(JLjava/lang/Object;)V

    return-void
.end method

.method public onSoundStart(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M2Nl8ID9(JLjava/lang/Object;)V

    return-void
.end method
