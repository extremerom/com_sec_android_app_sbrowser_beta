.class Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mControl:Landroid/widget/MediaController$MediaPlayerControl;

.field private mGuarderTimer:Ljava/util/Timer;

.field private mIsRunning:Z


# direct methods
.method public constructor <init>(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mIsRunning:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->cancelGuarder()V

    return-void
.end method

.method private cancelGuarder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mGuarderTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mGuarderTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private runGuarder()V
    .locals 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mGuarderTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mIsRunning:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->cancelGuarder()V

    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mIsRunning:Z

    return p0
.end method

.method public onSurfaceTextureAvailable()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mIsRunning:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mIsRunning:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->mIsRunning:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->runGuarder()V

    return-void
.end method
