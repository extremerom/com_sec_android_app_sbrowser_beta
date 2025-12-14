.class public Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

.field protected mAnchorView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mListener:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;

.field protected mPopup:Lt/q0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mListener:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mListener:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->onLayoutChanged()V

    return-void
.end method

.method private initPopupView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__HistoryNavigationPopup"

    const-string v1, "initPopupView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lt/q0;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lt/q0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lt/q0;->setModal(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lt/q0;->setDropDownGravity(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)V

    invoke-virtual {v0, v1}, Lt/q0;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)V

    invoke-virtual {v0, v1}, Lt/q0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private measureMaxContentWidth()I
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "si__HistoryNavigationPopup"

    const-string v0, "measureMaxContentWidth, mAdapter == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mContext:Landroid/content/Context;

    const v3, 0x7f070659

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070658

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    move v5, v1

    :goto_0
    if-ge v1, v4, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    invoke-virtual {v7, v1, v6}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->getViewForMeasure(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-lt v7, v0, :cond_1

    return v0

    :cond_1
    if-le v7, v5, :cond_2

    move v5, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method private onLayoutChanged()V
    .locals 2

    const-string v0, "si__HistoryNavigationPopup"

    const-string v1, "HistoryNavigationPopup: onLayoutChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->measureMaxContentWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lt/q0;->setWidth(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->onUpdatePopupView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->show()V

    :cond_0
    return-void
.end method

.method private onUpdatePopupView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p0, "si__HistoryNavigationPopup"

    const-string v0, "onUpdatePopupView, anchorView == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->setPhoneBasicLayout()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lt/q0;->setVerticalOffset(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt/q0;->setHorizontalOffset(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lt/q0;->setHeight(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->setPhoneBasicLayout()V

    :goto_0
    return-void
.end method

.method private setPhoneBasicLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lt/q0;->setVerticalOffset(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070657

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lt/q0;->setHorizontalOffset(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt/q0;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    invoke-virtual {p0, p1}, Lt/q0;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public show(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p0, "si__HistoryNavigationPopup"

    const-string p1, "show, anchorView == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->initPopupView()V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->setAnchorView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    invoke-virtual {p1, p2}, Lt/q0;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->measureMaxContentWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lt/q0;->setWidth(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->onUpdatePopupView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mPopup:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->show()V

    return-void
.end method
