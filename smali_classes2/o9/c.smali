.class public final Lo9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Float;

.field public final b:J

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:F

.field public final o:Lo9/d;

.field public final p:Lo9/d;

.field public final q:Lo9/d;

.field public final r:Z

.field public final s:Z

.field public final t:Landroid/view/animation/Interpolator;

.field public final u:Z


# direct methods
.method public constructor <init>(Ljava/lang/Float;JFFFFFFIIIFLo9/d;Lo9/d;Lo9/d;Landroid/view/animation/Interpolator;)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p17

    const-string v2, "interpolator"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lo9/c;->a:Ljava/lang/Float;

    move-wide v2, p2

    iput-wide v2, v0, Lo9/c;->b:J

    move v2, p4

    iput v2, v0, Lo9/c;->c:F

    move v2, p5

    iput v2, v0, Lo9/c;->d:F

    const/4 v2, 0x0

    iput v2, v0, Lo9/c;->e:F

    iput v2, v0, Lo9/c;->f:F

    move v2, p6

    iput v2, v0, Lo9/c;->g:F

    move v2, p7

    iput v2, v0, Lo9/c;->h:F

    move v2, p8

    iput v2, v0, Lo9/c;->i:F

    move v2, p9

    iput v2, v0, Lo9/c;->j:F

    move v2, p10

    iput v2, v0, Lo9/c;->k:I

    move v2, p11

    iput v2, v0, Lo9/c;->l:I

    move/from16 v2, p12

    iput v2, v0, Lo9/c;->m:I

    move/from16 v2, p13

    iput v2, v0, Lo9/c;->n:F

    move-object/from16 v2, p14

    iput-object v2, v0, Lo9/c;->o:Lo9/d;

    move-object/from16 v2, p15

    iput-object v2, v0, Lo9/c;->p:Lo9/d;

    move-object/from16 v2, p16

    iput-object v2, v0, Lo9/c;->q:Lo9/d;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lo9/c;->r:Z

    iput-boolean v2, v0, Lo9/c;->s:Z

    iput-object v1, v0, Lo9/c;->t:Landroid/view/animation/Interpolator;

    iput-boolean v2, v0, Lo9/c;->u:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo9/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo9/c;

    iget-object v1, p1, Lo9/c;->a:Ljava/lang/Float;

    iget-object v3, p0, Lo9/c;->a:Ljava/lang/Float;

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lo9/c;->b:J

    iget-wide v5, p1, Lo9/c;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lo9/c;->c:F

    iget v3, p1, Lo9/c;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lo9/c;->d:F

    iget v3, p1, Lo9/c;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lo9/c;->e:F

    iget v3, p1, Lo9/c;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lo9/c;->f:F

    iget v3, p1, Lo9/c;->f:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lo9/c;->g:F

    iget v3, p1, Lo9/c;->g:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lo9/c;->h:F

    iget v3, p1, Lo9/c;->h:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lo9/c;->i:F

    iget v3, p1, Lo9/c;->i:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lo9/c;->j:F

    iget v3, p1, Lo9/c;->j:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lo9/c;->k:I

    iget v3, p1, Lo9/c;->k:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lo9/c;->l:I

    iget v3, p1, Lo9/c;->l:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lo9/c;->m:I

    iget v3, p1, Lo9/c;->m:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lo9/c;->n:F

    iget v3, p1, Lo9/c;->n:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lo9/c;->o:Lo9/d;

    iget-object v3, p1, Lo9/c;->o:Lo9/d;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lo9/c;->p:Lo9/d;

    iget-object v3, p1, Lo9/c;->p:Lo9/d;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lo9/c;->q:Lo9/d;

    iget-object v3, p1, Lo9/c;->q:Lo9/d;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lo9/c;->r:Z

    iget-boolean v3, p1, Lo9/c;->r:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lo9/c;->s:Z

    iget-boolean v3, p1, Lo9/c;->s:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lo9/c;->t:Landroid/view/animation/Interpolator;

    iget-object v3, p1, Lo9/c;->t:Landroid/view/animation/Interpolator;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-boolean p0, p0, Lo9/c;->u:Z

    iget-boolean p1, p1, Lo9/c;->u:Z

    if-eq p0, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lo9/c;->a:Ljava/lang/Float;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-wide v3, p0, Lo9/c;->b:J

    invoke-static {v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v1

    iget v3, p0, Lo9/c;->c:F

    invoke-static {v3, v1, v2}, LB/e;->b(FII)I

    move-result v1

    iget v3, p0, Lo9/c;->d:F

    invoke-static {v3, v1, v2}, LB/e;->b(FII)I

    move-result v1

    iget v3, p0, Lo9/c;->e:F

    invoke-static {v3, v1, v2}, LB/e;->b(FII)I

    move-result v1

    iget v3, p0, Lo9/c;->f:F

    invoke-static {v3, v1, v2}, LB/e;->b(FII)I

    move-result v1

    iget v3, p0, Lo9/c;->g:F

    invoke-static {v3, v1, v2}, LB/e;->b(FII)I

    move-result v1

    iget v3, p0, Lo9/c;->h:F

    invoke-static {v3, v1, v2}, LB/e;->b(FII)I

    move-result v1

    iget v3, p0, Lo9/c;->i:F

    invoke-static {v3, v1, v2}, LB/e;->b(FII)I

    move-result v1

    iget v3, p0, Lo9/c;->j:F

    invoke-static {v3, v1, v2}, LB/e;->b(FII)I

    move-result v1

    iget v3, p0, Lo9/c;->k:I

    invoke-static {v3, v1, v2}, LB/e;->c(III)I

    move-result v1

    iget v3, p0, Lo9/c;->l:I

    invoke-static {v3, v1, v2}, LB/e;->c(III)I

    move-result v1

    iget v3, p0, Lo9/c;->m:I

    invoke-static {v3, v1, v2}, LB/e;->c(III)I

    move-result v1

    iget v3, p0, Lo9/c;->n:F

    invoke-static {v3, v1, v2}, LB/e;->b(FII)I

    move-result v1

    iget-object v3, p0, Lo9/c;->o:Lo9/d;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lo9/d;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lo9/c;->p:Lo9/d;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lo9/d;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lo9/c;->q:Lo9/d;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lo9/d;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lo9/c;->r:Z

    invoke-static {v1, v2, v0}, LB/e;->e(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lo9/c;->s:Z

    invoke-static {v0, v2, v1}, LB/e;->e(IIZ)I

    move-result v0

    iget-object v1, p0, Lo9/c;->t:Landroid/view/animation/Interpolator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean p0, p0, Lo9/c;->u:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RippleAnimationConfig(requestedFrameRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo9/c;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo9/c;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", centerX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", centerY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", moveSpeedX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", moveSpeedY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pixelDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sparkleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sparkleStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo9/c;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", baseRingFadeParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo9/c;->o:Lo9/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sparkleRingFadeParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo9/c;->p:Lo9/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerFillFadeParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo9/c;->q:Lo9/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDistort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo9/c;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isReverse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo9/c;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo9/c;->t:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hintSparkleOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lo9/c;->u:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
