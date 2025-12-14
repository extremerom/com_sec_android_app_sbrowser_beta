.class public Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsRequest:Z

.field private mTimestamp:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;->mUrl:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;->mTimestamp:J

    iput-boolean p4, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;->mIsRequest:Z

    return-void
.end method
