.class public Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;


# instance fields
.field protected mAdapter:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

.field protected mAnchorView:Landroid/view/View;

.field protected mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mLaunchType:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

.field protected mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected mPopup:Landroid/widget/ListPopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFocusLayoutType()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mLaunchType:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    sget-object v1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->MAIN_VIEW:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private measureMaxContentWidth()I
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SearchEngineBaseUI"

    const-string v0, "measureMaxContentWidth, mAdapter == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071615

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    move v5, v1

    :goto_0
    if-ge v1, v4, :cond_3

    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    invoke-virtual {v8, v1, v6, v7}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

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
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    add-int/2addr v5, p0

    :cond_4
    return v5
.end method


# virtual methods
.method public dismissPopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    return-object p0
.end method

.method public init(Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x10102ff

    const v2, 0x7f150307

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    const v0, 0x7f150308

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoListPopupWindow;->getPopupWindow(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SearchEngineBaseUI"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAnchorView:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->isFocusLayoutType()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$4;->$SwitchMap$com$sec$android$app$sbrowser$searchengine$SearchEngineConstant$LaunchType:[I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mLaunchType:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_3

    if-ne v2, p2, :cond_2

    const p2, 0x7f070f58

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    :cond_3
    const p2, 0x7f070f57

    :goto_2
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    const p2, 0x800003

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f080547

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$1;-><init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance p2, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$2;-><init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance p2, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$3;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$3;-><init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setLaunchType(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mLaunchType:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    return-void
.end method

.method public showPopup(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1, v7}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->measureMaxContentWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAnchorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public updatePopupView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->measureMaxContentWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->isFocusLayoutType()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
