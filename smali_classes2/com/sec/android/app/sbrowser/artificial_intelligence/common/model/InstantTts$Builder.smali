.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEngine:Ljava/lang/String;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mSpeechRate:Ljava/lang/Float;

.field private mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 0
    .param p1    # Landroid/speech/tts/TextToSpeech$OnInitListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    const-string p1, "com.samsung.SMT"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;->mEngine:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;->mEngine:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->addUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;->mSpeechRate:Ljava/lang/Float;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    :cond_1
    return-object v0
.end method

.method public setSpeechRate(F)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;->mSpeechRate:Ljava/lang/Float;

    return-object p0
.end method
