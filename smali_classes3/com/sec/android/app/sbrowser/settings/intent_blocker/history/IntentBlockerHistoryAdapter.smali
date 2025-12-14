.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;
.super Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$HeaderViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$ItemViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;I)Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;->getDataFromIndex(I)Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;I)Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;->getDataFromIndex(I)Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;

    move-result-object p0

    return-object p0
.end method

.method private bindAppInfoViewHolder(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;)V
    .locals 0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->getTotalCount()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->setTotalCount(I)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->getBlockedCount()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->setBlockedCount(I)V

    return-void
.end method

.method private bindHeaderViewHolder(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$HeaderViewHolder;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;->getHeaderText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$HeaderViewHolder;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private bindItemViewHolder(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$ItemViewHolder;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;I)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$ItemViewHolder;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$ItemViewHolder;->setDate(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->isBlocked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$ItemViewHolder;->setBlocked(Z)V

    iget-object p2, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->isLastChildInGroup(I)Z

    move-result v0

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->isFirstChildInGroup(I)Z

    move-result p0

    invoke-static {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V

    return-void
.end method

.method private getAppInfoViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e0465

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;)V

    return-object v0
.end method

.method private getEmptyViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 1

    const p0, 0x7f0e0468

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method private getHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p0, 0x7f0e0466

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$HeaderViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method private getItemViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e0468

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$ItemViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;)V

    return-object v0
.end method

.method private isFirstChildInGroup(I)Z
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-gez v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p0

    if-ne p0, v2, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method private isLastChildInGroup(I)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v3, p1, 0x1

    if-le v3, v0, :cond_1

    return v2

    :cond_1
    if-eq p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p0

    if-ne p0, v2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p0

    return p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;->getDataFromIndex(I)Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$ItemViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->bindItemViewHolder(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$ItemViewHolder;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;I)V

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$HeaderViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->bindHeaderViewHolder(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$HeaderViewHolder;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;)V

    goto :goto_0

    :cond_3
    move-object p2, p1

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->bindAppInfoViewHolder(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->getRowView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
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

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->getEmptyViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->getItemViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->getHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->getAppInfoViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0
.end method

.method public setListData(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/CopyOnWriteArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;

    return-void
.end method
