.class abstract Lcom/sec/android/app/sbrowser/download/ui/DHItems;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

.field mDownloadItem:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

.field mRowView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->mRowView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->mAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    return-void
.end method


# virtual methods
.method public abstract bindDownloadItemView(Landroid/util/Pair;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/Date;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public bindDownloadItemView(Landroid/util/Pair;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/Date;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;ZZI)V"
        }
    .end annotation

    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->mAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->mAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadItem()Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->mDownloadItem:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    return-object p0
.end method

.method public getID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->mDownloadItem:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public abstract getTitleView()Landroid/widget/TextView;
.end method

.method public abstract getUrlView()Landroid/widget/TextView;
.end method

.method public setDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->mDownloadItem:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    return-void
.end method

.method public abstract setItemBackground(IZ)V
.end method
