.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/s;


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
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0006J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0006J\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0006J\u001f\u0010#\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1",
        "Lw6/s;",
        "Lw6/b;",
        "newMode",
        "Ldb/r;",
        "updateSummaryMinimizedViewOnModeChange",
        "(I)V",
        "Landroid/view/View;",
        "view",
        "",
        "top",
        "bottom",
        "updateViewMargin",
        "(Landroid/view/View;II)V",
        "Landroid/graphics/Rect;",
        "rect",
        "onPreInsert",
        "(Landroid/graphics/Rect;)V",
        "onInsert",
        "left",
        "onFloatingMoved",
        "(II)V",
        "onModeChanged-J5JjPLc",
        "onModeChanged",
        "visibility",
        "onVisibilityChanged",
        "Lw6/c;",
        "state",
        "onStateChanged-IywsXb8",
        "onStateChanged",
        "mode",
        "",
        "isMinimized",
        "onMinimizedChanged-oaV7IQU",
        "(IZ)V",
        "onMinimizedChanged",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final updateSummaryMinimizedViewOnModeChange(I)V
    .locals 9

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lw6/b;->a(II)Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getSplitViewMinimizeContainer$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    const v2, 0x7f0b0612

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f0b0c19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f0b0c15

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0b0c1b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b0c0d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getActivity$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz p1, :cond_0

    const v7, 0x7f071435

    goto :goto_0

    :cond_0
    const v7, 0x7f071436

    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getActivity$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz p1, :cond_1

    const v8, 0x7f071447

    goto :goto_1

    :cond_1
    const v8, 0x7f071448

    :goto_1
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getActivity$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_2

    const p1, 0x7f071477

    goto :goto_2

    :cond_2
    const p1, 0x7f071478

    :goto_2
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v6, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->updateViewMargin(Landroid/view/View;II)V

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v3, v6, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->updateViewMargin(Landroid/view/View;II)V

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v6, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->updateViewMargin(Landroid/view/View;II)V

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v4, v6, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->updateViewMargin(Landroid/view/View;II)V

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v5, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->updateViewMargin(Landroid/view/View;II)V

    return-void
.end method

.method private final updateViewMargin(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onFloatingMoved(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$setMoved$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Z)V

    return-void
.end method

.method public onInsert(Landroid/graphics/Rect;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInsert rect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lw6/b;->a(II)Z

    move-result v0

    const-string v2, "splitViewWebPageBlurView"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getSplitViewWebPageBlurView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3, v3, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getSplitViewWebPageBlurView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getSplitViewWebPageBlurView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic onMinimizedChanged(IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->onMinimizedChanged-oaV7IQU(IZ)V

    return-void
.end method

.method public onMinimizedChanged-oaV7IQU(IZ)V
    .locals 3

    invoke-static {p1}, Lw6/b;->b(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMinimizedChanged current mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isMinimized: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lw6/b;->a(II)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->stopBackgroundTransitionLightEffect()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getSplitViewMinimizeContainer$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const v0, 0x7f0b0c1b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getAiViewController$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    move-result-object p1

    const v0, 0x7f0b0c19

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getSplitViewMinimizeContainer$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getContentView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    :goto_0
    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setAnchorViewForSummaryStylePopup(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->setResultViewMinimizeState(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$enableMinimizedModeActionButtons(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    return-void
.end method

.method public bridge synthetic onModeChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->onModeChanged-J5JjPLc(I)V

    return-void
.end method

.method public onModeChanged-J5JjPLc(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$updateSummaryPanelMarginsForOneUi7OrAboveStyle(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getMAIDelegate$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lw6/b;->a(II)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateSplitOverViewStatus(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->updateSummaryMinimizedViewOnModeChange(I)V

    return-void
.end method

.method public onPreInsert(Landroid/graphics/Rect;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onPreInsert rect: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitViewManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onStateChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->onStateChanged-IywsXb8(I)V

    return-void
.end method

.method public onStateChanged-IywsXb8(I)V
    .locals 3

    invoke-static {p1}, Lw6/c;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStateChanged state: "

    const-string v2, "SplitViewManager"

    invoke-static {v1, v0, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$setCurrentResultViewState$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lw6/c;->a(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$updateSplitViewWebPageBlurViewVisibility(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getPanelPosition-J5JjPLc(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$isMoved$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getScreenID(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "20300"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$setMoved$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Z)V

    goto :goto_0

    :cond_1
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 2

    const-string v0, "onVisibilityChanged: "

    const-string v1, "SplitViewManager"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getAiDelegate$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->onResultViewVisibilityChanged(Z)V

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$dismissViewAndCallbacks(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getMAIDelegate$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->closeSplitView()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->e()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->setResultViewMinimizeState(Z)V

    :goto_1
    return-void

    :cond_3
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
