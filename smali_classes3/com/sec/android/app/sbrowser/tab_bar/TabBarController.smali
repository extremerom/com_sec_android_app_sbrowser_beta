.class public Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

.field private final mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    return-void
.end method


# virtual methods
.method public activateCurrentTabButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->activateCurrentTabButton()V

    return-void
.end method

.method public dismissCloseConfirmDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->dismissCloseConfirmDialog()V

    return-void
.end method

.method public dismissContextMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->dismissContextMenu()V

    return-void
.end method

.method public dismissGroupNameDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->dismissGroupNameDialog()V

    return-void
.end method

.method public enableTabBarContainer(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->enableTabBar(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->stopDragging()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->hideAllPopups()V

    :cond_0
    return-void
.end method

.method public focusInLeft()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->focusInLeft()Z

    move-result p0

    return p0
.end method

.method public focusNewTabButton()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->focusNewTabButton()Z

    move-result p0

    return p0
.end method

.method public getTabBarButtons()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->getTabBarButtons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->getLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public hideAllPopups()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->dismissContextMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->dismissGroupNameDialog()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->dismissCloseConfirmDialog()V

    return-void
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public isInTabBarArea(Landroid/view/DragEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->isInTabBarArea(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public isTabTearing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->isTabTearing()Z

    move-result p0

    return p0
.end method

.method public notifyAllTabsInGroupRemoved(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "[notifyAllTabsInGroupRemoved] groupName : "

    const-string v1, "TabBarController"

    invoke-static {v0, p2, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->removeAllTabButtonsInGroup(ZLjava/lang/String;)V

    return-void
.end method

.method public notifyAllTabsRemoved(Z)V
    .locals 2

    const-string v0, "[notifyAllTabsRemoved] isIncognito : "

    const-string v1, "TabBarController"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->removeAllTabButtons(Z)V

    return-void
.end method

.method public notifyAllUnlockedTabsInGroupRemoved(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "[notifyAllUnlockedTabsInGroupRemoved] groupName : "

    const-string v1, "TabBarController"

    invoke-static {v0, p2, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->removeAllUnlockedTabButtonsInGroup(ZLjava/lang/String;)V

    return-void
.end method

.method public notifyAllUnlockedTabsRemoved(Z)V
    .locals 2

    const-string v0, "[notifyAllUnlockedTabsRemoved] isIncognito : "

    const-string v1, "TabBarController"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->removeAllUnlockedTabButtons(Z)V

    return-void
.end method

.method public notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setBackgroundColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V

    return-void
.end method

.method public notifyCurrentTabChanged(II)V
    .locals 3

    const-string v0, "[notifyCurrentTabChanged] ["

    const-string v1, "] to ["

    const-string v2, "]"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->updateCurrentTab(II)V

    return-void
.end method

.method public notifyFaviconUpdated(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->updateTabButtonFavicon(I)V

    return-void
.end method

.method public notifyLoadingStatusChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyTabTitleUpdated(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyFaviconUpdated(I)V

    return-void
.end method

.method public notifyMultiTabAttached()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->stopDragging()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->hideAllPopups()V

    return-void
.end method

.method public notifyMultiTabDetached()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->postUpdateLayout()V

    return-void
.end method

.method public notifyOtherTabsInGroupRemoved(ZLjava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyOtherTabsInGroupRemoved] isIncognito : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", groupName : ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), tabId : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->removeOtherTabButtonsInGroup(ZLjava/lang/String;I)V

    return-void
.end method

.method public notifyOtherTabsRemoved(ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyOtherTabsRemoved] isIncognito : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tabId : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->removeOtherTabButtons(ZI)V

    return-void
.end method

.method public notifySecretModeChanged(Z)V
    .locals 2

    const-string v0, "[notifySecretModeChanged] enabled : "

    const-string v1, "TabBarController"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->onSecretModeChanged(Z)V

    return-void
.end method

.method public notifyTabAdded(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoTab(I)Z

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, v2, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getIndexByTabId(ZI)I

    move-result v6

    const-string v0, "[notifyTabAdded] added tab : ["

    const-string v1, "] at "

    const-string v3, " into ["

    invoke-static {p1, v6, v0, v1, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    const-string v1, "root"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], incognito : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", by undo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TabBarController"

    invoke-static {v1, v0, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->addTabButton(ZILjava/lang/String;II)V

    return-void
.end method

.method public notifyTabDetailsLoaded(ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoTab(I)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->addDummyTabButton(ZILjava/lang/String;I)V

    return-void
.end method

.method public notifyTabGroupChanged(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateTabGroup] ids : {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->updateTabGroup(ZLjava/util/List;)V

    return-void
.end method

.method public notifyTabGroupColorChanged(ZLjava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->updateTabGroupColor(ZLjava/lang/String;I)V

    return-void
.end method

.method public notifyTabGroupNameChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->updateTabGroupName(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyTabGroupOrderChanged(ZLjava/lang/String;IZ)V
    .locals 3

    const-string v0, "[notifyTabGroupOrderChanged] group : ["

    const-string v1, "]"

    invoke-static {v0, p2, v1}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p4, :cond_0

    const-string v2, " behind of ["

    goto :goto_0

    :cond_0
    const-string v2, " in front of ["

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->moveTabGroup(ZLjava/lang/String;IZ)V

    return-void
.end method

.method public notifyTabGroupUngrouped(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyTabGroupUngrouped] groupName : ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->ungroupTabGroup(ZLjava/lang/String;)V

    return-void
.end method

.method public notifyTabGrouped(ZILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyTabGrouped] : move ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->groupTabButton(ZILjava/lang/String;)V

    return-void
.end method

.method public notifyTabIsLocked(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->lockTabButton(IZ)V

    return-void
.end method

.method public notifyTabMoved(ZII)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->canMoveTab(ZII)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[notifyTabMoved] : move ["

    const-string v1, "] to "

    const-string v2, "TabBarController"

    invoke-static {p2, p3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->moveTabButton(ZII)V

    :cond_0
    return-void
.end method

.method public notifyTabOrderChanged(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabIdByIndex(ZI)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v1, p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->canMoveTab(ZII)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[notifyTabOrderChanged] move ["

    const-string v2, "] to "

    const-string v3, "TabBarController"

    invoke-static {v0, p2, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->moveTabButton(ZII)V

    :cond_0
    return-void
.end method

.method public notifyTabRemoving(ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyTabRemoving] tabId : ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], isIncognito : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->removeTabButtonWithAnimation(ZI)V

    return-void
.end method

.method public notifyTabRestoreSkipped(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoTab(I)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->removeDummyTabButton(ZI)V

    return-void
.end method

.method public notifyTabStateLoaded()V
    .locals 2

    const-string v0, "TabBarController"

    const-string v1, "[notifyTabStateLoaded]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->onTabStateLoaded()V

    return-void
.end method

.method public notifyTabTearingFinished()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->onTabTearingFinished()V

    return-void
.end method

.method public notifyTabTitleUpdated(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->updateTabButtonTitle(I)V

    return-void
.end method

.method public notifyTabUngrouped(ZILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyTabUngrouped] : move ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] out from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->ungroupTabButton(ZILjava/lang/String;)V

    return-void
.end method

.method public notifyTabUrlUpdated(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->updateTabButtonFavicon(ILjava/lang/String;)V

    return-void
.end method

.method public notifyVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->updateVisibility(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->onStop()V

    return-void
.end method

.method public scrollToCurrentTabButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->scrollToCurrentTabButton()V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    return-void
.end method

.method public setNewTabButtonVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setNewTabButtonVisibility(Z)V

    return-void
.end method

.method public shouldCaptureLater()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->shouldCaptureLater()Z

    move-result p0

    return p0
.end method

.method public stopDragging()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->stopDragging(Z)V

    return-void
.end method

.method public switchToNextTabButton(ZZZ)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->switchToNextTabButton(ZZZ)Z

    move-result p0

    return p0
.end method

.method public updateProgress(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->mLayout:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->updateCurrentTabButtonProgress(I)V

    return-void
.end method
