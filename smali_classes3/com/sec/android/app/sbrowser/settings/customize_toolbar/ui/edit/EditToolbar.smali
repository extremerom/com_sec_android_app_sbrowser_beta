.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;
.source "SourceFile"


# instance fields
.field private final mFrame:Landroid/graphics/Rect;

.field private final mMaxItems:I

.field mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mMaxItems:I

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar$1;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;)V

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->setOnItemLongClickListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;Landroid/view/View;Landroid/view/MenuItem;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->startEdit(Landroid/view/View;Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->directDeleteItem(I)V

    return-void
.end method


# virtual methods
.method public canAddMenuItem(Landroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildCount()I

    move-result p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mMaxItems:I

    add-int/lit8 p0, p0, 0x1

    if-lt p1, p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_TOOLBAR_FULL:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0

    :cond_0
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

    const p0, 0x7f140c7e

    return p0
.end method

.method public getDeleteEventId()I
    .locals 0

    const p0, 0x7f140c7f

    return p0
.end method

.method public getStatusDetailId()I
    .locals 0

    const p0, 0x7f140c2e

    return p0
.end method

.method public insertionPosition(II)I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlbarPosition()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    if-ne v2, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-lt p1, v5, :cond_3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge p1, v3, :cond_3

    if-le v2, p2, :cond_2

    add-int/2addr v2, v4

    :cond_2
    return v2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v2, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gt p1, v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lt p1, v2, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildCount()I

    move-result p0

    return p0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlbarView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlBarMarginHorizontal()I

    move-result v3

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_a

    if-nez p2, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_9

    add-int/lit8 p2, p2, 0x1

    :cond_9
    return p2

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlBarMarginHorizontal()I

    move-result p0

    sub-int/2addr v1, p0

    if-le p1, v1, :cond_d

    if-nez p2, :cond_b

    return v4

    :cond_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_2

    :cond_c
    add-int/lit8 p2, p2, 0x1

    :goto_2
    return p2

    :cond_d
    return v0
.end method

.method public isDragIn(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlbarPosition()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-ne v2, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_2

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge p1, v3, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v2, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gt p1, v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lt p1, v2, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getChildCount()I

    move-result p0

    sub-int/2addr p0, v4

    return p0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlbarView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlBarMarginHorizontal()I

    move-result v3

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_b

    if-nez p2, :cond_7

    return v1

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->getSelectedPosition()I

    move-result p0

    if-ge p0, p2, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    :goto_2
    return p2

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->getSelectedPosition()I

    move-result p0

    if-le p0, p2, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 p2, p2, -0x1

    :goto_3
    return p2

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;->mToolbarGridLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlBarMarginHorizontal()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_10

    if-nez p2, :cond_c

    return v4

    :cond_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->getSelectedPosition()I

    move-result p0

    if-le p0, p2, :cond_d

    goto :goto_4

    :cond_d
    add-int/lit8 p2, p2, -0x1

    :goto_4
    return p2

    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/BaseMenuEdit;->getSelectedPosition()I

    move-result p0

    if-ge p0, p2, :cond_f

    goto :goto_5

    :cond_f
    add-int/lit8 p2, p2, 0x1

    :goto_5
    return p2

    :cond_10
    return v0
.end method
