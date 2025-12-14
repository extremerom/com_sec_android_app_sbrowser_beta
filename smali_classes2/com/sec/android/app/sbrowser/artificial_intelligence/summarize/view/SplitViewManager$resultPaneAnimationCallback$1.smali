.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1",
        "Lw6/r;",
        "Landroid/graphics/Rect;",
        "value",
        "Ldb/r;",
        "onAnimationStart",
        "(Landroid/graphics/Rect;)V",
        "onAnimationUpdate",
        "onAnimationEnd",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c:Lw6/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw6/q;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateMainViewSplitSize(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$setAnimationOngoing$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Z)V

    return-void

    :cond_2
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onAnimationStart(Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c:Lw6/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw6/q;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$setAnimationOngoing$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateMainViewSplitSize(IZ)V

    return-void

    :cond_2
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onAnimationUpdate(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c:Lw6/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw6/q;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateMainViewSplitSize(IZ)V

    return-void

    :cond_2
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
