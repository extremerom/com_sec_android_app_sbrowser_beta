.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;
.super Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;-><init>()V

    return-void
.end method

.method private executeKeyEvent(ILandroid/view/KeyEvent;Landroid/view/View;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq p1, v2, :cond_4

    const/16 v2, 0x43

    const/4 v3, 0x1

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5c

    if-eq p1, v2, :cond_1

    const/16 v2, 0x5d

    if-eq p1, v2, :cond_1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    return v3

    :pswitch_1
    invoke-direct {p0, p3, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyRightOriginally(Landroid/view/View;Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-direct {p0, p3, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyLeftOriginally(Landroid/view/View;Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyDown(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyUp(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeySipShowHide()Z

    move-result p0

    return p0

    :sswitch_1
    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyTab(Landroid/view/View;Landroid/view/KeyEvent;)V

    return v3

    :sswitch_2
    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyCharacter(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :sswitch_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyCtrl(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->enterSearchMode()V

    return v3

    :sswitch_5
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyCtrlD(Landroid/view/KeyEvent;Landroid/view/View;)Z

    move-result p0

    return p0

    :sswitch_6
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeySelectAll(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :sswitch_7
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyMenu(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyPageUpDown(Landroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_2
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    return v3

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyDel()Z

    move-result p0

    return p0

    :cond_4
    :sswitch_9
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyEnter(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7ffffffc -> :sswitch_7
        -0x7fffffe3 -> :sswitch_6
        -0x7fffffe0 -> :sswitch_5
        -0x7fffffde -> :sswitch_4
        -0x7fffffd7 -> :sswitch_7
        -0x7fffff91 -> :sswitch_7
        -0x5fffffd0 -> :sswitch_3
        0x29 -> :sswitch_2
        0x33 -> :sswitch_2
        0x3d -> :sswitch_1
        0x52 -> :sswitch_7
        0x54 -> :sswitch_4
        0x70 -> :sswitch_8
        0x3ee -> :sswitch_0
        0x20000042 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private executeSPenKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    const-string v0, "MultiTabView"

    const-string v1, "[dispatchKeyEvent] S pen key event"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->scrollPageUpDown(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->scrollPageUpDown(Z)V

    :goto_0
    return-void
.end method

.method private executeSearchBarKeyEvent(ILandroid/view/View;Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isSearchBar(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyCharacter(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_0
    invoke-virtual {p2, p3}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_1
    invoke-direct {p0, p2, p3, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyRightOriginally(Landroid/view/View;Landroid/view/KeyEvent;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_2
    invoke-direct {p0, p2, p3, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyLeftOriginally(Landroid/view/View;Landroid/view/KeyEvent;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->selectAllText()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fffffe3 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x3d -> :sswitch_3
        0x42 -> :sswitch_3
        0x52 -> :sswitch_3
        0x20000015 -> :sswitch_0
        0x20000016 -> :sswitch_0
    .end sparse-switch
.end method

.method private focusBottomBar()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->focusBottomBar()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSearchBarShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->focusBottomBar()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private focusGroupPath()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->requestFocusTabs()Z

    move-result p0

    return p0
.end method

.method private focusToolbar()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->focusEditToolbar()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSearchBarShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->focusSearchToolbar()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->focusMoveToolbar()Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->focusNormalToolbar()Z

    move-result p0

    return p0
.end method

.method private getMetaState(Landroid/view/KeyEvent;)I
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/high16 v1, 0x20000000

    if-eq p1, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCtrlKeyPressed(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setShiftKeyPressed(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setShiftKeyPressed(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCtrlKeyPressed(Z)V

    :goto_0
    return p1
.end method

.method private isBleSPenKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p0

    const/high16 p1, 0x2000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBottomBar(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isEditBottomBar(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarAllTabsButton(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarSecretButton(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarNewTabButton(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarCancelButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isBottomBarAllTabsButton(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getAllTabsButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getAllTabsButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBottomBarCancelButton(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getCancelButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getCancelButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBottomBarNewTabButton(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getNewTabButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getNewTabButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBottomBarSecretButton(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getSecretButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getSecretButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEditBottomBar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->isBottombarButton(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private isGroupPath(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->isFocused(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMoreMenuButton(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isMoreMenuButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMoveToolbar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isMoveToolbar(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNoTabLayout(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x7f0b080d

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNormalToolbar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isNormalToolbar(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSearchBar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isSearchBar(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSearchBarButton(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isSearchBarButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSearchToolbar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isSearchToolbar(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSelectAllCheckbox(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isSelectAllCheckbox(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isToolbar(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isSelectAllCheckbox(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isMoveToolbar(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isNormalToolbar(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isSearchToolbar(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isTopOfTabs()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isListView()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusNextTab(Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isLandscape()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isFirstSelectedItem()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isNoItemSelected()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method private onAirActionEvent(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isValidTabView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTabId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getFirstVisibleTabView()Landroid/view/View;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusTab(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method private onKeyCtrl(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setShiftKeyPressed(Z)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->reopenClosedTab()V

    :cond_0
    return v0
.end method

.method private onKeyCtrlD(Landroid/view/KeyEvent;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isClosable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->closeTabsWithConfirmDialog(Landroid/view/View;)V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyCharacter(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private onKeyDel()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isClosable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->closeTabsWithConfirmDialog(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private onKeyDownOnCloseBtn()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusCurrTab()V

    return-void
.end method

.method private onKeyDownOnTabs(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isListView()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusNextTab(Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusBottomBar()Z

    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isLastSelectedItem()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isNoItemSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "MultiTabView"

    const-string v1, "[onKeyDown] pass event to view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusBottomBar()Z

    return v1
.end method

.method private onKeyDownOnToolbar(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isToolbar(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoResultShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGroupPathShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusGroupPath()Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusTopTab()Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->focusNewTabButton()Z

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private onKeyEnter(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onKeyLeftObBottomBar(Landroid/view/View;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarNewTabButton(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroup()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getSecretButton()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getAllTabsButton()Landroid/view/View;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->requestFocusLeftEditBottomBar(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarSecretButton(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarAllTabsButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method private onKeyLeftOnCloseBtn(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyLeftOnTabs(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusCurrTab()V

    :goto_0
    return-void
.end method

.method private onKeyLeftOnTabs(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result v0

    const-string v1, "MultiTabView"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[onKeyLeft] isCardView, focus to left tab"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isTabCloseBtn(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusTabCloseBtn()Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusNextTab(Z)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->supportHorizontalFocusMove()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "[onKeyLeft] isGridView, focus to left tab"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isNoItemSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mTabMainViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusNextTab(Z)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private onKeyLeftOriginally(Landroid/view/View;Landroid/view/KeyEvent;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyRight(Landroid/view/View;Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyLeft(Landroid/view/View;Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method

.method private onKeyMenu(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSearchBarShowing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->showMoreMenu()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onKeyPageUpDown(Landroid/view/KeyEvent;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/16 p1, 0x5c

    if-ne p1, p2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->scrollPageUpDown(Z)V

    return v0
.end method

.method private onKeyRightOnBottomBar(Landroid/view/View;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarSecretButton(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarAllTabsButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->requestFocusRightEditBottomBar(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarNewTabButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->getNewTabButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    return v1
.end method

.method private onKeyRightOnCloseBtn(Landroid/view/View;Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "MultiTabView"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[onKeyRight] isCardView, focus to right tab"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isTabCloseBtn(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusCurrTab()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusNextTab(Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->supportHorizontalFocusMove()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "[onKeyRight] isGridView, focus to right tab"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isNoItemSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mTabMainViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusNextTab(Z)Z

    :cond_3
    :goto_0
    return v1
.end method

.method private onKeyRightOnTabs(Landroid/view/View;Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyRightOnCloseBtn(Landroid/view/View;Z)Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusTabCloseBtn()Z

    move-result p0

    return p0
.end method

.method private onKeyRightOriginally(Landroid/view/View;Landroid/view/KeyEvent;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyLeft(Landroid/view/View;Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyRight(Landroid/view/View;Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method

.method private onKeySelectAll(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isSelectAllChecked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getSelectableItemCount()I

    move-result p1

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->setSelectAllCheck(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->selectAll(Z)V

    :cond_1
    return v0
.end method

.method private onKeySipShowHide()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSearchBarShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->requestFocusToSearchEditText()V

    return v1
.end method

.method private onKeyTabOnBottomBar(Landroid/view/View;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarSecretButton(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarAllTabsButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isEditBottomBar(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->requestFocusRightEditBottomBar(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusToolbar()Z

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarNewTabButton(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBarCancelButton(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusToolbar()Z

    return v1

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->focusNewTabButton()Z

    return v1
.end method

.method private onKeyTabOnTabs()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isLastSelectedItem()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isNoItemSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusNextTab(Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusBottomBar()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusNextTab(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusBottomBar()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private onKeyUpOnBottomBar()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoResultShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusBottomTab()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusToolbar()Z

    move-result p0

    return p0
.end method

.method private onKeyUpOnCloseBtn(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isTopOfTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGroupPathShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusGroupPath()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusToolbar()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "MultiTabView"

    const-string v1, "[onKeyUp] pass event to view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private onKeyUpOnTabs(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusTabCloseBtn()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyUpOnCloseBtn(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private requestFocusLeftEditBottomBar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private requestFocusRightEditBottomBar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[dispatchKeyEvent] event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTabView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBleSPenKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->executeSPenKeyEvent(Landroid/view/KeyEvent;)V

    return v2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarExpanded(ZZ)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    or-int/2addr v5, v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    const/16 v7, 0x43

    if-eq v0, v7, :cond_3

    const/16 v7, 0x70

    if-eq v0, v7, :cond_3

    const/16 v7, 0x3ee

    if-eq v0, v7, :cond_3

    const/16 v7, 0x54

    if-eq v0, v7, :cond_3

    const/16 v7, 0x52

    if-eq v0, v7, :cond_3

    if-nez v4, :cond_3

    const-string p0, "dispatchKeyEvent RETURNS with DEL / FORWARD_DEL"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[dispatchKeyEvent] focusedView: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5, v6, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->executeSearchBarKeyEvent(ILandroid/view/View;Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    invoke-direct {p0, v5, p1, v6}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->executeKeyEvent(ILandroid/view/KeyEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public isTabCloseBtn(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isTabCloseBtn(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyCharacter(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isSearchBar(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->onKeyCharacterOnSearchToolbar(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v1

    or-int/2addr p1, v1

    const v1, -0x7fffffe0

    if-eq p1, v1, :cond_3

    const v1, -0x7fffffd7

    if-eq p1, v1, :cond_2

    const p2, -0x7fffffcd

    if-eq p1, p2, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->clickMenuKey(Landroid/view/KeyEvent;)V

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTabId()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->dismissTabById(IZ)V

    :cond_4
    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "MultiTabView"

    const-string v1, "[onKeyDown]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyDownOnToolbar(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isGroupPath(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusTopTab()Z

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBar(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isNoTabLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusBottomBar()Z

    return v1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isTabCloseBtn(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyDownOnCloseBtn()V

    return v1

    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyDownOnTabs(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyLeft(Landroid/view/View;Landroid/view/KeyEvent;Z)Z
    .locals 2

    const-string v0, "MultiTabView"

    const-string v1, "[onKeyLeft]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onAirActionEvent(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->onKeyLeft(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isGroupPath(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->onKeyLeft(Landroid/view/View;)Z

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyLeftObBottomBar(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v1

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p2}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isTabCloseBtn(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyLeftOnCloseBtn(Landroid/view/View;Z)V

    return v1

    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyLeftOnTabs(Landroid/view/View;Z)V

    return v1
.end method

.method public onKeyRight(Landroid/view/View;Landroid/view/KeyEvent;Z)Z
    .locals 2

    const-string v0, "MultiTabView"

    const-string v1, "[onKeyRight]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onAirActionEvent(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->onKeyRight(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isGroupPath(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->onKeyRight(Landroid/view/View;)Z

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyRightOnBottomBar(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isMoreMenuButton(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v1

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p2}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isTabCloseBtn(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyRightOnCloseBtn(Landroid/view/View;Z)Z

    move-result p0

    return p0

    :cond_6
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyRightOnTabs(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public onKeyTab(Landroid/view/View;Landroid/view/KeyEvent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->onKeyTab(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isMoreMenuButton(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isSearchBarButton(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isSelectAllCheckbox(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isMoveToolbar(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyTabOnBottomBar(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyTabOnTabs()V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusBottomBar()Z

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->focusForefrontTab()Z

    :goto_1
    return-void
.end method

.method public onKeyUp(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "MultiTabView"

    const-string v1, "[onKeyUp]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isToolbar(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isGroupPath(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusToolbar()Z

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isBottomBar(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyUpOnBottomBar()Z

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isNoTabLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->focusToolbar()Z

    move-result p0

    return p0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->isTabCloseBtn(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyUpOnCloseBtn(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->onKeyUpOnTabs(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
