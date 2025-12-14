.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field private mContainerSettingView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentLayout:I

.field private mCustomizeMenuContainer:Landroid/widget/RelativeLayout;

.field private mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

.field private mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

.field private mExtensionsActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

.field private mHiddenMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPrimaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field mToolbarLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mToolbarLeftItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarRightItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/context_menu/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mToolbarLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method private disableCollapse()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->seslSetCustomHeight(I)V

    :cond_1
    return-void
.end method

.method private done()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->done()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->lambda$updateLayout$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->lambda$updateLayout$2(Landroid/view/View;)V

    return-void
.end method

.method private inflateLayoutIfNeeded()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->isTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->isTabletLandscapeView()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e01c7

    goto :goto_0

    :cond_0
    const v0, 0x7f0e01ce

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->isPhoneLandscapeView()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e01c6

    goto :goto_0

    :cond_2
    const v0, 0x7f0e01cd

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCurrentLayout:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCurrentLayout:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeMenuContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeMenuContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->updateMenuItems()V

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isPhoneLandscapeView()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTabletLandscapeView()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTabletStyle(Landroid/content/Context;)Z
    .locals 0

    move-object p0, p1

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isMobileLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p3, p7, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->disableCollapse()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateLayout$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->onResetButtonClicked()V

    return-void
.end method

.method private synthetic lambda$updateLayout$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->done()V

    return-void
.end method

.method private onResetButtonClicked()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    const v1, 0x7f140c2c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f140d2e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f140d2c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->resetMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContainerSettingView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f140417

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f140c7d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "552"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateLayout()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->inflateLayoutIfNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const v1, 0x7f0b03ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->isTabletStyle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->isPhoneLandscapeView()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->getToolbarLayout()Landroid/view/ViewGroup;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditBottombar;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->getToolbarLayout()Landroid/view/ViewGroup;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarToolbar;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setToolbarEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->getToolsPrimaryView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setToolsPrimaryEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->getToolsSecondaryView()Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setToolsSecondaryEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->getAvailableMenuViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setHiddenMenuEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    const v1, 0x7f0b03bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    const v1, 0x7f0b03b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->getScrollView()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setOnDragListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;)V

    return-void
.end method

.method private updateMenuItems()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b03ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mPrimaryMenuItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mSecondaryMenuItems:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mToolbarLeftItems:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mToolbarRightItems:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mHiddenMenuItems:Ljava/util/List;

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarLayout;->updateMenuItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140c7c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "552"

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContainerSettingView:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance v0, Lt/k0;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->disableCollapse()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->updateLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "CustomizeToolbarFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer;->initialize()V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->initialize()V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mExtensionsActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mExtensionsActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->setExtensionActionCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;)V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsPrimaryMenus()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mPrimaryMenuItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolsSecondaryMenus()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mSecondaryMenuItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarLeftItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mToolbarLeftItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarRightItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mToolbarRightItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getHiddenMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mHiddenMenuItems:Ljava/util/List;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "CustomizeToolbarFragment"

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->disableCollapse()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mToolbarLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f0b02ee

    invoke-virtual {p3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContainerSettingView:Landroid/view/View;

    new-instance p0, Lt/k0;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f0b0696

    invoke-virtual {p3, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b0a0c

    invoke-virtual {p3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p0, 0x7f0e01c8

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mToolbarLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setToolbarEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setToolsPrimaryEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setToolsSecondaryEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setHiddenMenuEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mExtensionsActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mExtensionsActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->setExtensionActionCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mExtensionsActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->onCustomizeMenuFinished()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->updateLayout()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f140418

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f140d2f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarItemCount()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f140d41

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarItemCount()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    const p2, 0x7f0b03b8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mCustomizeMenuContainer:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->updateLayout()V

    return-void
.end method
