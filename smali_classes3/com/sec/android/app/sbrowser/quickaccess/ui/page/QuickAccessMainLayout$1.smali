.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;
.super Landroidx/recyclerview/widget/O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mIsScrolling:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->mIsScrolling:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollTopReached()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollBottomReached()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->mIsScrolling:Z

    if-ne p2, p1, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->mIsScrolling:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->S(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onScrollStarted()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->S(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onScrollEnded()V

    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->Y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bottomBarHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/O0;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->mIsScrolling:Z

    const/4 p2, 0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollTopReached()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollBottomReached()Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->mIsScrolling:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->S(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onScrollStarted()V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->mIsScrolling:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollTopReached()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollBottomReached()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->mIsScrolling:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->S(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onScrollEnded()V

    :cond_3
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->Z(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getNewsFeedVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->X(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->c0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->X(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->fetchMoreNewsItems()V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->V(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p1

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->R(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->X(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->R(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->updateStickyTabLayoutVisibilityIfNeeded(ILandroid/widget/ImageView;)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->S(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isToolBarFixed()Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_7

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->Y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;->isKeyScrolling()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->Y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;->isHoverScrolling()Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->scrollableControlBarHeight()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->W(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)I

    move-result p2

    add-int/2addr p2, p3

    if-lez p3, :cond_9

    if-lt p2, p1, :cond_a

    move p2, p1

    goto :goto_3

    :cond_9
    if-gez p3, :cond_a

    if-gez p2, :cond_a

    move p2, v2

    :cond_a
    :goto_3
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bottomBarHeight()I

    move-result p3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v0

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_4
    if-lez p1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->W(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, p1

    div-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v3, p3

    sub-int/2addr v0, p3

    int-to-float p3, v0

    mul-float/2addr p3, v1

    add-float/2addr p3, v3

    float-to-int p3, p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->Y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->Y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    :goto_5
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->V(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Z

    move-result p3

    if-nez p3, :cond_d

    if-ne p2, p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->a0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1, p2, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1, p2, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->b0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;->onScrolled()V

    return-void

    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollTopReached()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "QuickAccessMainLayoutV2"

    const-string p3, "scroll top reached"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    :cond_f
    return-void

    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->Y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isCheckableBottomBarVisible()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->checkableBottomBarHeight(Z)I

    move-result v2

    :cond_11
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    :cond_12
    return-void
.end method
