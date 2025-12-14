.class public Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;,
        Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mAdapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/u0;",
            ">;"
        }
    .end annotation
.end field

.field private mTheme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAdapter(ILandroidx/recyclerview/widget/u0;)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAdapter(Landroidx/recyclerview/widget/u0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getItemCount()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u0;->getItemId(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v2

    if-ge p2, v2, :cond_5

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    if-ne v2, v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_1

    :cond_0
    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v3

    if-ne p2, v2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_1

    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :goto_1
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/u0;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mTheme:I

    const/4 p2, 0x4

    if-ne p0, p2, :cond_3

    const p0, 0x7f0604d9

    goto :goto_2

    :cond_3
    const p0, 0x7f0604c8

    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_4
    iget-object p0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const p1, 0x7f060c06

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    return-void

    :cond_5
    sub-int/2addr p2, v2

    goto :goto_0

    :cond_6
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0
.end method

.method public setTheme(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->mTheme:I

    return-void
.end method
