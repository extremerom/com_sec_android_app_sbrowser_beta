.class Lcom/sec/android/app/sbrowser/tab/TabActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab/TabActivity;->attemptPictureInPicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

.field mTabObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallbackForExitFullscreenMode(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabActivity$5$1;-><init>(Lcom/sec/android/app/sbrowser/tab/TabActivity$5;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTabObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    return-void
.end method

.method public addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public getCurrentMediaPosition()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getCurrentMediaPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPopupPlayerUsage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->play()V

    return-void
.end method

.method public removeCallbackForExitFullscreenMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTabObserver:Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    return-void
.end method

.method public removeCallbackForPlaybackStateChange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeCallbackForPlaybackStateChange()V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->seekTo(J)V

    return-void
.end method
