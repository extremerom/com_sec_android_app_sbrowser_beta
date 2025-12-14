.class Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;I)Z
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsLongPressDragging:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getGroupPosition(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChild(I)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->isShowingActionMode()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    const v3, 0x7f0b082d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->f(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->i(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)I

    move-result p1

    if-ne p1, v8, :cond_1

    if-nez v6, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->p(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->t(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->setHeightToShift(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1, v1, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->u(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;Landroid/widget/CheckBox;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    if-eqz v5, :cond_4

    move p2, v8

    :cond_4
    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->p(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->f(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getIsRead()I

    move-result p1

    if-ne p1, v4, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->g(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;->updateDB(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;)V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->g(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;

    move-result-object p0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getPersID()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;->launchSelectedUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->o(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->p(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->t(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->p(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->startActionMode()V

    :cond_8
    :goto_1
    return v4
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->d(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getChild(I)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->isShowingActionMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    iget-boolean v4, v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->mIsLongPressDragging:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->o(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->p(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;I)V

    if-eqz p1, :cond_2

    const p2, 0x7f0b082d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->setIsSelected(Z)V

    :cond_1
    invoke-virtual {p2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->setHeightToShift(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->startDeleteMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->h(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setNotificationSelectedItemCount()V

    return v3

    :cond_3
    return v2

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;->a(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationListeners;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;->onChildClick(Landroid/view/View;I)Z

    return v3

    :cond_5
    return v2
.end method
