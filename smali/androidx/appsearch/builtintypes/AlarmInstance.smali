.class public Landroidx/appsearch/builtintypes/AlarmInstance;
.super Landroidx/appsearch/builtintypes/Thing;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appsearch/builtintypes/AlarmInstance$Status;
    }
.end annotation


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IJ)V
    .locals 3

    move-object v0, p0

    invoke-direct/range {p0 .. p13}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/appsearch/builtintypes/AlarmInstance;->l:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Landroidx/appsearch/builtintypes/AlarmInstance;->m:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/AlarmInstance;->n:J

    return-void
.end method
