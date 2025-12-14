.class public Landroidx/appsearch/builtintypes/Timer;
.super Landroidx/appsearch/builtintypes/Thing;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appsearch/builtintypes/Timer$Status;
    }
.end annotation


# instance fields
.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:J

.field public final p:J

.field public final q:I

.field public final r:J

.field public final s:Ljava/lang/String;

.field public final t:I

.field public final u:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJJJJIJLjava/lang/String;IZ)V
    .locals 3

    move-object v0, p0

    invoke-direct/range {p0 .. p13}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/Timer;->l:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/Timer;->m:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/Timer;->n:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/Timer;->o:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/Timer;->p:J

    move/from16 v1, p24

    iput v1, v0, Landroidx/appsearch/builtintypes/Timer;->q:I

    move-wide/from16 v1, p25

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/Timer;->r:J

    move-object/from16 v1, p27

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Timer;->s:Ljava/lang/String;

    move/from16 v1, p28

    iput v1, v0, Landroidx/appsearch/builtintypes/Timer;->t:I

    move/from16 v1, p29

    iput-boolean v1, v0, Landroidx/appsearch/builtintypes/Timer;->u:Z

    return-void
.end method
