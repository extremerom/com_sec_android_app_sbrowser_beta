.class public final Lcom/sec/terrace/browser/history/TerraceHistoryItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBackgroundColor:I

.field private mIsSelected:Z

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVisitCount:I

.field private mVisitTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mTitle:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mVisitTime:J

    iput p5, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mVisitCount:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mIsSelected:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mBackgroundColor:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mBackgroundColor:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVisitCount()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mVisitCount:I

    return p0
.end method

.method public getVisitTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mVisitTime:J

    return-wide v0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mIsSelected:Z

    return p0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mBackgroundColor:I

    return-void
.end method

.method public setIsSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->mIsSelected:Z

    return-void
.end method
