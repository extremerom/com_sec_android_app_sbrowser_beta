.class Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->setSeslMultiSelectedListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildInfoList()Ljava/util/List;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getItemViewType(I)I

    move-result p4

    const/4 p5, 0x1

    if-ne p4, p5, :cond_9

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildPosition(I)I

    move-result v0

    iput v0, p4, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedPosition:I

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    iget p4, p4, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedPosition:I

    if-ltz p4, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildInfoList()Ljava/util/List;

    move-result-object p4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    iget v0, v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mSelectedPosition:I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->b(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result p5

    if-eqz p5, :cond_3

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->g(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_2

    if-lez p3, :cond_2

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->g(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->g(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object p5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->g(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->setIsSelected(Z)V

    :cond_3
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->b(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->b(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->g(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->g(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p4, p5}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->setIsSelected(Z)V

    :cond_6
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->b(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChild(I)Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->a(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;->setNotificationSelectedItemCount()V

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    const p0, 0x7f0b0234

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    nop

    :cond_9
    :goto_1
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mIsLongPressDragging:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->b(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->mIsLongPressDragging:Z

    return-void
.end method
