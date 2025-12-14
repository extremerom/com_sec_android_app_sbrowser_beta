.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->setSeslMultiSelectedListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->m(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->getNotificationDataResult()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->getAdapter()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->n(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChildPosition(I)I

    move-result p5

    iput p5, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedPosition:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p5, "onItemSelected - position = "

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    iget p5, p5, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedPosition:I

    const-string v0, "NotificationListeners"

    invoke-static {p1, p5, v0}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    iget p5, p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedPosition:I

    if-ltz p5, :cond_d

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->m(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->getNotificationDataResult()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p5, p1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->m(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->getNotificationDataResult()Ljava/util/List;

    move-result-object p1

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    iget p5, p5, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mSelectedPosition:I

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    if-eqz p1, :cond_b

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result p5

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    if-lez p3, :cond_2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->setIsSelected(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->isShowingActionMode()Z

    move-result p5

    if-eqz p5, :cond_5

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->setIsSelected(Z)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result p5

    if-nez p5, :cond_8

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->isShowingActionMode()Z

    move-result p5

    if-eqz p5, :cond_8

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_7

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->setIsSelected(Z)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->isShowingActionMode()Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_9

    if-lez p3, :cond_9

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->l(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->setIsSelected(Z)V

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->e(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    const/4 p4, -0x1

    if-ne p1, p4, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->o(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChild(I)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setNotificationSelectedItemCount()V

    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    const p0, 0x7f0b082d

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    nop

    :cond_d
    :goto_3
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->o(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsLongPressDragging:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsLongPressDragging:Z

    return-void
.end method
