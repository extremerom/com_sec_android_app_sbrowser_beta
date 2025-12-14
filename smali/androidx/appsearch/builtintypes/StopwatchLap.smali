.class public Landroidx/appsearch/builtintypes/StopwatchLap;
.super Landroidx/appsearch/builtintypes/Thing;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation


# instance fields
.field public final l:I

.field public final m:J

.field public final n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct/range {p0 .. p13}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move/from16 v1, p14

    iput v1, v0, Landroidx/appsearch/builtintypes/StopwatchLap;->l:I

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/StopwatchLap;->m:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/StopwatchLap;->n:J

    return-void
.end method
