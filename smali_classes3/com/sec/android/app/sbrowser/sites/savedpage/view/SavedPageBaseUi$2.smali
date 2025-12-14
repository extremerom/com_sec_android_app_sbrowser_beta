.class Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setSeslMultiSelectedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->t(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$300(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$400(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$500(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$600(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->t(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result p1

    if-eq p1, v0, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->o(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->o(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->t(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result v3

    if-le v2, v3, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->l(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result v1

    :cond_4
    :goto_0
    if-gt p1, v1, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->q(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result v5

    if-eqz v3, :cond_7

    move v6, v0

    goto :goto_2

    :cond_7
    move v6, p2

    :goto_2
    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$700(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    sget-object p2, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->ALL:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->j(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->j(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->q(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result v2

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ne v2, p1, :cond_b

    goto :goto_3

    :cond_b
    move p2, v1

    :goto_3
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->j(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSelectAllText()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateBottomBar()V

    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$802(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Z)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$900(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V

    :cond_d
    :goto_5
    return-void
.end method
