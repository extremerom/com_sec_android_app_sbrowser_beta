.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008f\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u001d\u0010\u000cJ\u000f\u0010\u001e\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u001e\u0010\u0019J\u000f\u0010\u001f\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H&\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008%\u0010\u0019R\u001c\u0010)\u001a\u00020\t8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010\u000cR\u001c\u0010*\u001a\u00020\u00048&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010 \"\u0004\u0008+\u0010\u0014\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "",
        "",
        "width",
        "",
        "shouldUpdateSplitViewSize",
        "Ldb/r;",
        "updateMainViewSplitSize",
        "(IZ)V",
        "",
        "height",
        "updateSavedRatioOfSplitOverViewHeight",
        "(F)V",
        "getSplitOverMaximumHeight",
        "()I",
        "updateSplitOverHeight",
        "(I)V",
        "getDefaultWidthForSplitView",
        "isAnimationNeeded",
        "closeSplitView",
        "(Z)V",
        "Landroid/view/View;",
        "getSplitViewContainer",
        "()Landroid/view/View;",
        "performActionUpAndCancelForSplitView",
        "()V",
        "initializeTouchPositionValue",
        "updateSplitViewContainerInitialY",
        "dy",
        "onTouchMoveWindowHandler",
        "onCloseButtonClick",
        "isShowing",
        "()Z",
        "",
        "keyword",
        "searchKeyword",
        "(Ljava/lang/String;)V",
        "updateMenuContainerPadding",
        "getSplitViewContainerInitialY",
        "()F",
        "setSplitViewContainerInitialY",
        "splitViewContainerInitialY",
        "isOnTouchInvokedKeyboardHide",
        "setOnTouchInvokedKeyboardHide",
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
.method public abstract closeSplitView(Z)V
.end method

.method public abstract getDefaultWidthForSplitView()I
.end method

.method public abstract getSplitOverMaximumHeight()I
.end method

.method public abstract getSplitViewContainer()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSplitViewContainerInitialY()F
.end method

.method public abstract initializeTouchPositionValue()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onCloseButtonClick()V
.end method

.method public abstract onTouchMoveWindowHandler(F)V
.end method

.method public abstract performActionUpAndCancelForSplitView()V
.end method

.method public abstract searchKeyword(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setOnTouchInvokedKeyboardHide(Z)V
.end method

.method public abstract updateMainViewSplitSize(IZ)V
.end method

.method public abstract updateMenuContainerPadding()V
.end method

.method public abstract updateSavedRatioOfSplitOverViewHeight(F)V
.end method

.method public abstract updateSplitOverHeight(I)V
.end method

.method public abstract updateSplitViewContainerInitialY()V
.end method
