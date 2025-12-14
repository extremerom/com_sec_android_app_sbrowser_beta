.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008f\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\'\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0019\u0010\u000cJ\u000f\u0010\u001a\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH&\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0019\u0010!\u001a\u00020\u00042\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH&\u00a2\u0006\u0004\u0008!\u0010\u001fJ\u0019\u0010#\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010\u001cH&\u00a2\u0006\u0004\u0008#\u0010\u001fJ\u0019\u0010%\u001a\u00020\u00042\u0008\u0010$\u001a\u0004\u0018\u00010\u001cH&\u00a2\u0006\u0004\u0008%\u0010\u001fJ\u0017\u0010(\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020&H&\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008*\u0010\u000cJ\u000f\u0010+\u001a\u00020\u001cH&\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008-\u0010\u000cJ\u0017\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008/\u0010\u0006J\u000f\u00100\u001a\u00020\u0004H&\u00a2\u0006\u0004\u00080\u0010\u000cJ\u000f\u00101\u001a\u00020\u0004H&\u00a2\u0006\u0004\u00081\u0010\u000cJ\u001f\u00105\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u00104\u001a\u00020\u0013H&\u00a2\u0006\u0004\u00085\u00106J\u0017\u00107\u001a\u00020\u00132\u0006\u00103\u001a\u000202H&\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00089\u0010\u001bJ\u000f\u0010:\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008:\u0010\u000cJ\u000f\u0010;\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010=\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008=\u0010\u001bJ\u000f\u0010>\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008>\u0010\u000cJ\u000f\u0010?\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008?\u0010<J\u000f\u0010@\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008@\u0010<J\u000f\u0010A\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008A\u0010\u001bJ\u000f\u0010C\u001a\u00020BH&\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008E\u0010\u000cJ\u000f\u0010F\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008F\u0010\u000cJ\u000f\u0010G\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008G\u0010\u001bJ\u000f\u0010H\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008H\u0010\u000cJ\u0017\u0010J\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008J\u0010\u0006J\u000f\u0010K\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008K\u0010\u001bJ\u0017\u0010L\u001a\u00020\u00042\u0006\u00103\u001a\u000202H&\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010N\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008N\u0010\u000cJ\u0017\u0010O\u001a\u00020\u00042\u0006\u00103\u001a\u000202H&\u00a2\u0006\u0004\u0008O\u0010M\u00a8\u0006P"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "",
        "",
        "isAnimationNeeded",
        "Ldb/r;",
        "dismiss",
        "(Z)V",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onResume",
        "()V",
        "",
        "toolbarOffset",
        "onToolbarOffsetsChanged",
        "(F)V",
        "bottomControlsOffset",
        "onBottomOffsetsChanged",
        "",
        "loadingType",
        "isFinished",
        "isSuccess",
        "updateLoadingStates",
        "(IZZ)V",
        "showSummaryWindow",
        "isShowing",
        "()Z",
        "",
        "languageCode",
        "setArticleLanguage",
        "(Ljava/lang/String;)V",
        "text",
        "setArticleText",
        "urlString",
        "setUrl",
        "titleString",
        "setOriginalTitle",
        "",
        "requestCodeValue",
        "setRequestCode",
        "(J)V",
        "updateSummaryText",
        "getSummarizedTextWithUrl",
        "()Ljava/lang/String;",
        "onSummaryStyleChanged",
        "visibility",
        "updateBottomBarForSummarySplitOver",
        "onDismiss",
        "onMenuContainerHideShowAnimationEnd",
        "Landroid/view/View;",
        "view",
        "matchParent",
        "setViewHeight",
        "(Landroid/view/View;I)V",
        "getViewHeightWithMargins",
        "(Landroid/view/View;)I",
        "shouldShowSplitView",
        "hideMenuContainerIfNecessary",
        "getSummaryViewHeight",
        "()I",
        "isOneUi7StyleErrorViewShowing",
        "restoreMenuContainer",
        "getToolbarOffset",
        "getBottomControlOffset",
        "isBodyContainerTransitionOngoing",
        "Landroid/widget/TextView;",
        "getSummarizeBodySentenceView",
        "()Landroid/widget/TextView;",
        "enableButtonsIfNeeded",
        "updateViewsForReaderModeTheme",
        "isProgressOngoing",
        "setFocusToSummaryTitle",
        "enabled",
        "enableInfoDetailAndSummaryStyleButtons",
        "isFloatingPaneModeBottom",
        "onSummaryStyleButtonClick",
        "(Landroid/view/View;)V",
        "onMainViewToolbarHeightChanged",
        "setAnchorViewForSummaryStylePopup",
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
.method public abstract dismiss(Z)V
.end method

.method public abstract enableButtonsIfNeeded()V
.end method

.method public abstract enableInfoDetailAndSummaryStyleButtons(Z)V
.end method

.method public abstract getBottomControlOffset()I
.end method

.method public abstract getSummarizeBodySentenceView()Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSummarizedTextWithUrl()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSummaryViewHeight()I
.end method

.method public abstract getToolbarOffset()I
.end method

.method public abstract getViewHeightWithMargins(Landroid/view/View;)I
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract hideMenuContainerIfNecessary()V
.end method

.method public abstract isBodyContainerTransitionOngoing()Z
.end method

.method public abstract isFloatingPaneModeBottom()Z
.end method

.method public abstract isOneUi7StyleErrorViewShowing()Z
.end method

.method public abstract isProgressOngoing()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onBottomOffsetsChanged(F)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onMainViewToolbarHeightChanged()V
.end method

.method public abstract onMenuContainerHideShowAnimationEnd()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSummaryStyleButtonClick(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSummaryStyleChanged()V
.end method

.method public abstract onToolbarOffsetsChanged(F)V
.end method

.method public abstract restoreMenuContainer()V
.end method

.method public abstract setAnchorViewForSummaryStylePopup(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setArticleLanguage(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setArticleText(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFocusToSummaryTitle()V
.end method

.method public abstract setOriginalTitle(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setRequestCode(J)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setViewHeight(Landroid/view/View;I)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract shouldShowSplitView()Z
.end method

.method public abstract showSummaryWindow()V
.end method

.method public abstract updateBottomBarForSummarySplitOver(Z)V
.end method

.method public abstract updateLoadingStates(IZZ)V
.end method

.method public abstract updateSummaryText()V
.end method

.method public abstract updateViewsForReaderModeTheme()V
.end method
