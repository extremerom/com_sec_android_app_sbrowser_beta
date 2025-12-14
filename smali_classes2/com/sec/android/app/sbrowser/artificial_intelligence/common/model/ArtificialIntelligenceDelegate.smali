.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canHighlightWebContent()Z
.end method

.method public abstract checkOnBackPressed()Z
.end method

.method public abstract closeSplitView()V
.end method

.method public abstract detectArticleAndUpdateAiButton(Z)V
.end method

.method public abstract detectArticleAndUpdateAiButton(ZZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)V
.end method

.method public abstract didRemoveObjectCaptureView()V
.end method

.method public abstract didRemoveVisionTextView()V
.end method

.method public abstract dismissAiOptionPopup()V
.end method

.method public abstract enableAiButton()V
.end method

.method public abstract getAiButton(Z)Landroid/view/View;
.end method

.method public abstract getArticle()Ljava/lang/String;
.end method

.method public abstract getArticle(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getBlockedType()I
.end method

.method public abstract getBottomBarHeightBasedOnConfiguration()I
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getCurrentTabUrl()Ljava/lang/String;
.end method

.method public abstract getCurrentUrl()Ljava/lang/String;
.end method

.method public abstract getHelpMeWriteController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IHelpMeWriteController;
.end method

.method public abstract getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getJavascriptDelegate(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getLanguageFromSixTransService(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMoreMenuButton(Z)Landroid/view/View;
.end method

.method public abstract getOrCreateTabForReadArticlesAloud(I)I
.end method

.method public abstract getOriginalUrl(I)Ljava/lang/String;
.end method

.method public abstract getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;
.end method

.method public abstract getReaderTheme()I
.end method

.method public abstract getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.end method

.method public abstract getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitle(I)Ljava/lang/String;
.end method

.method public abstract getToolbarHeight()I
.end method

.method public abstract getUrl(I)Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getVisibleBottomMargin()I
.end method

.method public abstract getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isArticleContents()Ljava/lang/Boolean;
.end method

.method public abstract isBottomBarEnabled()Z
.end method

.method public abstract isBrowsingAssistAvailable()Z
.end method

.method public abstract isCurrentTabInEditMode()Z
.end method

.method public abstract isLocationBarEditMode()Z
.end method

.method public abstract isSIXEnabled()Z
.end method

.method public abstract isSummaryNotAvailableInternalPage()Z
.end method

.method public isTargetLanguageSet()Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract isValidTab(I)Z
.end method

.method public abstract launchReadArticlesAloudByExternal(Ljava/lang/String;)V
.end method

.method public abstract loadUrl(ILjava/lang/String;)V
.end method

.method public abstract notifyToolbarHeightChanged()V
.end method

.method public abstract onContentHeightChanged()V
.end method

.method public abstract onReadAloudFailed()V
.end method

.method public abstract onReadAloudInitialized(I)V
.end method

.method public abstract onReadAloudSuspended(I)V
.end method

.method public abstract onResultViewVisibilityChanged(Z)V
.end method

.method public abstract onTranslateWebpage(Ljava/lang/String;)V
.end method

.method public abstract runPageTrans()V
.end method

.method public abstract searchKeywordInCurrentTab(Ljava/lang/String;)V
.end method

.method public abstract setCurrentTab(I)V
.end method

.method public abstract setCurrentTabVideoAssistantActivated(Ljava/lang/Boolean;)V
.end method

.method public abstract shouldIncludeBrowsingAssist()Z
.end method

.method public abstract shouldIncludeReadAloud()Z
.end method

.method public abstract shouldIncludeReadArticlesAloud()Z
.end method

.method public abstract shouldIncludeSummary()Z
.end method

.method public abstract shouldShowAiButton()Z
.end method

.method public abstract showReadAloudPopupWindow(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showReadArticlesAloudPopupWindow(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showSummarizePopupWindow(Ljava/lang/String;)V
.end method

.method public abstract stopGettingSentenceHandler()V
.end method

.method public abstract stopNavigationBarColorUpdate()Z
.end method

.method public abstract stopReadAloudIfNeeded()V
.end method

.method public abstract stopSummarizeIfNeeded()V
.end method

.method public abstract stopTranslateIfNeeded()V
.end method

.method public abstract updateAiButtonStatus()V
.end method

.method public abstract updateAiButtonVisibility(Z)V
.end method

.method public abstract updateAiPopupButton(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAiPopupButton(Ljava/util/List;ZZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation
.end method

.method public abstract updateBottomBarForSplitOverSheet(Z)V
.end method

.method public abstract updateReadAloudButtonVisibility()V
.end method

.method public abstract updateResultViewBottomModeStatus(Z)V
.end method

.method public abstract updateSplitOverViewStatus(Z)V
.end method

.method public abstract updateSplitSize(IZ)V
.end method
