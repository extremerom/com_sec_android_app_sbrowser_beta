.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio$1;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio;->startAlphaAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio;

.field final synthetic val$showToast:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio$1;->val$showToast:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio$1;->val$showToast:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio;->c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
