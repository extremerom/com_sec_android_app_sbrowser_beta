.class public Landroidx/appsearch/builtintypes/Person;
.super Landroidx/appsearch/builtintypes/Thing;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Z

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/List;

.field public final u:Ljava/util/List;

.field public final v:Ljava/util/List;

.field public final w:Ljava/util/List;

.field public final x:Ljava/util/List;

.field public final y:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 6

    move-object v0, p0

    invoke-direct/range {p0 .. p13}, Landroidx/appsearch/builtintypes/Thing;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Person;->l:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Person;->m:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Person;->n:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Person;->o:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Person;->p:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Landroidx/appsearch/builtintypes/Person;->q:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Landroidx/appsearch/builtintypes/Person;->r:Z

    invoke-static/range {p21 .. p21}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Person;->s:Ljava/util/List;

    invoke-static/range {p22 .. p22}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Person;->t:Ljava/util/List;

    invoke-static/range {p23 .. p23}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroidx/appsearch/builtintypes/Person;->u:Ljava/util/List;

    invoke-static/range {p24 .. p24}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroidx/appsearch/builtintypes/Person;->v:Ljava/util/List;

    invoke-static/range {p25 .. p25}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroidx/appsearch/builtintypes/Person;->w:Ljava/util/List;

    invoke-static/range {p26 .. p26}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroidx/appsearch/builtintypes/Person;->x:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, Landroidx/appsearch/builtintypes/Person;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    new-instance v3, Lw/g;

    iget-object v4, v0, Landroidx/appsearch/builtintypes/Person;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    iget-object v5, v0, Landroidx/appsearch/builtintypes/Person;->u:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lw/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/appsearch/builtintypes/Person;->y:Ljava/util/List;

    return-void
.end method
