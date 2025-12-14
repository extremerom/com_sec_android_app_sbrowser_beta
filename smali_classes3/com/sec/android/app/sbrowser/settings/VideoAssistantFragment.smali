.class public Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLayoutMargin:I

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mScrollChildLayout:Landroid/widget/LinearLayout;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private final mTalkBackStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/Y;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/Y;-><init>(Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mTalkBackStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-void
.end method

.method public static synthetic h(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->lambda$new$1(Z)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->updateLayoutMargin()V

    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setVideoAssistantEnabled(Z)V

    return-void
.end method

.method private registerAccessibilityChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mTalkBackStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method private setLayoutChangeListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private setLayoutMargin()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mScrollChildLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mLayoutMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mScrollChildLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private unregisterAccessibilityChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mTalkBackStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method private updateLayoutMargin()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateLayoutMargin(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mLayoutMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMargin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getPhoneMargins(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mLayoutMargin:I

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->setLayoutMargin()V

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "537"

    return-object p0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f0;)V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->g(Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p1}, Landroidx/fragment/app/a;->f(ZZ)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f0;)V

    new-instance v0, Landroidx/fragment/app/p0;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/p0;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/p0;)V

    invoke-virtual {v1, p1, p1}, Landroidx/fragment/app/a;->f(ZZ)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->registerAccessibilityChangedListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->setLayoutChangeListener()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p2, 0x7f0e0906

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b06c5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isVideoAssistantEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/Z;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p3, 0x7f0b0e05

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mMainLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0a73

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/core/widget/NestedScrollView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f0b0a74

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mScrollChildLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->updateLayoutMargin()V

    const p3, 0x7f140ced

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f140d7a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p3, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setSALoggingId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->unregisterAccessibilityChangedListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mMainLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mScrollChildLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isValidStateForVideoAssistant(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f1406fb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method
