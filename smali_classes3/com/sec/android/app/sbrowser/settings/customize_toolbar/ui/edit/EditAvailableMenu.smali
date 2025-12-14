.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;
.source "SourceFile"


# instance fields
.field private mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

.field private mAvailableMenuView:Landroidx/viewpager/widget/ViewPager;

.field private mFrame:Landroid/graphics/Rect;

.field private final mItemTotalHorizontalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lc3/a;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lc3/a;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->setOnLongClickListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070394

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mItemTotalHorizontalMargin:I

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;Landroid/view/View;Landroid/graphics/Point;Landroid/view/MenuItem;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->startEdit(Landroid/view/View;Landroid/graphics/Point;Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuView:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method


# virtual methods
.method public canAddMenuItem(Landroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const v0, 0x7f0b0073

    if-eq p0, v0, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const v0, 0x7f0b0069

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " can not be hidden"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EditAvailableMenu"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_UNAVAILABLE_HIDDEN:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0
.end method

.method public canRemoveMenuItem()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 0

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->pointToPosition(II)I

    move-result v2

    if-eq v2, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

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
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mItemTotalHorizontalMargin:I

    add-int/2addr v4, v5

    rem-int v5, v2, v3

    if-nez v5, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

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
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuView:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public pointToPosition(II)I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditAvailableMenu;->mAvailableMenuPagerAdapter:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPagerAdapter;->getMaxItemPerPage()I

    move-result p0

    mul-int/2addr p0, p1

    add-int/2addr p0, v3

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
