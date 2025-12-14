.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$2800(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "context menu for position "

    const-string p3, "HistoryBaseUi"

    invoke-static {p4, p2, p3}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->I(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Landroid/view/ContextMenu;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onChildClick(Landroid/view/View;I)Z
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->r(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$2400(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result v5

    const/16 v6, 0x5c

    const v7, 0x7f0b0b66

    if-eqz v5, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->s(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->t(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-nez v7, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2, v0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->F(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;II)V

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    move p1, v1

    :goto_0
    if-ge p1, v6, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object v5

    aget v5, v5, p1

    if-ne v3, v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupSelectedState(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->o(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    xor-int/2addr v7, v4

    invoke-virtual {v3, v7}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    if-lez p2, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v1

    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setNonShareableUrl(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHistorySelectedItemCount()V

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v3, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->G(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)Z

    move-result v5

    invoke-virtual {v3, p1, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHeightToShift(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object p1

    aget v3, p1, v2

    add-int/2addr v3, v4

    aput v3, p1, v2

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$2502(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object p1

    aget p1, p1, v2

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object p1

    aget v3, p1, v2

    sub-int/2addr v3, v4

    aput v3, p1, v2

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object v3

    aget v3, v3, v2

    if-ne p1, v3, :cond_8

    move v1, v4

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupSelectedState(I)Z

    move-result p1

    if-eq p1, v1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupSelectedState(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$2600(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->getRelevantHeaderPosition(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/h1;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->getHeaderCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->mIsGroupSelected:[Z

    aget-boolean v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->getRelevantHeaderPosition(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    :cond_a
    :goto_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemPosition(II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    goto/16 :goto_8

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->s(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result v2

    if-nez v2, :cond_c

    sput-object v3, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sLastClickedHistoryItem:Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result p1

    sput p1, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sGroupPosition:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupCount()I

    move-result p1

    sput p1, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sTotalGroup:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object p1

    invoke-virtual {v3}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->launchSelectedUrl(Ljava/lang/String;I)V

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->A(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->L(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2, v0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->F(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;II)V

    if-eqz p1, :cond_d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemPosition(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$2700(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    move p1, v1

    :goto_6
    if-ge p1, v6, :cond_f

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object v2

    aget v2, v2, p1

    if-ne v0, v2, :cond_e

    move v0, v4

    goto :goto_7

    :cond_e
    move v0, v1

    :goto_7
    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupSelectedState(IZ)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_f
    :goto_8
    return v4
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1600(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1700(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1800(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3208"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1900(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$2000(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->r(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->G(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)Z

    move-result v4

    invoke-virtual {v2, p1, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHeightToShift(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p1, v4, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$2100(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getItemViewType(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->groupPositionToBin(I)I

    move-result v4

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->A(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getGroupPosition(I)I

    move-result v6

    invoke-virtual {v5, v6, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getSelectedItemPosition(II)I

    move-result v5

    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    const v2, 0x7f0b0b66

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object p1

    aget v2, p1, v4

    add-int/2addr v2, v3

    aput v2, p1, v4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object v2

    aget v2, v2, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v5

    if-ne v2, v5, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {p1, v4, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupSelectedState(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$2200(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper;->startDeleteMode(Ljava/util/ArrayList;Z)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->o(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setNonShareableUrl(Ljava/lang/String;Z)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHistorySelectedItemCount()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$2300(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    return v3

    :cond_6
    return v1

    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->k(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;->onChildClick(Landroid/view/View;I)Z

    return v3

    :cond_8
    :goto_1
    return v1
.end method

.method public updateHeaderCheck(ZI)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->checkExpanded(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getChildrenCountByGroup(I)I

    move-result v1

    add-int v5, v2, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_1
    if-gt v2, v5, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getAbsoluteChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getAbsoluteChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->setIsSelected(Z)V

    :cond_3
    if-eqz p1, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v7, v6

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    move v7, v0

    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getAbsoluteChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->getAbsoluteChild(I)Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setNonShareableUrl(Ljava/lang/String;Z)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->setGroupSelectedState(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object v2

    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    aput v0, v2, p2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHistorySelectedItemCount()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->checkExpanded(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    move-result-object p0

    add-int/2addr v3, v6

    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(II)V

    :cond_a
    return-void
.end method
