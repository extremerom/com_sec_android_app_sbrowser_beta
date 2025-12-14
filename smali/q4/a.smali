.class public abstract Lq4/a;
.super Lq4/b;
.source "SourceFile"


# instance fields
.field public f:Ls4/b;

.field public final g:I

.field public final h:F

.field public i:I

.field public final j:F

.field public k:[F

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public final r:Z

.field public final s:Ljava/util/ArrayList;

.field public t:F

.field public u:F

.field public v:Z

.field public w:Z

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lq4/b;-><init>()V

    const v0, -0x777778

    iput v0, p0, Lq4/a;->g:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lq4/a;->h:F

    iput v0, p0, Lq4/a;->i:I

    iput v1, p0, Lq4/a;->j:F

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lq4/a;->k:[F

    const/4 v1, 0x6

    iput v1, p0, Lq4/a;->n:I

    iput-boolean v0, p0, Lq4/a;->o:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lq4/a;->p:Z

    iput-boolean v1, p0, Lq4/a;->q:Z

    iput-boolean v1, p0, Lq4/a;->r:Z

    const/4 v1, 0x0

    iput v1, p0, Lq4/a;->t:F

    iput v1, p0, Lq4/a;->u:F

    iput-boolean v0, p0, Lq4/a;->v:Z

    iput-boolean v0, p0, Lq4/a;->w:Z

    iput v1, p0, Lq4/a;->x:F

    iput v1, p0, Lq4/a;->y:F

    iput v1, p0, Lq4/a;->z:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Ly4/g;->c(F)F

    move-result v0

    iput v0, p0, Lq4/b;->d:F

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Ly4/g;->c(F)F

    move-result v1

    iput v1, p0, Lq4/b;->b:F

    invoke-static {v0}, Ly4/g;->c(F)F

    move-result v0

    iput v0, p0, Lq4/b;->c:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq4/a;->s:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 2

    iget-boolean v0, p0, Lq4/a;->v:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lq4/a;->y:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lq4/a;->t:F

    sub-float/2addr p1, v0

    :goto_0
    iget-boolean v0, p0, Lq4/a;->w:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lq4/a;->x:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lq4/a;->u:F

    add-float/2addr p2, v0

    :goto_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    :cond_2
    iput p1, p0, Lq4/a;->y:F

    iput p2, p0, Lq4/a;->x:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lq4/a;->z:F

    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lq4/a;->k:[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq4/a;->d()Ls4/b;

    move-result-object v0

    iget-object v1, p0, Lq4/a;->k:[F

    aget p1, v1, p1

    invoke-interface {v0, p1, p0}, Ls4/b;->getFormattedValue(FLq4/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lq4/a;->k:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lq4/a;->b(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final d()Ls4/b;
    .locals 2

    iget-object v0, p0, Lq4/a;->f:Ls4/b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ls4/a;

    if-eqz v1, :cond_1

    check-cast v0, Ls4/a;

    iget v0, v0, Ls4/a;->b:I

    iget v1, p0, Lq4/a;->m:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ls4/a;

    iget v1, p0, Lq4/a;->m:I

    invoke-direct {v0, v1}, Ls4/a;-><init>(I)V

    iput-object v0, p0, Lq4/a;->f:Ls4/b;

    :cond_1
    iget-object p0, p0, Lq4/a;->f:Ls4/b;

    return-object p0
.end method

.method public final e(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq4/a;->w:Z

    iput p1, p0, Lq4/a;->x:F

    iget v0, p0, Lq4/a;->y:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lq4/a;->z:F

    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq4/a;->v:Z

    const/4 v0, 0x0

    iput v0, p0, Lq4/a;->y:F

    iget v1, p0, Lq4/a;->x:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lq4/a;->z:F

    return-void
.end method

.method public final g(I)V
    .locals 1

    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lq4/a;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq4/a;->o:Z

    return-void
.end method
