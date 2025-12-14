.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSPenMultiSelectionListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$700(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;II)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->P(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->O(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$800(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->P(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SPen]Start Position: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p2

    const-string v0, "SitesSearchBaseUi"

    invoke-static {p1, p2, v0}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchEditTextView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$900(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;II)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    const-string v0, "SitesSearchBaseUi"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1000(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->O(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[SPenSelect] End Position:: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    if-ne p1, v1, :cond_6

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1100(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1200(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->P(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1300(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1400(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->O(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v4

    if-ge p1, v4, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->P(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->O(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "[SPenSelect] Item Selection Range:: From "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " To "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v4

    invoke-static {p1, v4, v0}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v0

    if-gt p1, v0, :cond_10

    if-ltz p1, :cond_f

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->z(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v1

    goto :goto_1

    :cond_9
    move v6, v2

    :goto_1
    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->Q(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->o(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->J(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->y(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->o(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->J(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->y(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->t(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v1

    goto :goto_3

    :cond_c
    move v6, v2

    :goto_3
    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->M(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    goto :goto_4

    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->C(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->setSitesSearchDeleteStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V

    :goto_4
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->A(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->A(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->V(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->W(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :cond_f
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_10
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1502(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Z)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1600(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->z(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result p1

    if-lez p1, :cond_11

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->a0(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    :cond_11
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllCheckBox()V

    return-void
.end method
