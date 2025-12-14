.class Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v1, v0, p2

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p2

    const v0, 0x7f0b0234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v0, v0, p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setBackgroundResourceForItems(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->q(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->v(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->D(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->u(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->q(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->v(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->u(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->u(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->y(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->E(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->x(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->updateContentDescription(Landroid/view/View;I)V

    return v2
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v1, v0, p2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aput-boolean v2, v0, p2

    const v0, 0x7f0b0234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->updateContentDescription(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->u(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->q(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->v(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->D(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v0, v0, p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setBackgroundResourceForItems(Landroid/view/View;IZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->E(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    :cond_0
    return v2
.end method

.method public setBottombarFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->p(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$6;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->r(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
