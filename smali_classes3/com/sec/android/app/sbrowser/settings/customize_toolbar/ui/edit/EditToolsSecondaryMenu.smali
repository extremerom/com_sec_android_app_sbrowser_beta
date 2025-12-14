.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;
.source "SourceFile"


# instance fields
.field private final mEdgeDetectHandler:Landroid/os/Handler;

.field private mEdgeDetectRunnable:Ljava/lang/Runnable;

.field private final mEdgeInnerWidth:I

.field private final mEdgeOuterWidth:I

.field private mFrame:Landroid/graphics/Rect;

.field private mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

.field private final mItemTotalHorizontalMargin:I

.field private mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lc3/a;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lc3/a;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu$1;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setOnLongClickListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07038d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeInnerWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0703eb

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeOuterWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070394

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mItemTotalHorizontalMargin:I

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;Landroid/view/View;Landroid/graphics/Point;Landroid/view/MenuItem;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->startEdit(Landroid/view/View;Landroid/graphics/Point;Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->directDeleteItem(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->lambda$leftEdgePageScroll$1(I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->lambda$leftEdgePageScroll$0()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->lambda$rightEdgePageScroll$3(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->lambda$rightEdgePageScroll$2()V

    return-void
.end method

.method private edgePageScroll(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->leftEdgePageScroll(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->rightEdgePageScroll(II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectRunnable:Ljava/lang/Runnable;

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    return-object p0
.end method

.method private getNearestRow(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getRowCount()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method private synthetic lambda$leftEdgePageScroll$0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$leftEdgePageScroll$1(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->getNearestRow(I)I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getMaxItemPerPage()I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getColumnCount()I

    move-result v3

    mul-int/2addr v3, p1

    add-int/2addr v3, v2

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->moveMenuItem(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setSelectedItem(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setSelectedItem(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/b;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$rightEdgePageScroll$2()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$rightEdgePageScroll$3(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->getNearestRow(I)I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getMaxItemPerPage()I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getColumnCount()I

    move-result v3

    add-int/2addr p1, v1

    mul-int/2addr p1, v3

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-le p1, v2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->moveMenuItem(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setSelectedItem(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setSelectedItem(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/b;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private leftEdgePageScroll(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeInnerWidth:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeOuterWidth:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/a;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;II)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private rightEdgePageScroll(II)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeInnerWidth:I

    sub-int v1, v0, v1

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeOuterWidth:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/a;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;II)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mEdgeDetectHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canAddMenuItem(Landroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const v0, 0x7f0b0069

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " can not be tools"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EditHiddenMenu"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_UNAVAILABLE_TOOLS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0
.end method

.method public canRemoveMenuItem()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getItemCount()I

    move-result p0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_AT_LEAST_ITEMS_TOOLS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0
.end method

.method public getAddEventId()I
    .locals 0

    const p0, 0x7f140c7a

    return p0
.end method

.method public getDeleteEventId()I
    .locals 0

    const p0, 0x7f140c7b

    return p0
.end method

.method public getReferenceView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getStatusDetailId()I
    .locals 0

    const p0, 0x7f140c2b

    return p0
.end method

.method public insertionPosition(II)I
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->pointToPosition(II)I

    move-result v2

    if-eq v2, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getMaxItemPerPage()I

    move-result v3

    if-lt v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mItemTotalHorizontalMargin:I

    add-int/2addr v4, v5

    rem-int v5, v2, v3

    if-nez v5, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v5, v3

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v4

    sub-int/2addr v5, v3

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getMaxItemPerPage()I

    move-result p0

    mul-int/2addr p0, p1

    add-int/2addr p0, v2

    return p0

    :cond_7
    return v1
.end method

.method public isDragIn(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public pointToPosition(II)I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->edgePageScroll(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mHiddenMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsSecondaryMenu;->mMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getMaxItemPerPage()I

    move-result p0

    mul-int/2addr p0, p1

    add-int/2addr p0, v3

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
