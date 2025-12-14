.class public Landroidx/appsearch/builtintypes/Alarm;
.super Landroidx/appsearch/builtintypes/Thing;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appsearch/builtintypes/Alarm$OriginatingDevice;
    }
.end annotation


# instance fields
.field public final l:Z

.field public final m:[I

.field public final n:I

.field public final o:I

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Landroidx/appsearch/builtintypes/AlarmInstance;

.field public final u:Landroidx/appsearch/builtintypes/AlarmInstance;

.field public final v:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroidx/appsearch/builtintypes/AlarmInstance;Landroidx/appsearch/builtintypes/AlarmInstance;I)V
    .locals 2

    move-object v0, p0

    invoke-direct/range {p0 .. p13}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/appsearch/builtintypes/Alarm;->l:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Alarm;->m:[I

    move/from16 v1, p16

    iput v1, v0, Landroidx/appsearch/builtintypes/Alarm;->n:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/appsearch/builtintypes/Alarm;->o:I

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Alarm;->p:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Alarm;->q:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Alarm;->r:Ljava/lang/String;

    move/from16 v1, p21

    iput-boolean v1, v0, Landroidx/appsearch/builtintypes/Alarm;->s:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Alarm;->t:Landroidx/appsearch/builtintypes/AlarmInstance;

    move-object/from16 v1, p23

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Alarm;->u:Landroidx/appsearch/builtintypes/AlarmInstance;

    move/from16 v1, p24

    iput v1, v0, Landroidx/appsearch/builtintypes/Alarm;->v:I

    return-void
.end method
