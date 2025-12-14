.class public Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;

    return-object v0
.end method


# virtual methods
.method public performSoundFeedbackForDragStart()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->SEM_SOUND_DRAG_AND_DROP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AudioUtil"

    const-string v0, "Drag Start Sound Index was not found"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
