.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u001f\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0018\u0010\u000eJ\u001f\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0019H&\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;",
        "",
        "",
        "isDragRestoreAnimationOngoing",
        "()Z",
        "Landroid/view/View;",
        "splitViewContainer",
        "",
        "fromHeight",
        "toHeight",
        "Ldb/r;",
        "resizeSplitOverViewWithAnimation",
        "(Landroid/view/View;II)V",
        "showSplitOverViewWithAnimation",
        "(Landroid/view/View;)V",
        "view",
        "showSplitViewAnimation",
        "",
        "dy",
        "withDuration",
        "animateDragRestore",
        "(FZ)V",
        "withDragCloseDuration",
        "animateDragClose",
        "closeSplitOverViewWithAnimation",
        "",
        "duration",
        "animateDragViewsByDy",
        "(FJ)V",
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


# virtual methods
.method public abstract animateDragClose(FZ)V
.end method

.method public abstract animateDragRestore(FZ)V
.end method

.method public abstract animateDragViewsByDy(FJ)V
.end method

.method public abstract closeSplitOverViewWithAnimation(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isDragRestoreAnimationOngoing()Z
.end method

.method public abstract resizeSplitOverViewWithAnimation(Landroid/view/View;II)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showSplitOverViewWithAnimation(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showSplitViewAnimation(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
