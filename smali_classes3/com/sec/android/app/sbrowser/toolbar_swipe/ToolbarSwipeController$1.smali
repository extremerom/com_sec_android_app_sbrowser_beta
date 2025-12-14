.class public final Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "com/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$1",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;",
        "",
        "pageChanged",
        "Ldb/r;",
        "onSettled",
        "(Z)V",
        "",
        "pageNum",
        "onTargetPageDefined",
        "(IZ)V",
        "Landroid/view/MotionEvent;",
        "event",
        "pointerIndex",
        "Landroid/view/PointerIcon;",
        "onResolvePointerIcon",
        "(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->access$getDelegate$p(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    move-result-object v0

    const-string v1, "delegate"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isInToolbarArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->access$getDelegate$p(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getToolbar()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public onSettled(Z)V
    .locals 2

    const-string v0, "[ToolbarSwipeView.Listener] onSettled. Page changed: "

    const-string v1, "ToolbarSwipeController"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->access$stopSwipe(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->access$sendEventLog(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V

    :cond_0
    return-void
.end method

.method public onTargetPageDefined(IZ)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ToolbarSwipeView.Listener] onTargetPageDefined. Page changed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", pageNum : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToolbarSwipeController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
