.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "context menu for position "

    const-string v0, "SitesSearchBaseUi"

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$300(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSearchDataNull()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    if-ltz p2, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$400(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->E(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->isSelectedItemEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p3

    const v0, 0x7f100028

    invoke-virtual {p3, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->z(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object p3

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne p3, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->E(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->setBookmarkContextMenuVisibility(Landroid/view/ContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object p3

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne p3, v1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->E(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->setHistoryContextMenuVisibility(Landroid/view/ContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->E(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->setSavedPageContextMenuVisibility(Landroid/view/ContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V

    :cond_5
    :goto_1
    return-void
.end method
