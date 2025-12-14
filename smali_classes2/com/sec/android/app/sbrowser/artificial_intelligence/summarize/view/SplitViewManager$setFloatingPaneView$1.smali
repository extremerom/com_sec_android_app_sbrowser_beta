.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$setFloatingPaneView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setFloatingPaneView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$setFloatingPaneView$1",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Ldb/r;",
        "onGlobalLayout",
        "()V",
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$setFloatingPaneView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$setFloatingPaneView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getActivity$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "resultView"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$setFloatingPaneView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->setPaneMode(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$setFloatingPaneView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->setPaneMode(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$setFloatingPaneView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method
