.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;
.super Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;
.source "SourceFile"


# instance fields
.field private final mChildDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

.field private final mChildListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

.field private mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

.field private mIsVisible:Z

.field private mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

.field private final mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

.field private mNewTabEnabled:Z

.field private final mNormalDummyTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecretDummyTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldTabBarEnabled:Z

.field private mTabBarState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNewTabEnabled:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mIsVisible:Z

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNormalDummyTabList:Ljava/util/List;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mSecretDummyTabList:Ljava/util/List;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mChildDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$2;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mChildListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    const-string p0, "TabBarLayout"

    const-string p1, "tab bar layout (v1) is created"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createGroupView(Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e08c5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mChildDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mChildListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->initialize(Ljava/lang/String;ILcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;)V

    return-object v0
.end method

.method private createGroupViewIfNeeded(ZLjava/lang/String;II)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "[createGroupViewIfNeeded] add tab group : ("

    const-string v1, ", theme "

    const-string v2, "] to "

    invoke-static {v0, p3, p2, v1, v2}, Lt/b;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TabBarLayout"

    invoke-static {v0, p4, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->createGroupView(Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p2, p4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->addTabGroupView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;I)V

    return-void
.end method

.method private enableDimLayer(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isEditMode()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getDimLayer()Landroid/view/View;

    move-result-object v0

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getDimLayer()Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getDimLayer()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private enableLeftScrollButton(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;->setEnabled(Z)V

    return-void
.end method

.method private enableNewTabButton(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getNewTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;->setEnabled(Z)V

    return-void
.end method

.method private enableRightScrollButton(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;->setEnabled(Z)V

    return-void
.end method

.method private enableTabBarButtons(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableNewTabButton(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableLeftScrollButton(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableRightScrollButton(Z)V

    return-void
.end method

.method private enableTabBarScroll(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->enableTabBarScroll(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->setEnabled(Z)V

    return-void
.end method

.method private expandTabGroup(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;Z)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->postScrollTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->lambda$executeScroll$1(IZ)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->lambda$onNewTabButtonClick$0()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->expandTabGroup(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;Z)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    return-void
.end method

.method private synthetic lambda$executeScroll$1(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->bringToFront()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->customSmoothScroll(IZ)V

    return-void
.end method

.method private synthetic lambda$onNewTabButtonClick$0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNewTabEnabled:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabGroup(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->showContextMenu(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method private printTabsIfNeeded(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isShowTabButtonIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[printTabsIfNeeded] tab list : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->printTabsIfNeeded(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[printTabsIfNeeded] layout : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->printTabs()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private removeTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isIncognitoChild()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    return-void
.end method

.method private removeTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0
    .param p2    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    return-void
.end method

.method private removeTabGroup(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isIncognitoChild()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabGroupView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    return-void
.end method

.method private restoreTabListToTabBar(Z)V
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateTabBarScrollViews(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateTabBarParentLayout(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getAllTabIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "TabBarLayout"

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v5, v10}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isValidTab(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v5, v10}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isCurrentTab(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v10

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v5, v10}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoTab(I)Z

    move-result v5

    invoke-virtual {p0, v5, v10}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(ZI)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "[restoreTabListToTabBar] tabId : "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isIncognito : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v3, v10}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoTab(I)Z

    move-result v9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v3, v10}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupName(I)Ljava/lang/String;

    move-result-object v11

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v3, v11}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result v12

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v3, v9, v10}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getIndexByTabId(ZI)I

    move-result v13

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->addTabButton(ZILjava/lang/String;II)V

    move v3, v6

    goto :goto_0

    :cond_4
    if-eq v4, v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v2

    :cond_5
    if-eq v4, v2, :cond_6

    const-string v1, "[restoreTabListToTabBar] setCurrentTab : "

    invoke-static {v4, v1, v7}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateActivatedTab(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateCurrentTabButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->scrollToCurrentTabButton()V

    move v3, v6

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->cleanDummyTabButtons()V

    if-nez v3, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[restoreTabListToTabBar] current secret mode : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    :cond_8
    return-void
.end method

.method private showContextMenu(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->stopDragging(Z)V

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    const-string v1, "201"

    const-string v2, "202"

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getHeaderView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    move-result-object v4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v4, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->showPopupMenu(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v4, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->showPopupMenu(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, v2

    :cond_1
    const-string p0, "4152"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTabId()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->showPopupMenu(Landroid/content/Context;Landroid/view/View;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v1, v2

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isInGroup()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "4157"

    goto :goto_1

    :cond_4
    const-string p0, "4090"

    :goto_1
    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private toLeft(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b0c8e

    goto :goto_0

    :cond_0
    const p1, 0x7f0b0c8a

    :goto_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private triggerToolbarCapture()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->bringToFront()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->captureBitmap()V

    return-void
.end method

.method private updateActivatedTab(II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->updateActivatedTab(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setActivated(Z)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setEnableCloseUnlockButton(Z)V

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateAdjacentTabs(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateAdjacentTabs(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    return-void
.end method

.method private updateAdjacentTabs(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getIndex()I

    move-result p1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result v1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabIdByIndex(ZI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDrawable()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabIdList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabIdByIndex(ZI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDrawable()V

    :cond_2
    return-void
.end method

.method private updateControlButtonColor(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isWrapLayoutNeeded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getControlButtonDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getIconColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;->setIconColor(I)V

    return-void
.end method

.method private updateCurrentTabButton()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateMargin()V

    return-void
.end method

.method private updateLayout(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isNeedToUpdateLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableTabBarButtons(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableTabBarScroll(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->updateParentLayout(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isScrollButtonEnabled()Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getNewTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object v2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isWrapLayoutNeeded()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->updateNewTabButtonMargin(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getNewTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabBarTheme()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateControlButtonColor(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isNewTabButtonEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->setNewTabButtonVisibility(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->setScrollButtonVisibility(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->updateScrollButtonMargins(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabBarTheme()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateControlButtonColor(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabBarTheme()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateControlButtonColor(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;)V

    :cond_2
    return-void
.end method

.method private updateScrollButtonState()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isScrollButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isAtLeftEdge()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isAtRightEdge()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    if-nez v1, :cond_0

    goto :goto_0

    :goto_1
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableLeftScrollButton(Z)V

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :goto_2
    move v3, v4

    goto :goto_3

    :cond_2
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableRightScrollButton(Z)V

    :cond_4
    return-void
.end method

.method private updateTabButtonDrawable()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->updateDrawable()V

    return-void
.end method

.method private updateTabGroupScrollHeader(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->getVisibleScrollX(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->getHiddenTabGroupViewByScroll(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->setTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updatePosition(I)V

    return-void
.end method


# virtual methods
.method public addDummyTabButton(ZILjava/lang/String;I)V
    .locals 8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "[addDummyTabButton] create dummy tab : "

    const-string v2, " in ("

    invoke-static {p2, v1, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", theme "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "root"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), incognito : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mSecretDummyTabList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNormalDummyTabList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->createTabButton(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v4

    const/4 v7, -0x1

    move-object v2, p0

    move v3, p1

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public addTabButton(ZILjava/lang/String;II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNormalDummyTabList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TabBarLayout"

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "[addTabButton] normal tab already added : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateTabButtonTitle(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mSecretDummyTabList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "[addTabButton] secret tab already added : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateTabButtonTitle(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->stopDragging(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableTabBarButtons(Z)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->createTabButton(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->postScrollTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout()V

    return-void
.end method

.method public addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V
    .locals 0
    .param p2    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->createGroupViewIfNeeded(ZLjava/lang/String;II)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p5}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->addTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;I)V

    return-void
.end method

.method public calculateTabBarParentWidth(D)D
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getFirstTabButtonMargin()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getHorizontalMargin()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz v7, :cond_1

    check-cast v6, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getActualTabCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getTabButtonWidth()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupWidth(D)D

    move-result-wide v6

    add-double/2addr v6, v0

    goto :goto_1

    :cond_1
    check-cast v6, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-double v6, v0, p1

    :goto_1
    add-double/2addr v6, v2

    move-wide v0, v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public cleanDummyTabButtons()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->cleanDummyTabButtons()V

    return-void
.end method

.method public createTabButton(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e08c3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mChildDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mChildListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->initialize(ILcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;)V

    return-object v0
.end method

.method public dismissCloseConfirmDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissCloseConfirmDialog()V

    return-void
.end method

.method public dismissContextMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissPopupMenu()V

    return-void
.end method

.method public dismissGroupNameDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissGroupNameDialog()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutBottom()Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutTop()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public enableTabBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v0, "[enableTabBar] enable : "

    const-string v1, "TabBarLayout"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableDimLayer(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableTabBarButtons(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableTabBarScroll(Z)V

    return-void
.end method

.method public executeScroll(IZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/h;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishSplitMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->finishSplitMode()V

    return-void
.end method

.method public focusCurrentTabButton()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->scrollToCurrentTabButton()V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->scrollToCurrentTabButton()V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public focusInLeft()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->focusCurrentTabButton()Z

    move-result p0

    return p0
.end method

.method public getCurrentWidth()D
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-double v0, p0

    return-wide v0
.end method

.method public getDefaultGroupColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLayout()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getNormalDummyTabList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNormalDummyTabList:Ljava/util/List;

    return-object p0
.end method

.method public getSecretDummyTabList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mSecretDummyTabList:Ljava/util/List;

    return-object p0
.end method

.method public groupTabButton(ZILjava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getIndexByTabId(ZI)I

    move-result v6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    move-object v1, p0

    move v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoGroup(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout()V

    return-void
.end method

.method public isInTabList(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isInTabList(I)Z

    move-result p0

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSplitMode()Z

    move-result p0

    return p0
.end method

.method public isTabRestoring()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isTabRestoring()Z

    move-result p0

    return p0
.end method

.method public moveTabButton(ZII)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupName(I)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p2, v4}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->postScrollTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout()V

    return-void
.end method

.method public moveTabGroup(ZLjava/lang/String;IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->moveTabGroup(Ljava/lang/String;IZ)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout()V

    return-void
.end method

.method public onAnimationCanceled()V
    .locals 2

    const-string v0, "TabBarLayout"

    const-string v1, "[onAnimationCanceled]"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->triggerToolbarCapture()V

    return-void
.end method

.method public onAnimationEnded()V
    .locals 2

    const-string v0, "TabBarLayout"

    const-string v1, "[onAnimationEnded]"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableNewTabButton(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateCurrentTabButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateTabButtonDrawable()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateTabGroupScrollHeader(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->scrollToPendingChild()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->triggerToolbarCapture()V

    return-void
.end method

.method public onDraggingEnded()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->updateLayout()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragLayout;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->restoreTabListToTabBar(Z)V

    return-void
.end method

.method public onNewTabButtonClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->isTabRestoring()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNewTabEnabled:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getNewTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHovered(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNewTabEnabled:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->createTab()V

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/a;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "202"

    goto :goto_0

    :cond_1
    const-string p0, "201"

    :goto_0
    const-string p1, "4159"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onNewTabButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    const/16 p2, 0x3d

    if-eq p1, p2, :cond_3

    const p2, 0x2000003d

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutBottom()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutTop()Z

    move-result p0

    return p0

    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->focusCurrentTabButton()Z

    move-result p0

    return p0

    :cond_3
    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutRight()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->restoreTabListToTabBar(Z)V

    return-void
.end method

.method public onScrollButtonClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->toLeft(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->scrollToNextButton(Z)V

    return-void
.end method

.method public onScrollButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_3

    const p3, 0x2000003d

    if-eq p2, p3, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutBottom()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutTop()Z

    move-result p0

    return p0

    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p2

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutLeft()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p2

    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->focusCurrentTabButton()Z

    move-result p0

    return p0

    :cond_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p2

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->focusCurrentTabButton()Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p2

    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->focusNewTabButton()Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onScrollButtonTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->stopScroll()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->toLeft(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->startScroll(Z)V

    :goto_0
    return v1
.end method

.method public onScrollChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateScrollButtonState()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateTabGroupScrollHeader(I)V

    return-void
.end method

.method public onScrollEnd()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "202"

    goto :goto_0

    :cond_0
    const-string p0, "201"

    :goto_0
    const-string v0, "4158"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollHeaderClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->getTarget()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->getTarget()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->onClick()V

    return-void
.end method

.method public onScrollHeaderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x13

    if-eq p2, p3, :cond_3

    const/16 p3, 0x14

    if-eq p2, p3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object p2

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutBottom()Z

    move-result p0

    return p0

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object p2

    if-ne p1, p2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->focusOutTop()Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public onSecretModeChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->dismissCloseConfirmDialog()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateTabBarScrollViews(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateTabBarParentLayout(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->dismissContextMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->dismissGroupNameDialog()V

    return-void
.end method

.method public onTabButtonGrouped(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByIndex(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    const-string v1, "TabBarLayout"

    if-nez v0, :cond_0

    const-string p0, "[onTabButtonGrouped] draggedView : null at "

    invoke-static {p1, p0, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onTabButtonGrouped] draggedView : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->groupTab(ILjava/lang/String;)V

    return-void
.end method

.method public onTabButtonSwapped(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByIndex(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    const-string v1, "TabBarLayout"

    if-nez v0, :cond_0

    const-string p0, "[onTabButtonSwapped] draggedView : null at "

    invoke-static {p1, p0, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v2, v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabIdByIndex(ZI)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v3, v0, v2, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->canMoveTab(ZII)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "[onTabButtonSwapped] curIndex : "

    const-string v3, ", newIndex : "

    invoke-static {p1, p2, v2, v3, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->swapTab(II)V

    if-eqz v0, :cond_1

    const-string p1, "202"

    goto :goto_0

    :cond_1
    const-string p1, "201"

    :goto_0
    const-string p2, "4071"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    :cond_2
    return-void
.end method

.method public onTabButtonUngrouped(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByIndex(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    const-string v1, "TabBarLayout"

    if-nez v0, :cond_0

    const-string p0, "[onTabButtonUngrouped] draggedView : null at "

    invoke-static {p1, p0, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onTabButtonUngrouped] draggedView : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->ungroupTab(ILjava/lang/String;)V

    return-void
.end method

.method public onTabGroupSwapped(Ljava/lang/String;IZ)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoGroup(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object v1

    const-string v2, ")"

    const-string v3, "TabBarLayout"

    if-nez v1, :cond_0

    const-string p0, "[onTabGroupSwapped] draggedView : null for ("

    invoke-static {p0, p1, v2, v3}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "[onTabGroupSwapped] targetView : null at "

    invoke-static {p2, p0, v3}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of p2, v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    const-string v4, "[onTabGroupSwapped] group : ("

    if-eqz p2, :cond_5

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupName()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getLastTabIndex()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getFirstTabIndex()I

    move-result v1

    :goto_0
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    :cond_3
    invoke-static {v4, p1, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_4

    const-string v5, " behind of ("

    goto :goto_1

    :cond_4
    const-string v5, " in front of ("

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p2, p1, v1, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->moveTabGroup(Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_5
    check-cast v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v1, v0, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getIndexByTabId(ZI)I

    move-result v1

    invoke-static {v4, p1, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_6

    const-string v4, " behind of ["

    goto :goto_2

    :cond_6
    const-string v4, " in front of ["

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p2, p1, v1, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->moveTabGroup(Ljava/lang/String;IZ)V

    :goto_3
    if-eqz v0, :cond_7

    const-string p1, "202"

    goto :goto_4

    :cond_7
    const-string p1, "201"

    :goto_4
    const-string p2, "4071"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    return-void
.end method

.method public onTabStateLoaded()V
    .locals 4

    const-string v0, "TabBarLayout"

    const-string v1, "[onTabStateLoaded] clear dummy tabs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getAllTabIdList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNormalDummyTabList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabButton(ZI)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mSecretDummyTabList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabButton(ZI)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->cleanDummyTabButtons()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNormalDummyTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mSecretDummyTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onTouchEnded()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->triggerToolbarCapture()V

    return-void
.end method

.method public postScrollTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isIncognitoChild()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->setScrollTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method public removeAllTabButtons(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public removeAllTabButtonsInGroup(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeAllTabsInGroup(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public removeAllUnlockedTabButtons(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeAllUnlockedTabs()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public removeAllUnlockedTabButtonsInGroup(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeAllUnlockedTabsInGroup(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public removeDummyTabButton(ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[removeDummyTabButton] remove dummy tab : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", incognito : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mSecretDummyTabList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mNormalDummyTabList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabButton(ZI)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public removeOtherTabButtons(ZI)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeOtherTabs(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public removeOtherTabButtonsInGroup(ZLjava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeOtherTabsInGroup(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public removeTabButton(ZI)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    :cond_0
    return-void
.end method

.method public removeTabButtonWithAnimation(ZI)V
    .locals 3

    const-string v0, "[removeTabButtonWithAnimation] tabId : ["

    const-string v1, "]"

    const-string v2, "TabBarLayout"

    invoke-static {p2, v0, v1, v2}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->removeTabButtonWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->postUpdateLayout()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->focusCurrentTabButton()Z

    move-result p0

    return p0
.end method

.method public setBackgroundColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->updateTabBarTheme(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateTabButtonDrawable()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabBarTheme()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getNewTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateControlButtonColor(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateControlButtonColor(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateControlButtonColor(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updateDrawable()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getDimLayer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabBarDimLayerColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mMenuHandler:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    return-void
.end method

.method public shouldCaptureLater()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->isProgressBarVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public stopDragging(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->touchEventsEnded(Z)V

    :cond_0
    return-void
.end method

.method public switchToNextTabButton(ZZZ)Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getCurrentTabIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabIdList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_7

    if-lt v0, v1, :cond_0

    goto :goto_5

    :cond_0
    const/4 v3, 0x1

    if-eqz p2, :cond_1

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v3

    :goto_0
    if-eqz p2, :cond_3

    if-ne v1, v0, :cond_2

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    goto :goto_1

    :goto_2
    if-eqz v4, :cond_4

    if-nez p3, :cond_4

    return v2

    :cond_4
    if-eqz v4, :cond_6

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v1, -0x1

    :goto_3
    invoke-interface {p3, p1, v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabIdByIndex(ZI)I

    move-result p1

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p2, p1, v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabIdByIndex(ZI)I

    move-result p1

    :goto_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->setCurrentTab(I)V

    return v3

    :cond_7
    :goto_5
    return v2
.end method

.method public ungroupTabButton(ZILjava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p3, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getIndexByTabId(ZI)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    const-string p2, ""

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoGroup(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout()V

    return-void
.end method

.method public ungroupTabGroup(ZLjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->ungroup(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getFirstTabId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(ZI)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getLastTabId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(ZI)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->postScrollTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout()V

    return-void
.end method

.method public updateCurrentTab(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateActivatedTab(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateCurrentTabButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->scrollToCurrentTabButton()V

    return-void
.end method

.method public updateLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isNeedToUpdateLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TabBarLayout"

    const-string v1, "[updateLayout]"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mShouldTabBarEnabled:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->bringToFront()V

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->isTabRestoring()Z

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mTabBarState:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->enableTabBar(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mIsVisible:Z

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->updateCustomHeader(Z)V

    return-void
.end method

.method public updateTabGroup(ZLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getIndexByTabId(ZI)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, p1, v5, v3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->canMoveTab(ZII)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v4, v6}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "[updateTabGroup] id : ["

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    const-string v4, " into (root)"

    goto :goto_1

    :cond_2
    const-string v4, " into ("

    const-string v8, ")"

    invoke-static {v4, v6, v8}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TabBarLayout"

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, p1, v1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getIndexByTabId(ZI)I

    move-result v8

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->removeTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    move-object v3, p0

    move v4, p1

    move-object v5, v2

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->addTabButton(ZLcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;II)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->postScrollTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->printTabsIfNeeded(Z)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->updateLayout()V

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mIsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "[updateVisibility] update visibility : "

    const-string v1, "TabBarLayout"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mIsVisible:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->restoreTabListToTabBar(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->updateCustomHeader(Z)V

    return-void
.end method
