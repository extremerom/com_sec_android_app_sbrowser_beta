.class public Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;
    }
.end annotation


# instance fields
.field private final mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

.field private mActivity:Landroid/app/Activity;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

.field private mDragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

.field private mExpandList:Landroidx/recyclerview/widget/RecyclerView;

.field private mHistoryGroupItemTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

.field private mPenDragEndIndex:I

.field private mPenDragStartIndex:I

.field private mSelectedPosition:I

.field private final mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDragList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDragList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    return-object p0
.end method

.method private compareCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 2

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private compareDate(Ljava/util/Date;Ljava/util/Date;)I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->compareCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mPenDragEndIndex:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mPenDragStartIndex:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mSelectedPosition:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mPenDragEndIndex:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mPenDragStartIndex:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mSelectedPosition:I

    return-void
.end method


# virtual methods
.method public appBarHeightChanged(ILandroid/view/ViewGroup;Landroid/widget/LinearLayout;)V
    .locals 1

    if-eqz p2, :cond_3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->getPaneHeight()I

    move-result p2

    sub-int/2addr p1, p2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->A(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object p0

    iget p2, p0, Landroid/graphics/Insets;->top:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    :cond_2
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p0, p2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public backPressed(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->finishDeleteMode()V

    return v2

    :cond_1
    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hideSearchView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->menuItemVisibility(Z)V

    return v2

    :cond_2
    return v1
.end method

.method public calculateHistoryNumPerGroup(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    new-instance v2, Landroid/webkit/DateSorter;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x5c

    new-array v3, v3, [I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryGroupItemTimeMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v8, v5

    move v9, v8

    :goto_0
    if-ge v8, v4, :cond_7

    const/16 v10, 0x5b

    if-ne v6, v10, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-virtual {v10}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, p2

    invoke-virtual {v14, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object/from16 v14, p2

    const-wide/16 v10, 0x0

    :goto_1
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v10

    const-wide/32 v17, 0x36ee80

    cmp-long v13, v15, v17

    if-gtz v13, :cond_2

    move v13, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v10, v11}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v13

    const/4 v15, 0x2

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    :goto_2
    if-le v13, v6, :cond_3

    add-int/lit8 v9, v9, 0x1

    move v6, v13

    :cond_3
    const/4 v13, 0x3

    if-ge v6, v13, :cond_4

    aget v10, v3, v6

    add-int/lit8 v10, v10, 0x1

    aput v10, v3, v6

    goto :goto_5

    :cond_4
    if-eqz v7, :cond_6

    invoke-direct {v0, v12, v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->compareDate(Ljava/util/Date;Ljava/util/Date;)I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    :goto_4
    iget-object v7, v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryGroupItemTimeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v12

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_6
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {v1, v9}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateGroupCount(I)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateHistoryItemNums([I)V

    return-void

    :catch_0
    const-string v0, "HistoryBaseUiHelper"

    const-string v1, "IllegalArgumentException thrown from DateSorter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteButtonClicked(Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "det"

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->getSALoggingGroupDetail([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "cnt"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "311"

    const-string v0, "3211"

    invoke-static {p2, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->selectAll()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->deleteHistoryData(Z)V

    :cond_0
    return-void
.end method

.method public destroy(Landroidx/recyclerview/widget/N0;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->onDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDragList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    :cond_2
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mMenu:Landroid/view/Menu;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->removeObserver()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public dialogDismissed(Z)V
    .locals 2

    const-string v0, "HistoryBaseUiHelper"

    const-string v1, "[onDialogDismissed] Confirm Dialog - User Dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->selectAllHistoryItem(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->setByPassActionMode(Z)V

    :cond_1
    const-class p1, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->hasInstance(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->deleteSearchData()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getRelevantHeaderPosition(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->checkExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getSALoggingGroupDetail([I)Ljava/lang/String;
    .locals 5

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    if-le v1, v4, :cond_0

    move v2, v4

    :cond_0
    aget v3, p1, v0

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    const-string p0, "All"

    return-object p0

    :cond_3
    if-eqz v2, :cond_4

    const-string p0, "Combination"

    return-object p0

    :cond_4
    aget p0, p1, p0

    if-eqz p0, :cond_5

    const-string p0, "LastHour"

    return-object p0

    :cond_5
    aget p0, p1, v4

    if-eqz p0, :cond_6

    const-string p0, "Today"

    return-object p0

    :cond_6
    const/4 p0, 0x2

    aget p0, p1, p0

    if-eqz p0, :cond_7

    const-string p0, "Yesterday"

    return-object p0

    :cond_7
    const-string p0, "All time"

    return-object p0
.end method

.method public handleDelete(Landroid/view/KeyEvent;ZZZLjava/util/ArrayList;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "ZZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemCount()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_2

    if-nez p2, :cond_2

    if-lez v1, :cond_2

    const-string p1, "HistoryBaseUiHelper"

    const-string p2, "History BT keyboard  Delete by pressing delete key"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p5, p4, p6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->showConfirmDialog(Ljava/util/ArrayList;ZZ)V

    return v4

    :cond_2
    return v2
.end method

.method public handleDpadDown(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->shouldShowVideoHistory(Landroid/app/Activity;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isFocusedOnToolbar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mVideoHistoryPane:Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->requestFocus()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public handleKeyCodeA(Landroid/view/KeyEvent;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updatePrevSelectedIndex()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->selectAllHistoryItem(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateHistorySelectedItemCount()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mMenu:Landroid/view/Menu;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->setMenuTitle(Landroid/view/Menu;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handleShiftClick(IIILcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemPosition(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p3

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getTotalItemCount()I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->visibleHeaderCount(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)I

    move-result v4

    add-int/2addr v4, p1

    :goto_0
    if-gt v0, p3, :cond_a

    if-gt p2, v4, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v7, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->checkExpanded(I)Z

    move-result p1

    if-nez p1, :cond_2

    sub-int p1, p3, v0

    add-int/2addr p1, v3

    sub-int/2addr p1, v6

    if-ltz p1, :cond_1

    invoke-interface {p4, v3, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;->updateHeaderCheck(ZI)V

    add-int/2addr v0, v6

    goto :goto_2

    :cond_1
    :goto_1
    if-gt v0, p3, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateCheckByShiftClick(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateCheckByShiftClick(II)V

    add-int/lit8 p2, p2, 0x1

    :cond_4
    :goto_3
    add-int/2addr v0, v3

    goto :goto_0

    :cond_5
    :goto_4
    if-lt p3, v0, :cond_a

    if-ltz p2, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result p1

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result p1

    if-eq p1, v1, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCount(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->checkExpanded(I)Z

    move-result p1

    if-nez p1, :cond_7

    sub-int p1, p3, v5

    sub-int v5, p1, v0

    add-int/2addr v5, v3

    if-ltz v5, :cond_6

    invoke-interface {p4, v3, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;->updateHeaderCheck(ZI)V

    move p3, p1

    goto :goto_6

    :cond_6
    :goto_5
    if-lt p3, v0, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateCheckByShiftClick(II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 p2, p2, -0x1

    add-int/2addr p3, v3

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateCheckByShiftClick(II)V

    add-int/lit8 p2, p2, -0x1

    :cond_9
    :goto_7
    add-int/2addr p3, v1

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public resetLayoutHeight(Landroid/widget/LinearLayout;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setCheckByShiftClick(IILjava/util/ArrayList;Ljava/util/HashMap;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget v0, p5, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aput v0, p5, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1, p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateSelectedItemsCountByCategory([I)V

    invoke-virtual {p2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setNonShareableUrl(Ljava/lang/String;Z)V

    invoke-virtual {p2, v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateHistorySelectedItemCount()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setExpAdapter(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryGroupItemTimeMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setHistoryHeaderMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public setHistoryUIDelegate(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mHistoryUIDelegate:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mMenu:Landroid/view/Menu;

    return-void
.end method

.method public setSeslLongPressMultiSelectionListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method

.method public setSeslMultiSelectedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method public showConfirmDialog(Ljava/util/ArrayList;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-lez p1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const v0, 0x7f12002c

    invoke-virtual {p2, v0, p1, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "showConfirmDialog "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HistoryBaseUiHelper"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "311"

    const-string p3, "3212"

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->showConfirmDialog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startDeleteMode(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mMenuHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->setSearchMenuEnabled(Landroid/view/Menu;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->menuItemVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->setActionModeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hideSearchView()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->startDeleteModeVarsUpdate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->addObserver()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->updateActionbarLayout()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->selectAllCheckBoxAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->checkBoxAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->refreshMenus()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    return-void
.end method

.method public updateActionbarLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mExpAdapter:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mActionBarHelper:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->initialize()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->menuItemVisibility(Z)V

    return-void
.end method

.method public visibleHeaderCount(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/16 v1, 0x5c

    if-ge p0, v1, :cond_1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
