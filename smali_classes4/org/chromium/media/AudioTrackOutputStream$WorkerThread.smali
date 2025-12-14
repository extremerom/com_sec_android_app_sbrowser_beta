.class Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/AudioTrackOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerThread"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lorg/chromium/media/AudioTrackOutputStream;


# direct methods
.method public constructor <init>(Lorg/chromium/media/AudioTrackOutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;->mDone:Z

    return-void
.end method

.method public run()V
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;->mDone:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    invoke-static {v0}, Lorg/chromium/media/AudioTrackOutputStream;->c(Lorg/chromium/media/AudioTrackOutputStream;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/media/AudioTrackOutputStream$WorkerThread;->this$0:Lorg/chromium/media/AudioTrackOutputStream;

    invoke-static {v0}, Lorg/chromium/media/AudioTrackOutputStream;->b(Lorg/chromium/media/AudioTrackOutputStream;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
