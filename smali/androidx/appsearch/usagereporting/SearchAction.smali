.class public Landroidx/appsearch/usagereporting/SearchAction;
.super Landroidx/appsearch/usagereporting/TakenAction;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation build Landroidx/appsearch/app/ExperimentalAppSearchApi;
.end annotation


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;I)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move/from16 v1, p7

    move-object v2, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/appsearch/usagereporting/TakenAction;-><init>(ILjava/lang/String;JJLjava/lang/String;)V

    move-object/from16 v0, p8

    iput-object v0, v8, Landroidx/appsearch/usagereporting/SearchAction;->f:Ljava/lang/String;

    move/from16 v0, p9

    iput v0, v8, Landroidx/appsearch/usagereporting/SearchAction;->g:I

    return-void
.end method
