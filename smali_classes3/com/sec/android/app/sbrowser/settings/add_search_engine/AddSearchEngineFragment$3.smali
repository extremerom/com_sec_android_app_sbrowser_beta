.class Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;->setSeslLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean p4, p1, p3

    xor-int/lit8 p4, p4, 0x1

    aput-boolean p4, p1, p3

    const p1, 0x7f0b0234

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    iget-object p5, p4, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean p4, p4, p3

    invoke-virtual {p5, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setBackgroundResourceForItems(Landroid/view/View;IZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->updateContentDescription(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_0
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
