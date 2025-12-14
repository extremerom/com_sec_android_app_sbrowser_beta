.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSeslLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/app/Activity;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    :cond_1
    if-ltz p3, :cond_8

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->getItemCount()I

    move-result p4

    if-ge p3, p4, :cond_8

    if-eqz p1, :cond_8

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->q(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p4

    if-ne p4, p3, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1800(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4, p1, p2, p5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->b0(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/View;Z)V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1900(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p4, p1, p2, p5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->b0(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/View;Z)V

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->q(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->K(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->V(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->W(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllCheckBox()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->K(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllText()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    return-void
.end method
