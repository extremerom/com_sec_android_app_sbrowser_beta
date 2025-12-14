.class Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;
.super Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListView;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListView;)V

    return-void
.end method

.method private calculateXPosition(IZIILandroid/graphics/Rect;)I
    .locals 0

    if-eqz p2, :cond_0

    sub-int/2addr p3, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    add-int/2addr p2, p1

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p4

    sub-int/2addr p4, p3

    if-le p2, p4, :cond_1

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    sub-int/2addr p1, p0

    sub-int/2addr p1, p3

    :cond_1
    return p1
.end method

.method private calculateYPosition(IZLandroid/graphics/Rect;Landroid/view/View;I)I
    .locals 7

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int p3, p1, p3

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, p3, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    const/16 v4, 0x64

    if-nez p2, :cond_3

    invoke-virtual {p4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    new-array v5, p2, [I

    invoke-virtual {p4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v5, v2

    div-int/2addr p5, p2

    if-le v2, p5, :cond_3

    if-ge v0, v4, :cond_3

    if-ge p3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    move p3, v0

    :cond_4
    iget p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    if-le p2, p3, :cond_5

    if-le p3, v4, :cond_5

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_3

    :cond_6
    iget p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    sub-int p0, p1, p0

    :goto_3
    return p0
.end method

.method private checkRightSideNavibar(II)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget p0, v0, v1

    if-nez p0, :cond_2

    if-le p1, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private updatePopupLayout(IILandroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v11

    new-instance v9, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v9, v0, v0, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v9, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    move v4, v1

    goto :goto_0

    :cond_0
    move v2, v0

    move v4, v2

    :goto_0
    if-ge v2, v11, :cond_1

    :goto_1
    move v8, v0

    goto :goto_2

    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;->checkRightSideNavibar(II)Z

    move-result v0

    goto :goto_1

    :goto_2
    move-object v1, p0

    move v2, p1

    move v3, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;->calculateXPosition(IZIILandroid/graphics/Rect;)I

    move-result p1

    move-object v6, p0

    move v7, p2

    move-object v10, p3

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;->calculateYPosition(IZLandroid/graphics/Rect;Landroid/view/View;I)I

    move-result p2

    iget p3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    invoke-virtual {p0, p3, v0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->updatePopupSize(II)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionX:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionY:I

    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;)V
    .locals 5

    const-string v0, "show"

    const-string v1, "SixContextMenuDropdownPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->measurePopupWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->measurePopupHeight()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0, v3, v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;->updatePopupLayout(IILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    invoke-virtual {p0, p1, v0, v2}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    const-string p0, "Context menu has been updated"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionX:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionY:I

    invoke-virtual {p0, p1, v2, v0, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Context menu has been shown : x["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionX:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]y["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionY:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
