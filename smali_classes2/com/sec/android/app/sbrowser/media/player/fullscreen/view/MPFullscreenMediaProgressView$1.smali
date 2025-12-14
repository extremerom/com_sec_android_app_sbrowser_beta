.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 p3, 0x9

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getDuration()I

    move-result p1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    long-to-int p1, v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->timeMSToString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->seekTo(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->d(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->h(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->d(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->isProgressBarAnimating()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updateFeatureUpperViews()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->g(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->autoHide()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->g(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->f(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->e(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->e(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updateFeatureUpperViews()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->d(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;->j(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMediaProgressView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startRecognizeWithDelay()V

    return-void
.end method
