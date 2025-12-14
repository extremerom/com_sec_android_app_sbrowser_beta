.class public final Lr4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/a;
.implements Lv4/b;
.implements Lv4/c;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/lang/String;

.field public d:Lq4/p;

.field public e:Z

.field public transient f:Ls4/c;

.field public g:Lq4/g;

.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public l:Ly4/c;

.field public m:F

.field public n:Z

.field public o:Ljava/util/ArrayList;

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public x:I

.field public final y:I

.field public final z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/b;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lr4/b;->b:Ljava/util/ArrayList;

    const-string v0, "DataSet"

    iput-object v0, p0, Lr4/b;->c:Ljava/lang/String;

    sget-object v0, Lq4/p;->LEFT:Lq4/p;

    iput-object v0, p0, Lr4/b;->d:Lq4/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/b;->e:Z

    sget-object v1, Lq4/g;->DEFAULT:Lq4/g;

    iput-object v1, p0, Lr4/b;->g:Lq4/g;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lr4/b;->h:F

    iput v1, p0, Lr4/b;->i:F

    iput-boolean v0, p0, Lr4/b;->j:Z

    iput-boolean v0, p0, Lr4/b;->k:Z

    new-instance v1, Ly4/c;

    invoke-direct {v1}, Ly4/d;-><init>()V

    iput-object v1, p0, Lr4/b;->l:Ly4/c;

    const/high16 v1, 0x41880000    # 17.0f

    iput v1, p0, Lr4/b;->m:F

    iput-boolean v0, p0, Lr4/b;->n:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr4/b;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lr4/b;->b:Ljava/util/ArrayList;

    const/16 v3, 0x8c

    const/16 v4, 0xea

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lr4/b;->c:Ljava/lang/String;

    const p1, -0x800001

    iput p1, p0, Lr4/b;->p:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lr4/b;->q:F

    iput p1, p0, Lr4/b;->r:F

    iput v2, p0, Lr4/b;->s:F

    iput-object p2, p0, Lr4/b;->o:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lr4/b;->o:Ljava/util/ArrayList;

    :cond_0
    iget-object v3, p0, Lr4/b;->o:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iput p1, p0, Lr4/b;->p:F

    iput v2, p0, Lr4/b;->q:F

    iput p1, p0, Lr4/b;->r:F

    iput v2, p0, Lr4/b;->s:F

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/github/mikephil/charting/data/Entry;->a:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    if-nez v3, :cond_4

    iget v3, v2, Lcom/github/mikephil/charting/data/Entry;->a:F

    iget v4, p0, Lr4/b;->q:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    iput v3, p0, Lr4/b;->q:F

    :cond_3
    iget v4, p0, Lr4/b;->p:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_6

    iput v3, p0, Lr4/b;->p:F

    goto :goto_1

    :cond_4
    iget v3, v2, Lcom/github/mikephil/charting/data/BarEntry;->f:F

    neg-float v3, v3

    iget v4, p0, Lr4/b;->q:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    iput v3, p0, Lr4/b;->q:F

    :cond_5
    iget v3, v2, Lcom/github/mikephil/charting/data/BarEntry;->g:F

    iget v4, p0, Lr4/b;->p:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_6

    iput v3, p0, Lr4/b;->p:F

    :cond_6
    :goto_1
    iget v2, v2, Lcom/github/mikephil/charting/data/Entry;->c:F

    iget v3, p0, Lr4/b;->s:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_7

    iput v2, p0, Lr4/b;->s:F

    :cond_7
    iget v3, p0, Lr4/b;->r:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    iput v2, p0, Lr4/b;->r:F

    goto :goto_0

    :cond_8
    :goto_2
    const/16 p1, 0xbb

    const/16 v2, 0x73

    invoke-static {v5, p1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lr4/b;->t:I

    iput v0, p0, Lr4/b;->u:I

    const/16 p1, 0xd7

    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lr4/b;->v:I

    iput v1, p0, Lr4/b;->w:I

    const/16 p1, 0x78

    iput p1, p0, Lr4/b;->x:I

    const/4 p1, 0x0

    iput p1, p0, Lr4/b;->y:I

    const-string v1, "Stack"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lr4/b;->z:[Ljava/lang/String;

    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lr4/b;->t:I

    move v1, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v2, v2, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    if-eqz v2, :cond_9

    array-length v3, v2

    iget v4, p0, Lr4/b;->u:I

    if-le v3, v4, :cond_9

    array-length v2, v2

    iput v2, p0, Lr4/b;->u:I

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iput p1, p0, Lr4/b;->y:I

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_c

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v1, v1, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    if-nez v1, :cond_b

    iget v1, p0, Lr4/b;->y:I

    add-int/2addr v1, v0

    iput v1, p0, Lr4/b;->y:I

    goto :goto_5

    :cond_b
    iget v2, p0, Lr4/b;->y:I

    array-length v1, v1

    add-int/2addr v2, v1

    iput v2, p0, Lr4/b;->y:I

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(F)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_3

    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    iget v4, v4, Lcom/github/mikephil/charting/data/Entry;->c:F

    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    :goto_1
    if-lez v3, :cond_0

    add-int/lit8 v1, v3, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    iget v1, v1, Lcom/github/mikephil/charting/data/Entry;->c:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    iget v4, v2, Lcom/github/mikephil/charting/data/Entry;->c:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-lez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final b(FFLr4/e;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lr4/b;->c(FFLr4/e;)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    iget-object p0, p0, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/Entry;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(FFLr4/e;)I
    .locals 10

    iget-object p0, p0, Lr4/b;->o:Ljava/util/ArrayList;

    const/4 v0, -0x1

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_5

    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    iget v4, v4, Lcom/github/mikephil/charting/data/Entry;->c:F

    sub-float/2addr v4, p1

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    iget v6, v6, Lcom/github/mikephil/charting/data/Entry;->c:F

    sub-float/2addr v6, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v8, v6, v7

    if-gez v8, :cond_2

    :goto_1
    move v2, v5

    goto :goto_0

    :cond_2
    cmpg-float v6, v7, v6

    if-gez v6, :cond_3

    goto :goto_2

    :cond_3
    float-to-double v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_4

    :goto_2
    move v1, v3

    goto :goto_0

    :cond_4
    cmpg-double v3, v6, v8

    if-gez v3, :cond_1

    goto :goto_1

    :cond_5
    if-eq v1, v0, :cond_c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    iget v0, v0, Lcom/github/mikephil/charting/data/Entry;->c:F

    sget-object v2, Lr4/e;->UP:Lr4/e;

    if-ne p3, v2, :cond_6

    cmpg-float p1, v0, p1

    if-gez p1, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    sget-object v2, Lr4/e;->DOWN:Lr4/e;

    if-ne p3, v2, :cond_7

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    if-lez v1, :cond_7

    add-int/lit8 v1, v1, -0x1

    :cond_7
    :goto_3
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_c

    :goto_4
    if-lez v1, :cond_8

    add-int/lit8 p1, v1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    iget p1, p1, Lcom/github/mikephil/charting/data/Entry;->c:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->a()F

    move-result p1

    :goto_5
    move p3, v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    iget v3, v2, Lcom/github/mikephil/charting/data/Entry;->c:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_b

    :goto_6
    move v1, p3

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->a()F

    move-result v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    move p1, p2

    goto :goto_5

    :cond_c
    :goto_7
    return v1

    :cond_d
    :goto_8
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataSet, label: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lr4/b;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", entries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
