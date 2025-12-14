.class public final Lo9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo9/c;

.field public final b:Lo9/g;

.field public c:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lo9/c;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9/b;->a:Lo9/c;

    new-instance v0, Lo9/g;

    invoke-direct {v0}, Lo9/g;-><init>()V

    iput-object v0, p0, Lo9/b;->b:Lo9/g;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-string v3, "ofFloat(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lo9/b;->c:Landroid/animation/ValueAnimator;

    iget p0, p1, Lo9/c;->c:F

    iget v2, p1, Lo9/c;->d:F

    invoke-static {v0, p0, v2}, Lj9/b;->s(Lo9/g;FF)V

    iget-object p0, v0, Lo9/g;->a:Lo9/e;

    iget v2, p1, Lo9/c;->h:F

    iget v3, p1, Lo9/c;->g:F

    mul-float/2addr v2, v3

    iget v4, p1, Lo9/c;->i:F

    mul-float/2addr v4, v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lo9/f;

    invoke-direct {v3, v1, v2, v4}, Lo9/f;-><init>(FFF)V

    iget-object v1, p0, Lo9/e;->c:Lo9/f;

    filled-new-array {v1, v3}, [Lo9/f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo9/e;->a([Lo9/f;)V

    iget p0, p1, Lo9/c;->j:F

    invoke-static {v0, p0}, Lj9/b;->z(Lo9/g;F)V

    iget p0, p1, Lo9/c;->k:I

    iget v1, p1, Lo9/c;->m:I

    invoke-static {p0, v1}, LX0/a;->e(II)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!!!!color:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sparkleColor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p0}, Lj9/b;->o(Lo9/g;I)V

    iget p0, p1, Lo9/c;->l:I

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "!!!!sparkleColor:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",1.0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1, v4, p0}, Lj9/b;->n(Lo9/g;FFF)V

    iget p0, p1, Lo9/c;->n:F

    iput p0, v0, Lo9/g;->d:F

    invoke-static {v0, p0}, Lj9/b;->A(Lo9/g;F)V

    iget-object p0, v0, Lo9/g;->f:Lo9/d;

    iget-object v1, p1, Lo9/c;->o:Lo9/d;

    invoke-static {p0, v1}, Lo9/b;->a(Lo9/d;Lo9/d;)V

    iget-object p0, v0, Lo9/g;->e:Lo9/d;

    iget-object v1, p1, Lo9/c;->p:Lo9/d;

    invoke-static {p0, v1}, Lo9/b;->a(Lo9/d;Lo9/d;)V

    iget-object p0, v0, Lo9/g;->g:Lo9/d;

    iget-object p1, p1, Lo9/c;->q:Lo9/d;

    invoke-static {p0, p1}, Lo9/b;->a(Lo9/d;Lo9/d;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a(Lo9/d;Lo9/d;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lo9/d;->a:F

    iput v0, p0, Lo9/d;->a:F

    iget v0, p1, Lo9/d;->b:F

    iput v0, p0, Lo9/d;->b:F

    iget p1, p1, Lo9/d;->c:F

    iput p1, p0, Lo9/d;->c:F

    :cond_0
    return-void
.end method
