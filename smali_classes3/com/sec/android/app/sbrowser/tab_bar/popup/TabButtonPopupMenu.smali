.class public Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;
.super Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;
.source "SourceFile"


# instance fields
.field private final mTabId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->lambda$setOnMenuItemClickListener$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setOnMenuItemClickListener$0(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->onMenuItemClick(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public inflateMenu()V
    .locals 10

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100029

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isCurrentTab(I)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoTab(I)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isLockedTab(I)Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget v5, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->hasGroup(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget v8, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getUnlockedGroupTabCount(Ljava/lang/String;)I

    move-result v7

    xor-int/lit8 v8, v3, 0x1

    if-le v7, v8, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const v8, 0x7f0b0c67

    invoke-interface {v0, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-nez v1, :cond_1

    if-nez v3, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v5

    :goto_1
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v8, 0x7f0b0c66

    invoke-interface {v0, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-nez v2, :cond_2

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v7, 0x7f0b0c69

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    xor-int/lit8 v8, v2, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v7, 0x7f0b0c6b

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v5

    :goto_3
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v7, 0x7f0b0c6a

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    xor-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v4, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v7, v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getUnlockedTabCount(Z)I

    move-result v7

    xor-int/lit8 v8, v3, 0x1

    if-le v7, v8, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move v7, v5

    :goto_4
    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getUnlockedTabCount(Z)I

    move-result v2

    if-lez v2, :cond_5

    move v2, v6

    goto :goto_5

    :cond_5
    move v2, v5

    :goto_5
    const v4, 0x7f0b0c65

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f0b0c64

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isUndoAvailable()Z

    move-result v2

    const v4, 0x7f0b0c6e

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isTabLockSupported()Z

    move-result v2

    const v4, 0x7f0b0c68

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v1, :cond_6

    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    move v7, v6

    goto :goto_6

    :cond_6
    move v7, v5

    :goto_6
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f0b0c70

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    move v1, v6

    goto :goto_7

    :cond_7
    move v1, v5

    :goto_7
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v1

    const v2, 0x7f0b0c6c

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isOpenInOtherWindowAvailable()Z

    move-result v2

    const v3, 0x7f0b0c6d

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    move v5, v6

    :cond_8
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz p0, :cond_9

    const p0, 0x7f1403c1

    goto :goto_8

    :cond_9
    const p0, 0x7f1403c0

    :goto_8
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onMenuItemClick(I)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "4089"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->unlockTab(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4081"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->reopenClosedTab()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4086"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->openInOtherWindow(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->openInNewWindow(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupName(I)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->openInNewTabInGroup(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_6
    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->openInNewTab(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4085"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDialogHelper:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mAnchor:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;->showMoveToGroupPopup(Landroid/content/Context;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4091"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->lockTab(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4080"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "4050"

    const-string p1, "Used"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->closeTab(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4082"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupName(I)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->closeOtherTabsInGroup(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDialogHelper:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mAnchor:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->mTabId:I

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;->showCloseOtherTabDialog(Landroid/content/Context;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4083"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDialogHelper:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mAnchor:Landroid/view/View;

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;->showCloseAllTabDialog(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4084"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0c64
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnMenuItemClickListener()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lt/x0;->setOnMenuItemClickListener(Lt/w0;)V

    return-void
.end method
