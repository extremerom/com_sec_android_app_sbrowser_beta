.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field private mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

.field private mIsInitialized:Z

.field private mLocale:Ljava/util/Locale;

.field private final mObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeechRate:Ljava/lang/Float;

.field private mTTS:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->lambda$onDone$2(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->lambda$setLanguage$7(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;IIILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->lambda$onRangeStart$6(Ljava/lang/String;IIILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->lambda$onInit$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->lambda$onError$3(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->lambda$onStop$5(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->lambda$onStart$1(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V

    return-void
.end method

.method private getDefaultLocale()Ljava/util/Locale;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method private getSpeechRate()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mSpeechRate:Ljava/lang/Float;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getReadAloudSpeechRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mSpeechRate:Ljava/lang/Float;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mSpeechRate:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->lambda$onError$4(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V

    return-void
.end method

.method public static synthetic i(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->lambda$setLanguage$8(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isSameLanguage(Ljava/util/Locale;)Z
    .locals 3
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static synthetic lambda$onDone$2(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;->onStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onError$3(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 1

    const/4 v0, -0x1

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;->onStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onError$4(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 1

    const/4 v0, -0x1

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;->onStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onInit$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mIsInitialized:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;->onInit(I)V

    return-void
.end method

.method private static synthetic lambda$onRangeStart$6(Ljava/lang/String;IIILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;->onRangeStart(Ljava/lang/String;III)V

    return-void
.end method

.method private static synthetic lambda$onStart$1(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;->onStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onStop$5(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;->onStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setLanguage$7(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setLanguage$8(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->abandonAudioFocus()V

    :cond_0
    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    :cond_1
    return-void
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getAvailableLanguages()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->getLanguage()Ljava/util/Locale;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voice_type_key;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getVoice()Landroid/speech/tts/Voice;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public initialize(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;)V
    .locals 3

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.SMT"

    invoke-direct {v0, v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->getSpeechRate()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mIsInitialized:Z

    return p0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isLanguageAvailable(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__ReadAloud"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSpeaking()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result p0

    return p0
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onDone(): "

    const-string v1, "si__ReadAloud"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    new-instance v0, Lca/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lca/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "onError(): "

    const-string v1, "si__ReadAloud"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    new-instance v0, Lca/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lca/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "si__ReadAloud"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    new-instance p2, Lca/a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lca/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onInit(I)V
    .locals 2

    const-string v0, "onInit(): "

    const-string v1, "si__ReadAloud"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mIsInitialized:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    new-instance v0, LH9/d;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, LH9/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 3

    const-string v0, "onRangeStart(): "

    const-string v1, ", at ("

    const-string v2, ", "

    invoke-static {v0, p2, p1, v1, v2}, Lt/b;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloud"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    new-instance v0, Lca/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lca/b;-><init>(Ljava/lang/String;III)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onStart(): "

    const-string v1, "si__ReadAloud"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    new-instance v0, Lca/a;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lca/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "si__ReadAloud"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    new-instance p2, Lca/a;

    const/4 v0, 0x4

    invoke-direct {p2, p1, v0}, Lca/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTranslationResult(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;Ljava/lang/String;Ljava/lang/String;ZILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->setTranslatedSentence(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "play(): language -> "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "si__ReadAloud"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->getUtteranceId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->setLanguage(Ljava/util/Locale;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->requestAudioFocus()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->setIsReadFinished(Z)V

    invoke-virtual {p0, p1, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->speak(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;Z)I

    move-result p0

    const-string p1, "play(): "

    const-string p2, ", result -> "

    invoke-static {p5, p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p6, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "play(): play after audio focus is gained"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->pause(I)V

    :goto_1
    return-void
.end method

.method public pause(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->stop()I

    move-result v0

    const-string v1, "pause(): "

    const-string v2, ", result -> "

    const-string v3, "si__ReadAloud"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->abandonAudioFocus()V

    :cond_0
    return-void
.end method

.method public refreshLanguage()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->setLanguage(Ljava/util/Locale;Z)V

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mAudioFocusHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->requestAudioFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setLanguage(Ljava/util/Locale;Z)V
    .locals 6
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v0

    const-string v1, "setLanguage(): "

    const-string v2, "si__ReadAloud"

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not available. change to default locale -> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_0
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isSameLanguage(Ljava/util/Locale;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " == "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p2

    if-ltz p2, :cond_4

    const-string v0, "setLanguage(): success -> "

    invoke-static {p2, v0, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    new-instance v3, LHa/a;

    const/4 v4, 0x6

    invoke-direct {v3, v4, p2, v0}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->updateCountryAndVariant(Landroid/content/Context;Ljava/util/Locale;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils$UpdateCountryAndVariantCallback;)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    new-instance v2, LAa/a;

    const/16 v3, 0x19

    invoke-direct {v2, v3, p2}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->updateVariant(Landroid/content/Context;Ljava/util/Locale;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils$UpdateCountryAndVariantCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1, p1, p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->updateVoice(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    new-instance p1, Lca/c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lca/c;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_4
    const-string p0, "setLanguage(): failed -> "

    invoke-static {p2, p0, v2}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setSpeechRate(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mSpeechRate:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mSpeechRate:Ljava/lang/Float;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    move-result v0

    const-string v1, "si__ReadAloud"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setSpeechRate(): success -> "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mSpeechRate:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadAloudSpeechRate(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mObserverList:Ljava/util/List;

    new-instance p1, Lca/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lca/c;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    const-string p0, "setSpeechRate(): failed"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public speak(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;Z)I
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->isTranslated()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->getTranslatedSentence()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;->getCurrentSentence()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "speak(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", translated -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interrupt -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "si__ReadAloud"

    invoke-static {v1, v2, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    xor-int/lit8 p2, p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public stop()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result p0

    return p0
.end method

.method public waitFor()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->mTTS:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/speech/tts/TextToSpeech;->playSilentUtterance(JILjava/lang/String;)I

    move-result p0

    return p0
.end method
