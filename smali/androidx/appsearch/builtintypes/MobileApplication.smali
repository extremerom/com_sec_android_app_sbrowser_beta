.class public Landroidx/appsearch/builtintypes/MobileApplication;
.super Landroidx/appsearch/builtintypes/Thing;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation build Landroidx/appsearch/app/ExperimentalAppSearchApi;
.end annotation


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/List;

.field public final o:Landroid/net/Uri;

.field public final p:[B

.field public final q:J

.field public final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[BJLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    invoke-direct/range {p0 .. p13}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/appsearch/builtintypes/MobileApplication;->l:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/appsearch/builtintypes/MobileApplication;->m:Ljava/lang/String;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p9

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Landroidx/appsearch/builtintypes/MobileApplication;->n:Ljava/util/List;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/appsearch/builtintypes/MobileApplication;->o:Landroid/net/Uri;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/appsearch/builtintypes/MobileApplication;->p:[B

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroidx/appsearch/builtintypes/MobileApplication;->q:J

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/appsearch/builtintypes/MobileApplication;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/appsearch/builtintypes/MobileApplication;->n:Ljava/util/List;

    return-object p0
.end method
