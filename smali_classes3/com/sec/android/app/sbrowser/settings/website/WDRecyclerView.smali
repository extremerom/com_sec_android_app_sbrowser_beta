.class public Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private mHeightToShift:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic E(Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;->lambda$scrollListIfRequired$0(I)V

    return-void
.end method

.method private lambda$scrollListIfRequired$0(I)V
    .locals 3

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method


# virtual methods
.method public getChildAt(II)Landroid/view/View;
    .locals 3

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public onCreateView(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/N0;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public scrollListIfRequired(ZLcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;->mHeightToShift:I

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;->mHeightToShift:I

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->isAppbarExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->collapseAppbar()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/website/k;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/k;-><init>(IILjava/lang/Object;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {p3, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setGoToTopAndHoverBottomPadding(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    return-void
.end method

.method public setHeightToShift(Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070149

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;->mHeightToShift:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v0, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;->mHeightToShift:I

    goto :goto_0

    :cond_1
    sub-int v3, v0, p2

    if-le v2, v3, :cond_2

    sub-int/2addr v0, p2

    iget p2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;->mHeightToShift:I

    :cond_2
    :goto_0
    return-void
.end method

.method public setWebsiteList(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteUtils;->addListItemsDecoration(Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;)V

    return-void
.end method

.method public startCheckBoxAnimation(Landroidx/fragment/app/Fragment;ZZ)V
    .locals 5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p2, :cond_0

    const v0, 0x7f010037

    goto :goto_0

    :cond_0
    const v0, 0x7f010035

    :goto_0
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteUtils;->getChangeBounds(Z)LY2/i;

    move-result-object v1

    invoke-static {p0, v1}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0e4f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p2, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    if-nez p3, :cond_3

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    invoke-virtual {v3, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
