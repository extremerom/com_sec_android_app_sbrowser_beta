.class Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;I)Z
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mIsLongPressDragging:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChild(I)Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupPosition(I)I

    move-result v3

    if-eqz p1, :cond_6

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v4, v3, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->k(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;II)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->isActionMode()Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f0b0234

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    iget-boolean v7, v6, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mIsShiftPressed:Z

    if-eqz v7, :cond_3

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->d(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->h(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1, v3, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->m(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;II)V

    goto :goto_0

    :cond_3
    invoke-static {v6, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->o(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1, v1, v5, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->n(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;Landroid/widget/CheckBox;I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p0, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->h(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mIsShiftPressed:Z

    if-nez v1, :cond_5

    const p0, 0x7f0b0c31

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    goto :goto_1

    :cond_5
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->h(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1, v3, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->m(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->h(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->p(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v2
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setDummyViewVisiblity(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChild(I)Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->isActionMode()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mIsLongPressDragging:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getItemViewType(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupPosition(I)I

    move-result v0

    invoke-static {v2, v0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->k(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;II)I

    move-result p2

    invoke-static {v2, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->h(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    const p2, 0x7f0b0234

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->setIsSelected(Z)V

    invoke-virtual {p2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->o(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->startDeleteMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setNotificationSelectedItemCount()V

    return v4

    :cond_2
    return v2

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

    if-nez v0, :cond_4

    return v4

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;->onChildClick(Landroid/view/View;I)Z

    return v4

    :cond_5
    return v2
.end method
