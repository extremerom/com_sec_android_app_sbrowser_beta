.class public Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemGroup"
.end annotation


# instance fields
.field private final mDate:Ljava/util/Date;

.field private mIsSorted:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mItems:Ljava/util/List;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mDate:Ljava/util/Date;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mIsSorted:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mDate:Ljava/util/Date;

    return-object p0
.end method


# virtual methods
.method public addItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mIsSorted:Z

    return-void
.end method

.method public compareItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTimestamp()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTimestamp()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getItemAt(I)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->sortIfNeeded()V

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mItems:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    return-object p0
.end method

.method public isSameDay(Ljava/util/Date;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mDate:Ljava/util/Date;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->compareDate(Ljava/util/Date;Ljava/util/Date;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetPosition()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->sortIfNeeded()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setPosition(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public sortIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mIsSorted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mIsSorted:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->mItems:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
