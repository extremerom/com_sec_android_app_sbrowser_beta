.class public final Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->hideRemoveButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "Landroid/animation/Animator;",
        "anim",
        "Ldb/r;",
        "onAnimationEnd",
        "(Landroid/animation/Animator;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "anim"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hideRemoveButton() - onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMIsOnRemoveButtonAnimating$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V

    return-void
.end method
