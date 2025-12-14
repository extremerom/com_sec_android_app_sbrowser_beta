.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
