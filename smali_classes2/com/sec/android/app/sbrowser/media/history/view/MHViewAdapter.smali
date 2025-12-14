.class public Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MHViewAdapter"

.field private static final sModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionModeCallback:Lcom/sec/android/app/sbrowser/common/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;

.field private mSelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->sModelList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V
    .locals 1
    .param p2    # Ljava/util/concurrent/CopyOnWriteArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mActionModeCallback:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->lambda$setHoverListener$1(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getRowView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    return-void
.end method

.method private static synthetic lambda$setHoverListener$1(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-nez p2, :cond_3

    return p1

    :cond_3
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_0
    return p1
.end method

.method private setHoverListener(Landroid/widget/TextView;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/media/history/view/d;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/d;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private setItemsBackground(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    if-ne p3, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getRowView()Landroid/view/View;

    move-result-object p3

    const v2, 0x7f080081

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 p0, 0xf

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 p0, 0xc

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_2

    :cond_3
    const p0, 0x7f060bd0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getDivider()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p0, 0x3

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getDivider()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :goto_2
    return-void
.end method

.method private setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const p2, 0x7f080237

    goto :goto_0

    :cond_0
    const p2, 0x7f080236

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addItemToSelectedList(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearModelList()V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->sModelList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public deleteSelectedItems()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->sModelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->sModelList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->sModelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->deleteMediaHistoryDataByIndex(Landroid/content/Context;Ljava/util/ArrayList;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public emptySelectedItemList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getHistoryList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getItem(I)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getIndex()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mListener:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;

    return-object p0
.end method

.method public getSelectedItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSelectedItemsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    return-object p0
.end method

.method public insertListItem(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->setThumbnail(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->setTitleText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->setTitleViewLines(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDuration()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->timeMSToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->setTimeText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->setDomainText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->setHoverListener(Landroid/widget/TextView;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getDomainView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->setHoverListener(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->setItemsBackground(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mActionModeCallback:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/view/c;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/c;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mActionModeCallback:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemsList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eq v3, p0, :cond_5

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_2

    :cond_4
    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p2, 0x7f0e04bc

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;)V

    return-object p2
.end method

.method public selectAllItems(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mListener:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;

    return-void
.end method

.method public updateHistoryList()V
    .locals 6

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->sModelList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeRemoved(II)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->sModelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mHistoryDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/u0;->notifyItemRemoved(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateItemSelectedList(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->mSelectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
