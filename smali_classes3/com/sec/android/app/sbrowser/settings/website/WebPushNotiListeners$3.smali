.class Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->setSPenMultiSelectionListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->l(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;II)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->j(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->i(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->j(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->isSwitchChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v1, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->l(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->i(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SPenSelect] GroupCount:: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebPushNotiListeners"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->f(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->e(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result p1

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->f(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->e(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result p1

    if-ne p1, p2, :cond_7

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getWebPushListSize()I

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->f(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result v3

    if-ne v3, p2, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupCount()I

    move-result v4

    add-int/2addr v4, p1

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->j(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->e(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result v3

    if-ne v3, p2, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->c(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupCount()I

    move-result v4

    add-int/2addr v4, p1

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupCount()I

    move-result v4

    add-int/2addr v4, p1

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->i(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->e(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->f(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result v3

    if-ge p1, v3, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->f(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->e(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->j(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->i(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;I)V

    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildInfoList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->f(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result v3

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->e(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)I

    move-result v5

    if-gt v3, v5, :cond_f

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getViewType(I)Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getType()I

    move-result v6

    if-ne v6, v1, :cond_e

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->isActionMode()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->startDeleteMode()V

    :cond_a
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->getDataIndex()I

    move-result v4

    if-ltz v4, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_b

    goto :goto_2

    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getCounter()I

    move-result v5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, p2

    goto :goto_1

    :cond_c
    move v6, v1

    :goto_1
    add-int/2addr v5, v6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->setIsSelected(Z)V

    move v4, v5

    goto :goto_3

    :cond_d
    :goto_2
    return-void

    :cond_e
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_f
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setCounter(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setTouchActionDowned(Z)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$3;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setNotificationSelectedItemCount()V

    return-void
.end method
