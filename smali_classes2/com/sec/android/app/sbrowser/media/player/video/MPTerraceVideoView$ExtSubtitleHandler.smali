.class Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtSubtitleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->g(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V

    :cond_0
    return-void
.end method
