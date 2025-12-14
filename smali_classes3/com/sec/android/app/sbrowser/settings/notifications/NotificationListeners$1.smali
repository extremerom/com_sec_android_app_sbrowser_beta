.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->setSPenMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->getAdapter()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->n(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->s(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;II)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->r(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->q(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->d(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->r(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->s(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;II)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->m(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->getNotificationItemList()Ljava/util/List;

    move-result-object p2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->d(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->q(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->k(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->j(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->k(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->j(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    if-ne p1, v0, :cond_6

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->k(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->d(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->d(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getNumberOfBins()I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr v4, v1

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->r(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->j(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->d(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->d(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getNumberOfBins()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getNumberOfBins()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->q(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->j(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->k(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->k(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->j(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->r(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->q(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->k(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->j(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result v0

    if-gt p1, v0, :cond_b

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChildPosition(I)I

    move-result v0

    if-ltz v0, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->setIsSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_9
    :goto_1
    return-void

    :catch_0
    const-string v0, "NotificationListeners"

    const-string v3, "[SPenSelect] Invalid Index"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_e

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->m(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->getNotificationDataResult()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->isShowingActionMode()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->startDeleteMode()V

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setTouchActionDowned(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setNotificationSelectedItemCount()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_e
    :goto_3
    return-void
.end method
