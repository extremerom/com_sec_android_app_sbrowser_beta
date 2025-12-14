.class Lorg/chromium/content/browser/TtsPlatformImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;,
        Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;,
        Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;,
        Lorg/chromium/content/browser/TtsPlatformImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

.field private mNativeTtsPlatformImplAndroid:J

.field private final mNonDefaultTtsEnginesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    new-instance v0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;-><init>(JI)V

    iput-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNonDefaultTtsEnginesMap:Ljava/util/Map;

    invoke-static {v0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->j(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->addOnUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->lambda$sendStartEventOnUiThread$2(Ljava/lang/String;)V

    return-void
.end method

.method private addOnUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)V
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/TtsPlatformImpl$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/TtsPlatformImpl$1;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method public static synthetic b(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->lambda$sendEndEventOnUiThread$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->lambda$sendErrorEventOnUiThread$1(Ljava/lang/String;)V

    return-void
.end method

.method private clearPendingUtterances()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {v0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->i(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNonDefaultTtsEnginesMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {v0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->i(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static create(J)Lorg/chromium/content/browser/TtsPlatformImpl;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/TtsPlatformImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;-><init>(J)V

    return-object v0
.end method

.method public static bridge synthetic d(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->sendEndEventOnUiThread(Ljava/lang/String;)V

    return-void
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->sendErrorEventOnUiThread(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->sendStartEventOnUiThread(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/content/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/chromium/content/browser/TtsPlatformImpl;->speak(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)Z

    return-void
.end method

.method private getOrCreateTtsEngine(Ljava/lang/String;)Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {v0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->l(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {v0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->j(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNonDefaultTtsEnginesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNonDefaultTtsEnginesMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    return-object p0

    :cond_1
    new-instance v0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->j(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/TtsPlatformImpl;->addOnUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)V

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNonDefaultTtsEnginesMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    return-object p0
.end method

.method private getVoiceCount()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->k(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private getVoiceLanguage(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->k(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;

    invoke-static {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;->a(Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVoiceName(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->k(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;

    invoke-static {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;->b(Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isEngineInstalled(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->j(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object p0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getEngines()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isInitialized()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->l(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$sendEndEventOnUiThread$0(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/TtsPlatformImplJni;->get()Lorg/chromium/content/browser/TtsPlatformImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/TtsPlatformImpl$Natives;->onEndEvent(JI)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendErrorEventOnUiThread$1(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/TtsPlatformImplJni;->get()Lorg/chromium/content/browser/TtsPlatformImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/TtsPlatformImpl$Natives;->onErrorEvent(JI)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendStartEventOnUiThread$2(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/TtsPlatformImplJni;->get()Lorg/chromium/content/browser/TtsPlatformImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/TtsPlatformImpl$Natives;->onStartEvent(JI)V

    :cond_0
    return-void
.end method

.method private sendEndEventOnUiThread(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/content/browser/j;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;I)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method private sendErrorEventOnUiThread(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/content/browser/j;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;I)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method private sendStartEventOnUiThread(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/j;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/content/browser/j;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;I)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method private speak(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)Z
    .locals 12
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v1, p0

    move-object/from16 v5, p4

    invoke-direct {p0, v5}, Lorg/chromium/content/browser/TtsPlatformImpl;->getOrCreateTtsEngine(Ljava/lang/String;)Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->l(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl;->clearPendingUtterances()V

    new-instance v11, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-static {v10, v11}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->m(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    move-object v0, v10

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->n(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;ILjava/lang/String;Ljava/lang/String;FFF)Z

    move-result v0

    return v0
.end method

.method private stop()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mDefaultTtsEngine:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {v0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->o(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl;->mNonDefaultTtsEnginesMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {v0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->o(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V

    goto :goto_0

    :cond_0
    return-void
.end method
