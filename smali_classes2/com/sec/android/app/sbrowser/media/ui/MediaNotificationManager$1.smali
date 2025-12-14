.class Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;
.super Landroid/support/v4/media/session/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    invoke-direct {p0}, Landroid/support/v4/media/session/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onFastForward()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onMediaSessionAction(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onPause(I)V

    return-void
.end method

.method public onPlay()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onPlay(I)V

    return-void
.end method

.method public onRewind()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onMediaSessionAction(I)V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onMediaSessionSeekTo(J)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onMediaSessionAction(I)V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onMediaSessionAction(I)V

    return-void
.end method
