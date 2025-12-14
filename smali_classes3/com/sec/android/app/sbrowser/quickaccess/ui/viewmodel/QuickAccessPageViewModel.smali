.class public interface abstract Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract acquireOwner(Landroid/content/Context;)V
.end method

.method public abstract addCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
.end method

.method public abstract addCheckedItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
.end method

.method public abstract addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract canEnterEditMode(Landroid/content/Context;)Z
.end method

.method public abstract checkAllCheckableItems()V
.end method

.method public abstract clearTurnOnClickedFlag()V
.end method

.method public abstract deleteCheckedItems()V
.end method

.method public abstract deleteMostVisitedItems(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteQuickAccessItems(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public fetchNewsFeedCategories()V
    .locals 0

    return-void
.end method

.method public fetchSyncedTabItems()V
    .locals 0

    return-void
.end method

.method public abstract getBlurBackground()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getBottombarShadowVisibility()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getCheckableCount()I
.end method

.method public abstract getCheckedCount()I
.end method

.method public abstract getCheckedMostVisitedItems()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getCheckedQuickAccessItems()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getEditMode()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getEditModeOwner()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public getIsLightThemed()Landroidx/lifecycle/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/X;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getIsSolidColorLightThemed()Landroidx/lifecycle/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/X;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public abstract getMainUIEvent()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getMostVisitedItems()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getMostVisitedVisibility()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public getNewsFeedCategories()Landroidx/lifecycle/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/X;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getNewsFeedVisibility()Landroidx/lifecycle/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/X;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public abstract getPrivacyBoardFeaturesActiveStateList()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getPrivacyBoardVisibility()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getPrivacyDashboardMessage()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public getPromotionCallback()Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPromotionPageLoadEvent()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public getPromotionStatus()Landroidx/lifecycle/S;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;-><init>(ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public abstract getQuickAccessItems()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getQuickAccessUIEvent()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getSyncedTabItems()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getSyncedTabsVisibility()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getTheme()I
.end method

.method public abstract getThemeLiveData()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract getToolbarShadowVisibility()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract isChecked(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
.end method

.method public abstract isChecked(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)Z
.end method

.method public abstract isCtrlKeyPressed()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract isEditButtonVisible()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isHandOffPromotionAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isItemDragging()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract isNoItemsFullscreenTextViewVisible()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract isQuickAccessHeaderVisible()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract isReadyToShow()Landroidx/lifecycle/S;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract isUrlEditMode()Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end method

.method public abstract onClickAccountProfile(Landroid/content/Context;)V
.end method

.method public abstract onClickAddItem(Landroid/view/View;)V
.end method

.method public abstract onClickEdit(Landroid/content/Context;)V
.end method

.method public abstract onClickNewsFeedTabAdd(Landroid/content/Context;)V
.end method

.method public abstract onClickPrivacyBoard(Landroid/content/Context;)V
.end method

.method public abstract onClickRenameItem(Landroid/view/View;)V
.end method

.method public abstract onClickTurnOn()V
.end method

.method public abstract onCloseAddDialog()V
.end method

.method public onPromotionClick(Z)V
    .locals 0

    return-void
.end method

.method public abstract releaseOwner(Landroid/content/Context;)V
.end method

.method public abstract removeCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
.end method

.method public abstract removeCheckedItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
.end method

.method public abstract renameQuickAccessItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V
.end method

.method public abstract setBlurBackgroundBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setCtrlKeyPressed(Z)V
.end method

.method public abstract setEditButton(Z)V
.end method

.method public abstract setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setHandOffPromotionState(Z)V
    .locals 0

    return-void
.end method

.method public setIsLightThemed(Z)V
    .locals 0

    return-void
.end method

.method public setIsSolidColorLightThemed(Z)V
    .locals 0

    return-void
.end method

.method public abstract setItemDragging(Z)V
.end method

.method public setLastRefreshEventTime(Ljava/lang/Long;)V
    .locals 0

    return-void
.end method

.method public abstract setUrlEditMode(Z)V
.end method

.method public abstract uncheckAllCheckableItems()V
.end method

.method public updateDexMode()V
    .locals 0

    return-void
.end method

.method public updateNewsFeedViewSize()V
    .locals 0

    return-void
.end method

.method public abstract updatePrivacyDashboardMessage(Z)V
.end method

.method public abstract updateQuickAccessItemsPosition(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateScrollTop(Z)V
.end method

.method public abstract updateThemeIfNeeded()V
.end method

.method public abstract updateVerticalScrollable(Z)V
.end method
