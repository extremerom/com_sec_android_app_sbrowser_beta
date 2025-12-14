.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAudioFocusLock:Ljava/lang/Object;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mFocusRequest:Landroid/media/AudioFocusRequest;

.field private mPlaybackDelayed:Z

.field private final mPlayer:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;

.field private mResumeOnFocusGain:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioFocusLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlayer:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioManager:Landroid/media/AudioManager;

    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->createAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->lambda$createAudioFocusChangeListener$0(I)V

    return-void
.end method

.method private createAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/a;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;)V

    return-object v0
.end method

.method private synthetic lambda$createAudioFocusChangeListener$0(I)V
    .locals 3

    const-string v0, "AudioFocusHandler"

    const-string v1, "onAudioFocusChange(): "

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->shouldPlayByAudioFocusGain()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlaybackDelayed:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mResumeOnFocusGain:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlayer:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;->play()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mResumeOnFocusGain:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlaybackDelayed:Z

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlayer:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;->pause()V

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mResumeOnFocusGain:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlaybackDelayed:Z

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlayer:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/TtsPlayer;->pause()V

    :cond_3
    :goto_0
    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method private shouldPlayByAudioFocusGain()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlaybackDelayed:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mResumeOnFocusGain:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mFocusRequest:Landroid/media/AudioFocusRequest;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    :try_start_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlaybackDelayed:Z

    monitor-exit v2

    return v1

    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlaybackDelayed:Z

    monitor-exit v2

    return v3

    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/AudioFocusHandler;->mPlaybackDelayed:Z

    monitor-exit v2

    return v1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return v1
.end method
