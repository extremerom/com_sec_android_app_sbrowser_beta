.class Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/TtsPlatformImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TtsEngine"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCurrentLanguage:Ljava/lang/String;

.field private mInitialized:Z

.field private mNativeTtsPlatformImplAndroid:J

.field private mPendingUtterance:Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mVoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mNativeTtsPlatformImplAndroid:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mInitialized:Z

    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lorg/chromium/content/browser/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/k;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;I)V

    invoke-direct {p1, p2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;-><init>(J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mInitialized:Z

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/chromium/content/browser/k;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lorg/chromium/content/browser/k;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;I)V

    invoke-direct {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->lambda$new$2(I)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->lambda$new$0()V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->lambda$new$1(I)V

    return-void
.end method

.method private clearPendingUtterance()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mPendingUtterance:Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mNativeTtsPlatformImplAndroid:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mPendingUtterance:Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mInitialized:Z

    return-void
.end method

.method private getTextToSpeech()Landroid/speech/tts/TextToSpeech;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method private getVoices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mVoices:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic h(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mVoices:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic i(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->clearPendingUtterance()V

    return-void
.end method

.method private initializeDefault()V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "TtsEngine:initialize_default"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/TraceEvent;->startAsync(Ljava/lang/String;J)V

    new-instance v0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method private initializeNonDefault()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mInitialized:Z

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mPendingUtterance:Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->a(Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;)V

    :cond_0
    return-void
.end method

.method private isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mInitialized:Z

    return p0
.end method

.method public static bridge synthetic j(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->getVoices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->isInitialized()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->initializeDefault()V

    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lorg/chromium/content/browser/l;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lorg/chromium/content/browser/l;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x7

    invoke-static {p0, p1}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->initializeNonDefault()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->setPendingUtterance(Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;)V

    return-void
.end method

.method public static bridge synthetic n(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;ILjava/lang/String;Ljava/lang/String;FFF)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->speak(ILjava/lang/String;Ljava/lang/String;FFF)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->stop()V

    return-void
.end method

.method private setPendingUtterance(Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mPendingUtterance:Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

    return-void
.end method

.method private speak(ILjava/lang/String;Ljava/lang/String;FFF)Z
    .locals 4

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mCurrentLanguage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mCurrentLanguage:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/base/LocaleUtils;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    iput-object p3, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mCurrentLanguage:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3, p4}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iget-object p3, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3, p5}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    float-to-double p4, p6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p4, p4, v2

    if-eqz p4, :cond_3

    const-string p4, "volume"

    invoke-virtual {p3, p4, p6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_3
    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p3, p1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private stop()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mPendingUtterance:Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->mPendingUtterance:Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

    :cond_1
    return-void
.end method
