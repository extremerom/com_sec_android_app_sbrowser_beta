.class public Landroidx/appsearch/builtintypes/Stopwatch;
.super Landroidx/appsearch/builtintypes/Thing;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appsearch/builtintypes/Stopwatch$Status;
    }
.end annotation


# instance fields
.field public final l:J

.field public final m:J

.field public final n:I

.field public final o:I

.field public final p:J

.field public final q:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJIIJLjava/util/ArrayList;)V
    .locals 3

    move-object v0, p0

    invoke-direct/range {p0 .. p13}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/Stopwatch;->l:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/Stopwatch;->m:J

    move/from16 v1, p18

    iput v1, v0, Landroidx/appsearch/builtintypes/Stopwatch;->n:I

    move/from16 v1, p19

    iput v1, v0, Landroidx/appsearch/builtintypes/Stopwatch;->o:I

    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/Stopwatch;->p:J

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p22

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Stopwatch;->q:Ljava/util/ArrayList;

    return-void
.end method
