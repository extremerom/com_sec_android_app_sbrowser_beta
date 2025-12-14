.class public Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

.field private final mFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMenuListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

.field private mPopup:Lt/q0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mMenuListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->onItemClickAction(I)V

    return-void
.end method

.method private initPopupView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BookmarkBarFolderPopup"

    const-string v1, "initPopupView"

    invoke-static {v0, v1}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lt/q0;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lt/q0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lt/q0;->setModal(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lt/q0;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$1;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;)V

    invoke-virtual {v0, v1}, Lt/q0;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$2;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;)V

    invoke-virtual {v0, v1}, Lt/q0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private measureMaxContentWidth()I
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BookmarkBarFolderPopup"

    const-string v0, "measureMaxContentWidth, mAdapter == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mContext:Landroid/content/Context;

    const v3, 0x7f070200

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070203

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    move v5, v1

    :goto_0
    if-ge v1, v4, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    invoke-virtual {v7, v1, v6}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->getViewForMeasure(ILandroid/view/View;)Landroid/view/View;

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

.method private onItemClickAction(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->ADD_TO_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->EDIT_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->UPPER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5825"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5802"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->setBookmarkList(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->onLayoutChanged()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5801"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;->onItemClicked(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->dismiss()V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mFolderListener:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;->onItemClicked(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->dismiss()V

    :goto_2
    return-void
.end method

.method private onLayoutChanged()V
    .locals 2

    const-string v0, "BookmarkBarFolderPopup"

    const-string v1, "BookmarkBarFolderPopup : onLayoutChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->measureMaxContentWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lt/q0;->setWidth(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->show()V

    :cond_0
    return-void
.end method

.method private setAnchorView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    invoke-virtual {p0, p1}, Lt/q0;->setAnchorView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

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

.method public show(Ljava/lang/Long;ILandroid/view/View;Z)V
    .locals 11

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->initPopupView()V

    new-instance v10, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mMenuListener:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;

    move-object v0, v10

    move v4, p2

    move v5, p4

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;-><init>(Landroid/content/Context;JIZLandroid/view/LayoutInflater;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;Landroid/view/View;)V

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    new-instance p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$3;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$3;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;)V

    invoke-virtual {v10, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->setAnchorView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mAdapter:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderListAdapter;

    invoke-virtual {p1, p2}, Lt/q0;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->measureMaxContentWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lt/q0;->setWidth(I)V

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    const p2, 0x800005

    invoke-virtual {p1, p2}, Lt/q0;->setDropDownGravity(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701fc

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lt/q0;->setHorizontalOffset(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    const p2, 0x800003

    invoke-virtual {p1, p2}, Lt/q0;->setDropDownGravity(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lt/q0;->setHorizontalOffset(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701fe

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lt/q0;->setVerticalOffset(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    invoke-virtual {p1}, Lt/q0;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->mPopup:Lt/q0;

    invoke-virtual {p1}, Lt/q0;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$4;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$4;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_1
    return-void
.end method
