.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;
.super Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->initViewsForSplitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1",
        "Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;",
        "Ldb/r;",
        "onShowKeyboard",
        "()V",
        "onHideKeyboard",
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideKeyboard()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isOnTouchInvokedKeyboardHide()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->restoreSplitOverToDefaultHeight()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->restoreTranslationY()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setOnTouchInvokedKeyboardHide(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShowKeyboard()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "resultView"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lw6/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method
