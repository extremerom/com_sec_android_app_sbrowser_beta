.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAdapterListener:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

.field private mDragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExpAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

.field private mExpandList:Landroidx/recyclerview/widget/RecyclerView;

.field private mIsFirstLongPressIndex:I

.field protected mIsLongPressDragging:Z

.field private mIsShiftPressed:Z

.field private mNotificationUIDelegate:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;

.field private final mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

.field private mPrevSelectedIndex:I

.field private mSPenSelectionEndIndex:I

.field private mSPenSelectionStartIndex:I

.field private final mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectedPosition:I

.field private mUiController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsFirstLongPressIndex:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsLongPressDragging:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mPrevSelectedIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mDragList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mUiController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mNotificationUIDelegate:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mDragList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsFirstLongPressIndex:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsShiftPressed:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mNotificationUIDelegate:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;

    return-object p0
.end method

.method private getChildViewAt(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    return-object p0
.end method

.method private handleShiftClick(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->getSelectedItemPosition(IILcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)I

    move-result p1

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mPrevSelectedIndex:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    move p2, p1

    :cond_0
    :goto_0
    if-ge p2, p1, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->setCheckByShiftClick(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mPrevSelectedIndex:I

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSPenSelectionEndIndex:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSPenSelectionStartIndex:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mUiController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsFirstLongPressIndex:I

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mPrevSelectedIndex:I

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSPenSelectionEndIndex:I

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSPenSelectionStartIndex:I

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->getChildViewAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private setCheckByShiftClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mUiController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->getNotificationDataResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mUiController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->getNotificationDataResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mUiController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->getNotificationDataResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->setIsSelected(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setNotificationSelectedItemCount()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setCheckItemForNonGED(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;Landroid/widget/CheckBox;)V
    .locals 1

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->setIsSelected(Z)V

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setNotificationSelectedItemCount()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->handleShiftClick(II)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->setCheckItemForNonGED(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;Landroid/widget/CheckBox;)V

    return-void
.end method


# virtual methods
.method public clearSelectedList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAdapterListener()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

    return-object p0
.end method

.method public getSelectedItemPosition(IILcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge p0, p1, :cond_1

    invoke-virtual {p3, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->checkExpanded(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChildrenCount(I)I

    move-result v1

    add-int/2addr v1, v0

    move v0, v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p1

    add-int/2addr p2, v0

    return p2
.end method

.method public getSelectedList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mDragList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsShiftPressed:Z

    return-void
.end method

.method public resetPrevSelectedIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mPrevSelectedIndex:I

    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    return-void
.end method

.method public setHeightToShift(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    goto :goto_0

    :cond_1
    sub-int v4, v0, v2

    if-le v3, v4, :cond_2

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setHeightToShift(I)V

    return-void
.end method

.method public setNotificationDelegate(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mNotificationUIDelegate:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;

    return-void
.end method

.method public setSPenMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method public setSeslMultiSelectedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method
