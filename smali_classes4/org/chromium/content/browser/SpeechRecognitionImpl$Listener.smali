.class Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/SpeechRecognitionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/SpeechRecognitionImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleResults(Landroid/os/Bundle;Z)V
    .locals 7

    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->a(Lorg/chromium/content/browser/SpeechRecognitionImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v6, p2

    const-string p2, "results_recognition"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, [Ljava/lang/String;

    const-string p2, "confidence_scores"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;->get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;

    move-result-object v0

    iget-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-interface/range {v0 .. v6}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;->onRecognitionResults(JLorg/chromium/content/browser/SpeechRecognitionImpl;[Ljava/lang/String;[FZ)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->c(Lorg/chromium/content/browser/SpeechRecognitionImpl;I)V

    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;->get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J

    move-result-wide v1

    iget-object p0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;->onSoundStart(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->a(Lorg/chromium/content/browser/SpeechRecognitionImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;->get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;->onSoundEnd(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V

    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;->get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;->onAudioEnd(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V

    iget-object p0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->c(Lorg/chromium/content/browser/SpeechRecognitionImpl;I)V

    :cond_1
    return-void
.end method

.method public onError(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x4

    :goto_0
    iget-object p0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->d(Lorg/chromium/content/browser/SpeechRecognitionImpl;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->handleResults(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 4

    iget-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->c(Lorg/chromium/content/browser/SpeechRecognitionImpl;I)V

    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;->get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J

    move-result-wide v0

    iget-object p0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;->onAudioStart(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->handleResults(Landroid/os/Bundle;Z)V

    iget-object p0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;->this$0:Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-static {p0, v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->d(Lorg/chromium/content/browser/SpeechRecognitionImpl;I)V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    return-void
.end method
