.class public final Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedModelListener;,
        Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;,
        Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;
    }
.end annotation


# instance fields
.field private mIsNativeHasData:Z

.field private mListener:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedModelListener;

.field private mMostVisitedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeTerraceMostVisitedModel:J
    .annotation build Lorg/jni_zero/AccessedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedModelListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mIsNativeHasData:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mNativeTerraceMostVisitedModel:J

    iput-object p1, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mListener:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedModelListener;

    invoke-static {}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSitesJni;->get()Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;->init(Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mNativeTerraceMostVisitedModel:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mMostVisitedItemList:Ljava/util/List;

    return-void
.end method

.method private addMostVisited(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mIsNativeHasData:Z

    iget-object p0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mMostVisitedItemList:Ljava/util/List;

    new-instance v0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearModelMostVisitedList()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mMostVisitedItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private isURLNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private notifyMostVisitedCompleted(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mIsNativeHasData:Z

    iget-object p0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mListener:Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedModelListener;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedModelListener;->notifyMostVisitedCompleted(Z)V

    return-void
.end method


# virtual methods
.method public addToBlockedUrl(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->isURLNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSitesJni;->get()Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mNativeTerraceMostVisitedModel:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;->blockedURLFromMostVisited(JLcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;Ljava/lang/String;)V

    return-void
.end method

.method public getMostVisitedList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mMostVisitedItemList:Ljava/util/List;

    return-object p0
.end method

.method public isBlockedUrl(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->isURLNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSitesJni;->get()Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mNativeTerraceMostVisitedModel:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;->isBlockedURL(JLcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public queryMostVisitedItems()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSitesJni;->get()Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mNativeTerraceMostVisitedModel:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;->getMostVisited(JLcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;)V

    return-void
.end method

.method public removeFromBlockedUrl(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->isURLNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSitesJni;->get()Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;->mNativeTerraceMostVisitedModel:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;->removeBlockedURL(JLcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;Ljava/lang/String;)V

    return-void
.end method
