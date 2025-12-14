.class Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->createReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {p2}, Lcom/sec/terrace/content/browser/pip/TerracePipIntentUtils;->isTrustedIntentFromSelf(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.MediaAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.ControlType"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    const-wide/16 v1, 0x2710

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->f(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->f(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->getCurrentMediaPosition()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-interface {p2, v3, v4}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->seekTo(J)V

    const p2, 0x7f140d1f

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->f(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->f(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->getCurrentMediaPosition()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-interface {p2, v3, v4}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->seekTo(J)V

    const p2, 0x7f140d1e

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->f(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->pause()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    sget-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PAUSED:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->j(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V

    const p2, 0x7f140d21

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->f(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->play()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    sget-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PLAYING:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->j(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V

    const p2, 0x7f140d22

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->f(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->isPopupPlayerUsage()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->popup(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
