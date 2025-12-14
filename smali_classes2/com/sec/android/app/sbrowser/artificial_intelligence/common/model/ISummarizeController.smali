.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\t\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0008J\u000f\u0010\u0015\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0008J\u000f\u0010\u0016\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;",
        "",
        "",
        "isSummarizedViewShowing",
        "()Z",
        "isSummarySplitOverShowing",
        "Ldb/r;",
        "updateSummarizeViewColorsForReaderMode",
        "()V",
        "onAIViewControllerDismissed",
        "isAnimationNeeded",
        "dismissSummarizedView",
        "(Z)V",
        "dismissAIViews",
        "",
        "bottomControlsOffsetYPix",
        "onBottomOffsetsChanged",
        "(F)V",
        "topControlsOffsetYPix",
        "onToolbarOffsetsChanged",
        "onSummarizeWebsite",
        "setFocusToSummaryTitle",
        "onMainViewToolbarHeightChanged",
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
.method public abstract dismissAIViews(Z)V
.end method

.method public abstract dismissSummarizedView(Z)V
.end method

.method public abstract isSummarizedViewShowing()Z
.end method

.method public abstract isSummarySplitOverShowing()Z
.end method

.method public abstract onAIViewControllerDismissed()V
.end method

.method public abstract onBottomOffsetsChanged(F)V
.end method

.method public abstract onMainViewToolbarHeightChanged()V
.end method

.method public abstract onSummarizeWebsite()V
.end method

.method public abstract onToolbarOffsetsChanged(F)V
.end method

.method public abstract setFocusToSummaryTitle()V
.end method

.method public abstract updateSummarizeViewColorsForReaderMode()V
.end method
