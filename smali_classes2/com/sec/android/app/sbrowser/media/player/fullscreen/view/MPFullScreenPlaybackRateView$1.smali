.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioButton;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08041f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioButton;

    move-result-object p1

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getPlaybackRate()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;Landroid/widget/RadioButton;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->d()[D

    move-result-object v0

    aget-wide v0, v0, p1

    invoke-interface {p2, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setPlaybackRate(D)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->highlightSelectedSpeedButton(Landroid/widget/RadioButton;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const p2, 0x7f140d13

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->d()[D

    move-result-object p2

    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
