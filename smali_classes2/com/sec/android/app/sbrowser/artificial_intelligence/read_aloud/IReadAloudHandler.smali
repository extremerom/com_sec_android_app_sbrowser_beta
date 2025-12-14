.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canNext()Z
.end method

.method public abstract canNextArticle()Z
.end method

.method public abstract canPrev()Z
.end method

.method public abstract canPrevArticle()Z
.end method

.method public abstract canRestart()Z
.end method

.method public abstract checkOnBackPressed()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getAvailableLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupplierType()I
.end method

.method public abstract getTabId()I
.end method

.method public abstract getThumbnailBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract goNext()V
.end method

.method public abstract goNextArticle()V
.end method

.method public abstract goPrev()V
.end method

.method public abstract goPrevArticle()V
.end method

.method public abstract hideReadAloudToolbar(ZZ)V
.end method

.method public abstract initialize(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V
.end method

.method public abstract isArticleList()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isReadArticlesAloudRunning()Z
.end method

.method public abstract isResultViewInBottomMode()Z
.end method

.method public abstract isSplitOverShowing()Z
.end method

.method public abstract maximizeReadAloudToolbar()V
.end method

.method public abstract minimizeReadAloudToolbar()V
.end method

.method public abstract onArticleIndexChanged()V
.end method

.method public abstract onBottomOffsetsChanged(F)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onContentViewTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onCurrentTabChanged(I)V
.end method

.method public abstract onEditModeChanged(ZZ)V
.end method

.method public abstract onHostTabChanged(I)V
.end method

.method public abstract onMainViewToolbarHeightChanged()V
.end method

.method public abstract onSupportLanguagesUpdated()V
.end method

.method public abstract onToolbarThemeChanged()V
.end method

.method public abstract onTopOffsetsChanged(F)V
.end method

.method public abstract onTranslationLanguagesUpdate()V
.end method

.method public abstract pause()V
.end method

.method public abstract play(ZZ)V
.end method

.method public abstract restart()V
.end method

.method public abstract setHostTabId(I)V
.end method

.method public abstract showReadAloudToolbar()V
.end method

.method public abstract start(Z)V
.end method

.method public abstract stop()V
.end method

.method public abstract updateArticleIndex(I)V
.end method
