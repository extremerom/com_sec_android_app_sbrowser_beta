.class Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BenchmarkItem"
.end annotation


# instance fields
.field public Count:I

.field public lMaxCost:J

.field public lMinCost:J

.field public lTotalTime:J

.field public sItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->Count:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lTotalTime:J

    iput-wide v0, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMaxCost:J

    iput-wide v0, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMinCost:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->sItemName:Ljava/lang/String;

    return-void
.end method
