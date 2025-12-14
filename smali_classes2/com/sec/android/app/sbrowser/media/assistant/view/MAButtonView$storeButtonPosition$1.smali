.class public final Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$storeButtonPosition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sec/android/app/sbrowser/media/assistant/view/MAButtonView$storeButtonPosition$1",
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


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "anim"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "showButtonView() - onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$storeButtonPosition$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMActivity$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$storeButtonPosition$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMActivity$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$storeButtonPosition$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMButtonMainView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$storeButtonPosition$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMIsOnShowButtonAnimation$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string p1, "showButtonView() - mActivity is null or destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
