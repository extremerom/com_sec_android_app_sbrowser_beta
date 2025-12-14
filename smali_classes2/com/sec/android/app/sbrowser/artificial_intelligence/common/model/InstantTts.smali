.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;
.super Landroid/speech/tts/TextToSpeech;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;
    }
.end annotation


# instance fields
.field private final mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

.field private final mUtteranceProgressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/speech/tts/UtteranceProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/speech/tts/TextToSpeech$OnInitListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mUtteranceProgressListeners:Ljava/util/List;

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;)V

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->notifyOnDone(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->notifyOnError(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->notifyOnStart(Ljava/lang/String;)V

    return-void
.end method

.method private notifyOnDone(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mUtteranceProgressListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnError(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mUtteranceProgressListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnStart(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mUtteranceProgressListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 0
    .param p1    # Landroid/speech/tts/UtteranceProgressListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mUtteranceProgressListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mUtteranceProgressListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->stop()I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->stop()I

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public setVoice(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->updateVoice(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->requestAudioFocus()Z

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public stop()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->abandonAudioFocus()V

    :cond_0
    invoke-super {p0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result p0

    return p0
.end method
