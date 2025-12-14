.class public final LV/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Lm0/b;

.field public final d:LH0/k;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:LV/n;

.field public final i:I

.field public final j:J

.field public final k:Ljava/lang/Object;

.field public final l:I

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(ILjava/util/List;Lm0/b;Lm0/c;LH0/k;ZIILV/n;IJLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LV/L;->a:I

    iput-object p2, p0, LV/L;->b:Ljava/util/List;

    iput-object p3, p0, LV/L;->c:Lm0/b;

    iput-object p5, p0, LV/L;->d:LH0/k;

    iput-boolean p6, p0, LV/L;->e:Z

    iput p7, p0, LV/L;->f:I

    iput p8, p0, LV/L;->g:I

    iput-object p9, p0, LV/L;->h:LV/n;

    iput p10, p0, LV/L;->i:I

    iput-wide p11, p0, LV/L;->j:J

    iput-object p13, p0, LV/L;->k:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    move p6, p5

    :goto_0
    if-ge p4, p1, :cond_0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lz0/G;

    iget p8, p7, Lz0/G;->b:I

    add-int/2addr p5, p8

    iget p7, p7, Lz0/G;->a:I

    invoke-static {p6, p7}, Ljava/lang/Math;->max(II)I

    move-result p6

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iput p5, p0, LV/L;->l:I

    iget p1, p0, LV/L;->i:I

    add-int/2addr p5, p1

    if-gez p5, :cond_1

    goto :goto_1

    :cond_1
    move p3, p5

    :goto_1
    iput p3, p0, LV/L;->m:I

    iput p6, p0, LV/L;->n:I

    return-void
.end method


# virtual methods
.method public final a(III)LV/D;
    .locals 14

    move-object v0, p0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, LV/L;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz0/G;

    iget-object v6, v0, LV/L;->c:Lm0/b;

    if-eqz v6, :cond_1

    iget v8, v5, Lz0/G;->a:I

    iget-object v9, v0, LV/L;->d:LH0/k;

    sub-int v8, p2, v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    sget-object v10, LH0/k;->Ltr:LH0/k;

    iget v6, v6, Lm0/b;->a:F

    if-ne v9, v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, -0x1

    int-to-float v9, v9

    mul-float/2addr v6, v9

    :goto_1
    const/4 v9, 0x1

    int-to-float v9, v9

    add-float/2addr v9, v6

    mul-float/2addr v9, v8

    invoke-static {v9}, LG5/p2;->e(F)I

    move-result v6

    invoke-static {v6, v4}, LG5/U2;->a(II)J

    move-result-wide v8

    iget v6, v5, Lz0/G;->b:I

    add-int/2addr v4, v6

    new-instance v6, LV/C;

    invoke-direct {v6, v8, v9, v5}, LV/C;-><init>(JLz0/G;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v13, LV/D;

    iget v1, v0, LV/L;->f:I

    neg-int v5, v1

    iget v1, v0, LV/L;->g:I

    add-int v6, p3, v1

    iget-object v3, v0, LV/L;->k:Ljava/lang/Object;

    iget-object v8, v0, LV/L;->h:LV/n;

    iget-wide v9, v0, LV/L;->j:J

    iget v2, v0, LV/L;->a:I

    iget v4, v0, LV/L;->l:I

    iget-boolean v11, v0, LV/L;->e:Z

    move-object v0, v13

    move v1, p1

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, LV/D;-><init>(IILjava/lang/Object;IIILjava/util/ArrayList;LV/n;JZI)V

    return-object v13
.end method
