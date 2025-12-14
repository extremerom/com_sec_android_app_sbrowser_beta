.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0016\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0014H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ/\u0010\"\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010!\u001a\u00020 H&\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\u00082\u0006\u0010$\u001a\u00020 H&\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\'\u0010\u0013J\'\u0010(\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008(\u0010\u0010J\u0017\u0010*\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u0014H&\u00a2\u0006\u0004\u0008-\u0010\u0017J\u000f\u0010.\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008.\u0010\u0013J\u001f\u00101\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00081\u0010\u001bJ\u000f\u00102\u001a\u00020\u0008H&\u00a2\u0006\u0004\u00082\u0010\u0013J\u000f\u00103\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00083\u0010\u0004J\u000f\u00104\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00084\u0010\u0004J\u000f\u00105\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00085\u0010\u0004\u00a8\u00066"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;",
        "",
        "",
        "isReadAloudSplitOverShowing",
        "()Z",
        "isReadAloudToolbarMaximized",
        "Landroid/view/MotionEvent;",
        "event",
        "Ldb/r;",
        "onContentViewTouchEvent",
        "(Landroid/view/MotionEvent;)V",
        "",
        "sourceLanguage",
        "targetLanguage",
        "eventId",
        "showReadAloudPopupWindow",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "showReadArticlesAloudPopupWindow",
        "updateReadAloudStatus",
        "()V",
        "",
        "TabId",
        "onCurrentTabChanged",
        "(I)V",
        "isEditMode",
        "isTabInEditMode",
        "onEditModeChanged",
        "(ZZ)V",
        "Landroid/app/Activity;",
        "activity",
        "newQuickAccessNativePage",
        "bottomControlsHeight",
        "",
        "bottomControlsOffsetYPix",
        "onBottomOffsetsChanged",
        "(Landroid/app/Activity;ZIF)V",
        "topControlsOffsetYPix",
        "onTopOffsetsChanged",
        "(F)V",
        "savePage",
        "onReadAloudWebpage",
        "inEditMode",
        "onNativePageEditModeChanged",
        "(Z)V",
        "tabId",
        "onHostTabChanged",
        "showReadAloudToolbar",
        "isFindOnPage",
        "isVAFullScreenMode",
        "hideReadAloudToolbar",
        "stopReadAloud",
        "isReadAloudOrReadArticlesAloudRunning",
        "isReadAloudRunning",
        "isReadArticlesAloudRunning",
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
.method public abstract hideReadAloudToolbar(ZZ)V
.end method

.method public abstract isReadAloudOrReadArticlesAloudRunning()Z
.end method

.method public abstract isReadAloudRunning()Z
.end method

.method public abstract isReadAloudSplitOverShowing()Z
.end method

.method public abstract isReadAloudToolbarMaximized()Z
.end method

.method public abstract isReadArticlesAloudRunning()Z
.end method

.method public abstract onBottomOffsetsChanged(Landroid/app/Activity;ZIF)V
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onContentViewTouchEvent(Landroid/view/MotionEvent;)V
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onCurrentTabChanged(I)V
.end method

.method public abstract onEditModeChanged(ZZ)V
.end method

.method public abstract onHostTabChanged(I)V
.end method

.method public abstract onNativePageEditModeChanged(Z)V
.end method

.method public abstract onReadAloudWebpage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onTopOffsetsChanged(F)V
.end method

.method public abstract savePage()V
.end method

.method public abstract showReadAloudPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showReadAloudToolbar()V
.end method

.method public abstract showReadArticlesAloudPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract stopReadAloud()V
.end method

.method public abstract updateReadAloudStatus()V
.end method
