.class Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mAdapterListener:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

.field private mDragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

.field protected mIsLongPressDragging:Z

.field mIsShiftPressed:Z

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


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mPrevSelectedIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mIsLongPressDragging:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mIsShiftPressed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDragList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDragList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mPrevSelectedIndex:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSPenSelectionEndIndex:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSPenSelectionStartIndex:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getAbsolutePosition(II)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    :goto_0
    return p2
.end method

.method private getChildViewAt(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mPrevSelectedIndex:I

    return-void
.end method

.method private handleShiftClick(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->getSelectedItemPosition(IILcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mPrevSelectedIndex:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    :cond_0
    move v1, v0

    :goto_0
    if-gt v1, p1, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->setCheckByShiftClick(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    move-result-object p0

    if-lt p2, p1, :cond_2

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr p1, v0

    add-int/lit8 p2, p1, 0x1

    :goto_1
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSPenSelectionEndIndex:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSPenSelectionStartIndex:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->getAbsolutePosition(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->getChildViewAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->handleShiftClick(II)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;Landroid/widget/CheckBox;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->setCheckItemForNonGED(Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;Landroid/widget/CheckBox;I)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->setHeightToShift(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->startActionMode()V

    return-void
.end method

.method private setCheckByShiftClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->setIsSelected(Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setNotificationSelectedItemCount()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setCheckItemForNonGED(Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;Landroid/widget/CheckBox;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->setIsSelected(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setNotificationSelectedItemCount()V

    return-void
.end method

.method private setHeightToShift(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getCounter()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mActivity:Landroid/app/Activity;

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setHeightToShift(I)V

    return-void
.end method

.method private startActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->startDeleteMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setNotificationSelectedItemCount()V

    return-void
.end method


# virtual methods
.method public clearLists()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mDragList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public getAdapterListener()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

    return-object p0
.end method

.method public getSelectedItemPosition(IILcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)I
    .locals 2

    const/4 p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->checkExpanded(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildrenCount(I)I

    move-result v1

    add-int/2addr v1, p0

    move p0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p1

    add-int/2addr p2, p0

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mIsShiftPressed:Z

    return-void
.end method

.method public resetPrevSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mPrevSelectedIndex:I

    return-void
.end method

.method public setSPenMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string p0, "WebPushNotiListeners"

    const-string v0, "[SPenSelect] SitesSearchListView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method public setSeslMultiSelectedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method
