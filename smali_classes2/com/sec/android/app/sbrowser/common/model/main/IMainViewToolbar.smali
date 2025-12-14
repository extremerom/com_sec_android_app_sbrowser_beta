.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u0012\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0004\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;",
        "",
        "Ldb/r;",
        "updateAiButtonStatus",
        "()V",
        "onSplitModeStatusChanged",
        "onPcVersionChanged",
        "onMyanmarFontChanged",
        "updateSearchEnginesFavicon",
        "requestFocusWithKeyboard",
        "onReadyToSetSearchEngine",
        "",
        "isMoreMenuLeft",
        "()Z",
        "Landroid/view/View;",
        "anchorView",
        "showReconnectToOnlinePopup",
        "(Landroid/view/View;)V",
        "isReaderProgressDialogVisible",
        "onReaderModeCanceled",
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
.method public abstract isMoreMenuLeft()Z
.end method

.method public abstract isReaderProgressDialogVisible()Z
.end method

.method public abstract onMyanmarFontChanged()V
.end method

.method public abstract onPcVersionChanged()V
.end method

.method public abstract onReaderModeCanceled()V
.end method

.method public abstract onReadyToSetSearchEngine()V
.end method

.method public abstract onSplitModeStatusChanged()V
.end method

.method public abstract requestFocusWithKeyboard()V
.end method

.method public abstract showReconnectToOnlinePopup(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract updateAiButtonStatus()V
.end method

.method public abstract updateSearchEnginesFavicon()V
.end method
