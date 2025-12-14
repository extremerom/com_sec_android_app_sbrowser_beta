.class Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;
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

.method private getVisibleViewRect()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    const-string v3, "ContextMenuDropdownPopupWindow"

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getCurrentVisibleContentRect()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getVisibleViewRect] from SBrowserTab : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    instance-of v2, v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getCurrentVisibleContentRect()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getVisibleViewRect] from SCustomTab : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    instance-of v2, v1, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/webapp/Webapp;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->getCurrentVisibleContentRect()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getVisibleViewRect] from Webapp : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[getVisibleViewRect] from window : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private measureMaxPopupHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070346

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method private measureMinPopupHeight()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {v0, p0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[measureMinPopupHeight] measureOneMenuHeight : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextMenuDropdownPopupWindow"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private measurePopupHeaderHeight()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupView:Landroid/view/View;

    const v1, 0x7f0b0305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {v0, p0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[measurePopupHeight] headerViewHeight : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextMenuDropdownPopupWindow"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private updatePopupLayout(Landroid/view/View;II)V
    .locals 9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;->measurePopupHeaderHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->measurePopupWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->measurePopupHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;->measureMaxPopupHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;->measureMinPopupHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;->getVisibleViewRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070345

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070346

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[updatePopupLayout] popup size : width["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], height["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContextMenuDropdownPopupWindow"

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    aget p1, v3, p1

    add-int/2addr p2, p1

    const/4 v4, 0x1

    aget v5, v3, v4

    add-int/2addr p3, v5

    iget v5, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    add-int v6, p2, v5

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v1

    if-le v6, v8, :cond_0

    add-int/2addr p1, v1

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    add-int v1, p3, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v0, v2

    if-le v1, v5, :cond_1

    aget p3, v3, v4

    add-int/2addr p3, v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->updatePopupSize(II)V

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionX:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionY:I

    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const-string v1, "ContextMenuDropdownPopupWindow"

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "[show] originalView is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "[show] Context menu has been clicked : x["

    const-string v2, "], y["

    const-string v3, "]"

    invoke-static {p2, p3, v0, v2, v3}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownPopupWindow;->updatePopupLayout(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionX:I

    iget p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionY:I

    iget p3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupWidth:I

    iget p4, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mMeasuredPopupHeight:I

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[show] Context menu has been updated : x["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionY:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionX:I

    iget p3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionY:I

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionX:I

    iget p3, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionY:I

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[show] Context menu has been shown : x["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuPopupWindow;->mPopupPositionY:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p0, "[show] activity is destroyed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
