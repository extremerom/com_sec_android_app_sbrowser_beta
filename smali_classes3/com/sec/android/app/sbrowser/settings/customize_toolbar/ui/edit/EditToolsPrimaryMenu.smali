.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;
.source "SourceFile"


# instance fields
.field private mFrame:Landroid/graphics/Rect;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->setOnLongClickListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;Landroid/view/View;Landroid/graphics/Point;Landroid/view/MenuItem;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->startEdit(Landroid/view/View;Landroid/graphics/Point;Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->directDeleteItem(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public canAddMenuItem(Landroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_PRIMARY_MENU_FULL:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const p1, 0x7f0b0069

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_UNAVAILABLE_TOOLS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0
.end method

.method public canRemoveMenuItem()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0
.end method

.method public getAddEventId()I
    .locals 0

    const p0, 0x7f140c80

    return p0
.end method

.method public getDeleteEventId()I
    .locals 0

    const p0, 0x7f140c81

    return p0
.end method

.method public getReferenceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getStatusDetailId()I
    .locals 0

    const p0, 0x7f140c2f

    return p0
.end method

.method public insertionPosition(II)I
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    rem-int v5, v2, v0

    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v4

    add-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v4

    sub-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public isDragIn(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public pointToPosition(II)I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolsPrimaryMenu;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
