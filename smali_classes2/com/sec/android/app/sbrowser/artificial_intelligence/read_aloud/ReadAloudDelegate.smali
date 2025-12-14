.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canHighlight()Z
.end method

.method public abstract canNextArticle()Z
.end method

.method public abstract canPrevArticle()Z
.end method

.method public abstract checkTranslationEnabled(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract closeSplitView()V
.end method

.method public abstract getArticle(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Z)V
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract getArticleTitle(I)Ljava/lang/String;
.end method

.method public abstract getBottomBarHeightBasedOnConfiguration()I
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getJavascriptDelegate(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
.end method

.method public abstract getOriginalUrl(I)Ljava/lang/String;
.end method

.method public abstract getReadArticlesAloudHostTabId()I
.end method

.method public abstract getReaderTheme()I
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public abstract getSummary(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V
.end method

.method public abstract getSupplierType()I
.end method

.method public abstract getTitle(I)Ljava/lang/String;
.end method

.method public abstract getToolbarHeight()I
.end method

.method public abstract getUrl(I)Ljava/lang/String;
.end method

.method public abstract getVisibleBottomMargin()I
.end method

.method public abstract isArticleContents()Ljava/lang/Boolean;
.end method

.method public abstract isArticleHomepage()Ljava/lang/Boolean;
.end method

.method public abstract isValidTab(I)Z
.end method

.method public abstract isWaitingArticlesReadAloud()Z
.end method

.method public abstract onResultViewVisibilityChanged(Z)V
.end method

.method public abstract setCurrentTab(I)V
.end method

.method public abstract stopNavigationBarColorUpdate()Z
.end method

.method public abstract updateResultViewBottomModeStatus(Z)V
.end method

.method public abstract updateSplitSize(IZ)V
.end method
