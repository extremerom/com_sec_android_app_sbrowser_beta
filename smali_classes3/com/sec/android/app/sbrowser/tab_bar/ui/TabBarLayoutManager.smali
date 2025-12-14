.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHorizontalMargin:I

.field private mIsNewTabButtonEnabled:Z

.field private mIsOneTabButton:Z

.field private mIsScrollButtonEnabled:Z

.field private mIsWrapLayoutNeeded:Z

.field private final mLayoutDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;

.field private final mOverlappedMargin:I

.field private final mOverlappedPadding:I

.field private mTabBarParentWidth:I

.field private mTabBarWidth:I

.field private mTabButtonWidth:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsWrapLayoutNeeded:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mLayoutDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0714a5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mHorizontalMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0714b4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mOverlappedPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0714b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mOverlappedMargin:I

    return-void
.end method

.method private calculateTabBarParentWidth(D)D
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mLayoutDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->calculateTabBarParentWidth(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private calculateTabBarWidth(III)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    iput-boolean v5, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsOneTabButton:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getParentWidth()D

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getNewTabButtonWidthWithMargin()D

    move-result-wide v7

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getOneLineDividerWidthWithMargin()D

    move-result-wide v9

    sub-double v11, v5, v7

    sub-double v13, v11, v9

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsWrapLayoutNeeded:Z

    invoke-direct {v0, v2, v13, v14, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->calculateTabButtonWidth(IDZ)I

    move-result v15

    int-to-double v3, v15

    iput-wide v3, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabButtonWidth:D

    invoke-direct {v0, v3, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->calculateTabBarParentWidth(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarParentWidth:I

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v16, v9

    add-double v9, v13, v3

    double-to-int v9, v9

    iput v9, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    if-lez v2, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    iput-boolean v9, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsNewTabButtonEnabled:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->shouldScrollButtonEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarParentWidth:I

    iget v10, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    if-le v9, v10, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsScrollButtonEnabled:Z

    if-eqz v9, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getLeftScrollButtonWidthWithMargin()D

    move-result-wide v9

    sub-double/2addr v11, v9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getRightScrollButtonWidthWithMargin()D

    move-result-wide v9

    sub-double v13, v11, v9

    const/4 v9, 0x1

    invoke-direct {v0, v2, v13, v14, v9}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->calculateTabButtonWidth(IDZ)I

    move-result v10

    int-to-double v9, v10

    iput-wide v9, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabButtonWidth:D

    invoke-direct {v0, v9, v10}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->calculateTabBarParentWidth(D)D

    move-result-wide v9

    double-to-int v9, v9

    iput v9, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarParentWidth:I

    add-double/2addr v3, v13

    double-to-int v3, v3

    iput v3, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsScrollButtonEnabled:Z

    :cond_5
    :goto_3
    iget v3, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarParentWidth:I

    iget v4, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    if-gt v3, v4, :cond_6

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsWrapLayoutNeeded:Z

    :cond_6
    const-string v3, "[calculateTabBarWidth] state : "

    const-string v4, ", animation : "

    move/from16 v9, p1

    invoke-static {v9, v3, v4}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isAnimationEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", child count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actual count : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wrap layout : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsWrapLayoutNeeded:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scroll button : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsScrollButtonEnabled:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TabBarLayoutManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[calculateTabBarWidth] parentWidth : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", newTabButtonWidth : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", oneLineDividerWidth : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v16

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", tabBarWidth : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[calculateTabBarWidth] tab button : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabButtonWidth:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", tab bar : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tab bar parent : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarParentWidth:I

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private calculateTabButtonWidth(IDZ)I
    .locals 2

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getHorizontalMargin()D

    move-result-wide v0

    sub-double/2addr p2, v0

    int-to-double v0, p1

    div-double/2addr p2, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getHorizontalMargin()D

    move-result-wide v0

    :goto_0
    sub-double/2addr p2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getStartMargin()D

    move-result-wide v0

    sub-double/2addr p2, v0

    int-to-double v0, p1

    div-double/2addr p2, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getHorizontalMargin()D

    move-result-wide v0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getMaximumWidth()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getMinimumWidth()D

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private getEndMargin()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0714c1

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f0714c2

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0714c3

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getLeftScrollButtonWidthWithMargin()D
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getStartMargin()D

    move-result-wide v2

    add-double/2addr v2, v0

    return-wide v2
.end method

.method private getMaximumWidth()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0714af

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    float-to-double v0, p0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0714ae

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0
.end method

.method private getMinimumWidth()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0714b1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    float-to-double v0, p0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0714b0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0
.end method

.method private getNewTabButtonWidthWithMargin()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getEndMargin()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    return-wide v0
.end method

.method private getOneLineDividerWidthWithMargin()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0714e7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p0, v0

    float-to-double v0, p0

    return-wide v0
.end method

.method private getOverlappedMargin()D
    .locals 2

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mOverlappedMargin:I

    int-to-double v0, p0

    return-wide v0
.end method

.method private getParentWidth()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mLayoutDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->getCurrentWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method private getRightScrollButtonWidthWithMargin()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0714cb

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p0, v0

    float-to-double v0, p0

    return-wide v0
.end method


# virtual methods
.method public getFirstTabButtonMargin()D
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsScrollButtonEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getHorizontalMargin()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getStartMargin()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getHorizontalMargin()D
    .locals 2

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mHorizontalMargin:I

    int-to-double v0, p0

    return-wide v0
.end method

.method public getOverlappedPadding()D
    .locals 2

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mOverlappedPadding:I

    int-to-double v0, p0

    return-wide v0
.end method

.method public getStartMargin()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0714c6

    goto :goto_0

    :cond_0
    const v0, 0x7f0714c5

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0714c7

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public getTabBarWidth()D
    .locals 2

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    int-to-double v0, p0

    return-wide v0
.end method

.method public getTabButtonWidth()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabButtonWidth:D

    return-wide v0
.end method

.method public isAnimationEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mLayoutDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->isTabRestoring()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mLayoutDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarParentWidth:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabButtonWidth:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsOneTabButton:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNewTabButtonEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsNewTabButtonEnabled:Z

    return p0
.end method

.method public isScrollButtonEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsScrollButtonEnabled:Z

    return p0
.end method

.method public isWrapLayoutNeeded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsWrapLayoutNeeded:Z

    return p0
.end method

.method public shouldScrollButtonEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabBarScrollButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public updateNewTabButtonMargin(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getOverlappedMargin()D

    move-result-wide v1

    double-to-int p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getEndMargin()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateParentLayout(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;I)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getActualTabButtonCount()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->calculateTabBarWidth(III)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsScrollButtonEnabled:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mOverlappedPadding:I

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mIsWrapLayoutNeeded:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarParentWidth:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mOverlappedPadding:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mTabBarWidth:I

    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mLayoutDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->updateLayoutAnimation()V

    return-void
.end method

.method public updateScrollButtonMargins(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getStartMargin()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getOverlappedMargin()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getOverlappedMargin()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0714cb

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method
