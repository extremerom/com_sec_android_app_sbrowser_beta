.class public Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEmptyLayout:Landroidx/core/widget/NestedScrollView;

.field private mEmptyLayoutTextview:Landroid/widget/TextView;

.field private final mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

.field private mVHListParent:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0e10

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mVHListParent:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->initializeEmptyLayout()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->showNoHistoryLayout(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->addListItemsDecoration()V

    return-void
.end method

.method private getChangeBounds(Z)LY2/i;
    .locals 3

    new-instance p0, LY2/i;

    invoke-direct {p0}, LY2/i;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, LY2/f0;->setDuration(J)LY2/f0;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    return-object p0
.end method

.method private initializeEmptyLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b06ff

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mEmptyLayout:Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f0b049f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mEmptyLayoutTextview:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public addListItemsDecoration()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getMediaHistoryList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    new-instance v2, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public showNoHistoryLayout(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mEmptyLayout:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mVHListParent:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mEmptyLayoutTextview:Landroid/widget/TextView;

    const v0, 0x7f140720

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mEmptyLayoutTextview:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f060475

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mEmptyLayout:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mVHListParent:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public startCheckBoxAnimation(ZLjava/lang/Runnable;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getMediaHistoryList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->getChangeBounds(Z)LY2/i;

    move-result-object v1

    invoke-static {v0, v1}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p1, :cond_0

    const v2, 0x7f010037

    goto :goto_0

    :cond_0
    const v2, 0x7f010035

    :goto_0
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0742

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-nez v5, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {v5, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide p0

    add-long/2addr p0, v2

    invoke-virtual {v1}, LY2/f0;->getStartDelay()J

    move-result-wide v2

    invoke-virtual {v1}, LY2/f0;->getDuration()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
