.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->setSeslLongPressMultiSelectionListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getSelectedList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getSelectedItemsCountByCategory()[I

    move-result-object p4

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getHistoryItemsMap()Ljava/util/HashMap;

    move-result-object p5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildPosition(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->k(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onItemSelected - position = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HistoryBaseUiHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->getHistoryItemList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-lez p3, :cond_2

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->isInActionMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v1

    goto :goto_0

    :cond_4
    move p1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v2

    :goto_2
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->isInActionMode()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v1

    goto :goto_3

    :cond_7
    move p1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->isInActionMode()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    if-lez p3, :cond_9

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    :cond_a
    move p1, v2

    :goto_4
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p5

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setNonShareableUrl(Ljava/lang/String;Z)V

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->getIsFirstLongPressIndex()I

    move-result p1

    const/4 p5, -0x1

    if-ne p1, p5, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateIsFirstLongPressIndex(I)V

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object p1

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result p3

    invoke-virtual {p5, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result p3

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateHistorySelectedItemCount()V

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    const p5, 0x7f0b0b66

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result p5

    invoke-virtual {p2, p5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_d

    aget p1, p4, p3

    add-int/2addr p1, v1

    aput p1, p4, p3

    goto :goto_6

    :cond_d
    aget p1, p4, p3

    if-lez p1, :cond_e

    sub-int/2addr p1, v1

    aput p1, p4, p3

    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateHistorySelectedItemCount()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupSelectedState(I)Z

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p2

    aget p4, p4, p3

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result p5

    if-ne p4, p5, :cond_f

    goto :goto_7

    :cond_f
    move v1, v2

    :goto_7
    invoke-virtual {p2, p3, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupSelectedState(IZ)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupSelectedState(I)Z

    move-result p2

    if-eq p2, p1, :cond_12

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->d(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->getRelevantHeaderPosition(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/h1;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->getHeaderCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mIsGroupSelected:[Z

    aget-boolean p0, p0, p3

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_9

    :cond_10
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->getRelevantHeaderPosition(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    goto :goto_9

    :cond_11
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onItemSelected - invalid position = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_9
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateIsFirstLongPressIndex(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateIsLongPressDragging(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;->updateIsLongPressDragging(Z)V

    return-void
.end method
