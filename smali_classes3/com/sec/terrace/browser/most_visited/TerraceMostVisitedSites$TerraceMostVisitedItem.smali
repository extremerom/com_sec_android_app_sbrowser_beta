.class public Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TerraceMostVisitedItem"
.end annotation


# instance fields
.field private final mScore:F

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mTitle:Ljava/lang/String;

    iput p3, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mScore:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;

    iget-object v1, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mTitle:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mTitle:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getScore()F
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mScore:F

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$TerraceMostVisitedItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method
