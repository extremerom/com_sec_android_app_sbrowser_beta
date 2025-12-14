.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView$1;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->getAnimation(Z)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

.field final synthetic val$isEntering:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView$1;->val$isEntering:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView$1;->val$isEntering:Z

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->g(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;Z)V

    return-void
.end method
