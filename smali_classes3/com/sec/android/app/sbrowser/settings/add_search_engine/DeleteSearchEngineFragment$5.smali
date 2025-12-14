.class Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->setSeslLongPressMultiSelectionListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    iget-object p4, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean p5, p4, p3

    xor-int/lit8 p5, p5, 0x1

    aput-boolean p5, p4, p3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->u(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->u(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->q(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-static {p1, p4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->v(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->u(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->q(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-static {p1, p4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->v(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;I)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const p1, 0x7f0b0234

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->u(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    iget-object p5, p4, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean p4, p4, p3

    invoke-virtual {p5, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setBackgroundResourceForItems(Landroid/view/View;IZ)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-virtual {p4, p2, p3}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->updateContentDescription(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$5;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->E(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V

    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    return-void
.end method
