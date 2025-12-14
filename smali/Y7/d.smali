.class public final LY7/d;
.super LY7/r;
.source "SourceFile"


# instance fields
.field public final b:[Ljava/lang/String;

.field public final c:[LY7/q;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:[Ljava/lang/String;

.field public final h:[Ljava/lang/String;

.field public final i:[Ljava/lang/String;

.field public final j:[Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:[Ljava/lang/String;

.field public final n:[Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:LY7/f;

.field public final r:Ljava/lang/String;

.field public final s:[Ljava/lang/String;

.field public final t:[Ljava/lang/String;

.field public final u:[LY7/e;

.field public final v:[LY7/l;


# direct methods
.method public constructor <init>([Ljava/lang/String;[LY7/q;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LY7/f;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[LY7/e;[LY7/l;)V
    .locals 9

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    sget-object v7, LY7/s;->ADDRESSBOOK:LY7/s;

    invoke-direct {p0, v7}, LY7/r;-><init>(LY7/s;)V

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Phone numbers and types lengths differ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    array-length v7, v3

    array-length v8, v4

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Emails and types lengths differ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_5

    :cond_4
    move-object v7, p1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Addresses and types lengths differ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    iput-object v7, v0, LY7/d;->b:[Ljava/lang/String;

    move-object v7, p2

    iput-object v7, v0, LY7/d;->c:[LY7/q;

    move-object v7, p3

    iput-object v7, v0, LY7/d;->d:[Ljava/lang/String;

    move-object v7, p4

    iput-object v7, v0, LY7/d;->e:[Ljava/lang/String;

    move-object v7, p5

    iput-object v7, v0, LY7/d;->f:Ljava/lang/String;

    iput-object v1, v0, LY7/d;->g:[Ljava/lang/String;

    iput-object v2, v0, LY7/d;->h:[Ljava/lang/String;

    iput-object v3, v0, LY7/d;->i:[Ljava/lang/String;

    iput-object v4, v0, LY7/d;->j:[Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, LY7/d;->k:Ljava/lang/String;

    move-object/from16 v1, p11

    iput-object v1, v0, LY7/d;->l:Ljava/lang/String;

    iput-object v5, v0, LY7/d;->m:[Ljava/lang/String;

    iput-object v6, v0, LY7/d;->n:[Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, LY7/d;->o:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, LY7/d;->p:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, LY7/d;->q:LY7/f;

    move-object/from16 v1, p17

    iput-object v1, v0, LY7/d;->r:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, LY7/d;->s:[Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, LY7/d;->t:[Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, LY7/d;->u:[LY7/e;

    move-object/from16 v1, p21

    iput-object v1, v0, LY7/d;->v:[LY7/l;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LY7/d;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/d;->e:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/d;->f:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, LY7/d;->r:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, LY7/d;->o:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, LY7/d;->m:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/d;->g:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/d;->i:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/d;->k:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, LY7/d;->s:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, LY7/d;->p:Ljava/lang/String;

    invoke-static {v0, v1}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, LY7/d;->t:[Ljava/lang/String;

    invoke-static {v1, v0}, LY7/r;->c([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, LY7/d;->l:Ljava/lang/String;

    invoke-static {v0, p0}, LY7/r;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
