.class Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadItemList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field mIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInitialized:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->mIsInitialized:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->mIdList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;ILjava/util/List;ZZ)V
    .locals 5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->l(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Landroid/widget/TextView;

    move-result-object p5

    const/16 v0, 0x8

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_1
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->j(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isSearchViewShowing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->fromMimeType(Ljava/lang/String;)I

    move-result v1

    if-eqz p2, :cond_2

    if-ne v1, p2, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->t(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->r(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->h(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->p(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->h(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->compareDate(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->k(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->q(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->i(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->n(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->getQueryForKorean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->getQueryForKorean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_7
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->j(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isSearchViewShowing()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->i(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->n(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->processSearchData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->mIdList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->findItemIndex(Ljava/lang/String;)I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_a

    invoke-virtual {p0, p4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result p5

    if-nez p5, :cond_a

    invoke-virtual {p0, p4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->i(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isFallBackQuery()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->l(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->s(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;I)V

    return-void

    :cond_d
    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->s(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;I)V

    return-void
.end method

.method public findItemIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->mIsInitialized:Z

    return p0
.end method

.method public processSearchData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->i(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "id"

    const-string v3, "title"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "id_sort desc"

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->searchResult(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public removeItem(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->findItemIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->m(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;->removeItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->o(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->j(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onSelectionUpdated()V

    :cond_2
    return-object p1
.end method

.method public setIsInitialized()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->mIsInitialized:Z

    return-void
.end method
