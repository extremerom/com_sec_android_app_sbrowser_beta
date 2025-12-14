.class public Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;

.field protected mNoticeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/notice/NoticeListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/notice/NoticeListItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mNoticeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDateByPosition(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mNoticeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->getDate()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mNoticeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;

    return-object p0
.end method

.method public getTextByPosition(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mNoticeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleByPosition(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mNoticeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public inflateViewHolder(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p0, 0x7f0e0527

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getItemCount()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p2, v3, :cond_2

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/h1;->setIsRecyclable(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->setBackgroundResourceForItems(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mNoticeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->bindData(II)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->inflateViewHolder(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;)V

    return-object p2
.end method

.method public setBackgroundResourceForItems(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f080236

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;

    return-void
.end method
