.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->setSeslMultiSelectedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->j(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->d(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->j(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getSelectedList()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getSelectedItemsCountByCategory()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getHistoryItemsMap()Ljava/util/HashMap;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->d(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->g(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result p1

    if-eq p1, v2, :cond_c

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->g(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {p1, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->j(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->g(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result p1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v5

    if-ne v5, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->g(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v6

    if-le v5, v6, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->g(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v2

    :cond_4
    :goto_0
    if-gt p1, v2, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v5, v4, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildPosition(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->k(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getAbsoluteChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getAbsoluteChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_5

    aget v6, v0, v5

    sub-int/2addr v6, v4

    aput v6, v0, v5

    goto :goto_1

    :cond_5
    aget v6, v0, v5

    add-int/2addr v6, v4

    aput v6, v0, v5

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateSelectedItemsCountByCategory([I)V

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v5

    if-ltz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onMultiSelectStop - invalid position: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HistoryBaseUiHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_a
    move p1, v3

    :goto_4
    const/16 v2, 0x5c

    if-ge p1, v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v2

    aget v5, v0, p1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v6

    if-ne v5, v6, :cond_b

    move v5, v4

    goto :goto_5

    :cond_b
    move v5, v3

    :goto_5
    invoke-virtual {v2, p1, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupSelectedState(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_9

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->isInActionMode()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getTouchActionDowned()Z

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->startDeleteMode(Ljava/util/ArrayList;Z)V

    :cond_e
    move v0, v3

    :goto_6
    if-ge v0, p1, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    if-ltz v6, :cond_f

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v2, v3}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    goto :goto_7

    :cond_10
    if-ltz v6, :cond_11

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getAbsoluteChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getAbsoluteChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setNonShareableUrl(Ljava/lang/String;Z)V

    :cond_11
    invoke-virtual {v2, v4}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    :cond_12
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_13
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->isInActionMode()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateOptionsMenuSelected(Z)V

    goto :goto_8

    :cond_14
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :goto_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateGetTouchActionDowned(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateHistorySelectedItemCount()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->refreshMenus()V

    :cond_15
    :goto_9
    return-void
.end method
