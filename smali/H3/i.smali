.class public final LH3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lz3/g;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:LH3/g;

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:LF3/d;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:LF3/a;

.field public final r:Lcom/google/firebase/messaging/q;

.field public final s:LF3/b;

.field public final t:Ljava/util/List;

.field public final u:LH3/h;

.field public final v:Z

.field public final w:Lo3/f;

.field public final x:LA7/c;


# direct methods
.method public constructor <init>(Ljava/util/List;Lz3/g;Ljava/lang/String;JLH3/g;JLjava/lang/String;Ljava/util/List;LF3/d;IIIFFFFLF3/a;Lcom/google/firebase/messaging/q;Ljava/util/List;LH3/h;LF3/b;ZLo3/f;LA7/c;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, LH3/i;->a:Ljava/util/List;

    move-object v1, p2

    iput-object v1, v0, LH3/i;->b:Lz3/g;

    move-object v1, p3

    iput-object v1, v0, LH3/i;->c:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, LH3/i;->d:J

    move-object v1, p6

    iput-object v1, v0, LH3/i;->e:LH3/g;

    move-wide v1, p7

    iput-wide v1, v0, LH3/i;->f:J

    move-object v1, p9

    iput-object v1, v0, LH3/i;->g:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, LH3/i;->h:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, LH3/i;->i:LF3/d;

    move v1, p12

    iput v1, v0, LH3/i;->j:I

    move/from16 v1, p13

    iput v1, v0, LH3/i;->k:I

    move/from16 v1, p14

    iput v1, v0, LH3/i;->l:I

    move/from16 v1, p15

    iput v1, v0, LH3/i;->m:F

    move/from16 v1, p16

    iput v1, v0, LH3/i;->n:F

    move/from16 v1, p17

    iput v1, v0, LH3/i;->o:F

    move/from16 v1, p18

    iput v1, v0, LH3/i;->p:F

    move-object/from16 v1, p19

    iput-object v1, v0, LH3/i;->q:LF3/a;

    move-object/from16 v1, p20

    iput-object v1, v0, LH3/i;->r:Lcom/google/firebase/messaging/q;

    move-object/from16 v1, p21

    iput-object v1, v0, LH3/i;->t:Ljava/util/List;

    move-object/from16 v1, p22

    iput-object v1, v0, LH3/i;->u:LH3/h;

    move-object/from16 v1, p23

    iput-object v1, v0, LH3/i;->s:LF3/b;

    move/from16 v1, p24

    iput-boolean v1, v0, LH3/i;->v:Z

    move-object/from16 v1, p25

    iput-object v1, v0, LH3/i;->w:Lo3/f;

    move-object/from16 v1, p26

    iput-object v1, v0, LH3/i;->x:LA7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH3/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LH3/i;->b:Lz3/g;

    iget-object v3, v2, Lz3/g;->h:LN/k;

    iget-wide v4, p0, LH3/i;->f:J

    invoke-virtual {v3, v4, v5}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH3/i;

    if-eqz v3, :cond_1

    const-string v4, "\t\tParents: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, LH3/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lz3/g;->h:LN/k;

    iget-wide v5, v3, LH3/i;->f:J

    invoke-virtual {v4, v5, v6}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH3/i;

    :goto_0
    if-eqz v3, :cond_0

    const-string v4, "->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, LH3/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lz3/g;->h:LN/k;

    iget-wide v5, v3, LH3/i;->f:J

    invoke-virtual {v4, v5, v6}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH3/i;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, LH3/i;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tMasks: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v2, p0, LH3/i;->j:I

    if-eqz v2, :cond_3

    iget v3, p0, LH3/i;->k:I

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tBackground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, LH3/i;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%dx%d %X\n"

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p0, p0, LH3/i;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, LH3/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
