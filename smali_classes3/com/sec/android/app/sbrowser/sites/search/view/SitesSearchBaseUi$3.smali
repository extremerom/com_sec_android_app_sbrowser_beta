.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "onLongClick position : "

    const-string v2, "SitesSearchBaseUi"

    invoke-static {v0, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSearchDataNull()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    if-ltz v0, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSearchDataFetchingStarted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$500(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->K(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$600(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->b0(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->V(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->W(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllCheckBox()V

    return v3

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->U(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)Z

    move-result v4

    invoke-virtual {v2, p1, v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setHeightToShift(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->N(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->Z(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    int-to-long v0, v0

    const-string p1, "313"

    const-string v2, "3126"

    invoke-static {p1, v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_6
    return v3

    :cond_7
    :goto_0
    return v2
.end method
