.class public Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;
    }
.end annotation


# instance fields
.field private mCorner:I

.field private mDominantText:Ljava/lang/String;

.field private mGroupColor:I

.field private mGroupIndex:I

.field private mGroupName:Ljava/lang/String;

.field private mInvisibleChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Ljava/lang/String;

.field private final mType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mType:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mTitle:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mGroupIndex:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mInvisibleChildren:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mType:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mGroupName:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mGroupColor:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mGroupIndex:I

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCorner()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mCorner:I

    return p0
.end method

.method public getDominantText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mDominantText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mDominantText:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mDominantText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mDominantText:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mDominantText:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mDominantText:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mGroupColor:I

    return p0
.end method

.method public getGroupIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mGroupIndex:I

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getInvisibleChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mInvisibleChildren:Ljava/util/List;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mType:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCorner(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mCorner:I

    return-void
.end method

.method public setGroupIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->mGroupIndex:I

    return-void
.end method
