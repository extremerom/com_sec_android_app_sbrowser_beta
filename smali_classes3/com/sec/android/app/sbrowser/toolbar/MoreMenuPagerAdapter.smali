.class public Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;
.super Lc3/a;
.source "SourceFile"

# interfaces
.implements Lc3/f;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstanceId:I

.field private final mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

.field private mMaxItemPerPage:I

.field private final mMenu:Landroid/view/Menu;

.field private final mMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPageIndicator:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;

.field private mRowCount:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;Landroid/view/Menu;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;",
            "Landroid/view/Menu;",
            "Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Lc3/a;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMenuList:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMenu:Landroid/view/Menu;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    iput p8, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mInstanceId:I

    iput p6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mSpanCount:I

    iput p7, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mRowCount:I

    mul-int/2addr p6, p7

    iput p6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMaxItemPerPage:I

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mPageIndicator:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->getCount()I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->setPageCount(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMaxItemPerPage:I

    div-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMaxItemPerPage:I

    mul-int/2addr p2, v1

    add-int/2addr v1, p2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMenuList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v3, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/SecondaryRecyclerAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMenu:Landroid/view/Menu;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    iget v8, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mInstanceId:I

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/toolbar/SecondaryRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/Menu;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;I)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mSpanCount:I

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071605

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x0

    invoke-direct {p2, v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuItemDecoration;-><init>(II)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Lc3/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mPageIndicator:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->getCount()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->setPageCount(I)V

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mPageIndicator:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mRowCount:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mRowCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mSpanCount:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMaxItemPerPage:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mSpanCount:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mSpanCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mRowCount:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->mMaxItemPerPage:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
