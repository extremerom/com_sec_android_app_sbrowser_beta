.class public final Lk9/f;
.super Lbc/d;
.source "SourceFile"


# static fields
.field public static final x:Lk9/f;

.field public static final y:Lk9/f;


# instance fields
.field public b:Lk9/e;

.field public final c:Lk9/d;

.field public final d:Landroid/graphics/PointF;

.field public final e:F

.field public final f:I

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:F

.field public p:F

.field public final q:F

.field public final r:F

.field public final s:F

.field public final t:F

.field public u:Lk9/o;

.field public final v:F

.field public final w:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk9/f;

    invoke-direct {v0}, Lk9/f;-><init>()V

    new-instance v0, Lk9/f;

    invoke-direct {v0}, Lk9/f;-><init>()V

    const v1, 0x3f933333    # 1.15f

    iput v1, v0, Lk9/f;->p:F

    new-instance v0, Lk9/f;

    invoke-direct {v0}, Lk9/f;-><init>()V

    const/high16 v2, 0x3fa00000    # 1.25f

    iput v2, v0, Lk9/f;->p:F

    new-instance v0, Lk9/f;

    invoke-direct {v0}, Lk9/f;-><init>()V

    new-instance v0, Lk9/f;

    invoke-direct {v0}, Lk9/f;-><init>()V

    iput v1, v0, Lk9/f;->p:F

    sput-object v0, Lk9/f;->x:Lk9/f;

    new-instance v0, Lk9/f;

    invoke-direct {v0}, Lk9/f;-><init>()V

    iput v2, v0, Lk9/f;->p:F

    sput-object v0, Lk9/f;->y:Lk9/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    sget-object v0, Lk9/e;->RoundRect:Lk9/e;

    sget-object v1, Lk9/d;->ALL:Lk9/d;

    sget-object v2, Lk9/y;->a:Landroid/graphics/PointF;

    sget v3, Lk9/y;->b:I

    sget v4, Lk9/y;->d:F

    sget-object v5, Lk9/o;->DEFAULT:Lk9/o;

    const-string v6, "shape"

    invoke-static {v0, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "roundRectDirection"

    invoke-static {v1, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "lightPos"

    invoke-static {v2, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "lightMovement"

    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lbc/d;-><init>(I)V

    iput-object v0, p0, Lk9/f;->b:Lk9/e;

    iput-object v1, p0, Lk9/f;->c:Lk9/d;

    iput-object v2, p0, Lk9/f;->d:Landroid/graphics/PointF;

    const v0, 0x3ff5c28f    # 1.92f

    iput v0, p0, Lk9/f;->e:F

    iput v3, p0, Lk9/f;->f:I

    const v0, 0x3e8f5c29    # 0.28f

    iput v0, p0, Lk9/f;->g:F

    iput v0, p0, Lk9/f;->h:F

    const/high16 v0, 0x3fa00000    # 1.25f

    iput v0, p0, Lk9/f;->i:F

    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lk9/f;->j:F

    const v0, 0x3ef5c28f    # 0.48f

    iput v0, p0, Lk9/f;->k:F

    const v0, 0x3fe8f5c3    # 1.82f

    iput v0, p0, Lk9/f;->l:F

    const/4 v0, 0x0

    iput v0, p0, Lk9/f;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lk9/f;->n:F

    const v1, 0x3d8f5c29    # 0.07f

    iput v1, p0, Lk9/f;->o:F

    const v1, 0x3f933333    # 1.15f

    iput v1, p0, Lk9/f;->p:F

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, Lk9/f;->q:F

    const v1, 0x3fd33333    # 1.65f

    iput v1, p0, Lk9/f;->r:F

    iput v0, p0, Lk9/f;->s:F

    iput v4, p0, Lk9/f;->t:F

    iput-object v5, p0, Lk9/f;->u:Lk9/o;

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lk9/f;->v:F

    const/high16 v0, 0x42400000    # 48.0f

    iput v0, p0, Lk9/f;->w:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk9/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk9/f;

    iget-object v1, p0, Lk9/f;->b:Lk9/e;

    iget-object v3, p1, Lk9/f;->b:Lk9/e;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk9/f;->c:Lk9/d;

    iget-object v3, p1, Lk9/f;->c:Lk9/d;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lk9/f;->d:Landroid/graphics/PointF;

    iget-object v3, p1, Lk9/f;->d:Landroid/graphics/PointF;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lk9/f;->e:F

    iget v3, p1, Lk9/f;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lk9/f;->f:I

    iget v3, p1, Lk9/f;->f:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lk9/f;->g:F

    iget v3, p1, Lk9/f;->g:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lk9/f;->h:F

    iget v3, p1, Lk9/f;->h:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lk9/f;->i:F

    iget v3, p1, Lk9/f;->i:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lk9/f;->j:F

    iget v3, p1, Lk9/f;->j:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lk9/f;->k:F

    iget v3, p1, Lk9/f;->k:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lk9/f;->l:F

    iget v3, p1, Lk9/f;->l:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lk9/f;->m:F

    iget v3, p1, Lk9/f;->m:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lk9/f;->n:F

    iget v3, p1, Lk9/f;->n:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lk9/f;->o:F

    iget v3, p1, Lk9/f;->o:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lk9/f;->p:F

    iget v3, p1, Lk9/f;->p:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lk9/f;->q:F

    iget v3, p1, Lk9/f;->q:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lk9/f;->r:F

    iget v3, p1, Lk9/f;->r:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lk9/f;->s:F

    iget v3, p1, Lk9/f;->s:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lk9/f;->t:F

    iget v3, p1, Lk9/f;->t:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lk9/f;->u:Lk9/o;

    iget-object v3, p1, Lk9/f;->u:Lk9/o;

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lk9/f;->v:F

    iget v3, p1, Lk9/f;->v:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget p0, p0, Lk9/f;->w:F

    iget p1, p1, Lk9/f;->w:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lk9/f;->b:Lk9/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk9/f;->c:Lk9/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lk9/f;->d:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lk9/f;->e:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->f:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget v2, p0, Lk9/f;->g:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->h:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->i:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->j:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->k:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->l:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->m:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->n:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->o:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->p:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->q:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->r:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->s:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, Lk9/f;->t:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget-object v2, p0, Lk9/f;->u:Lk9/o;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lk9/f;->v:F

    invoke-static {v0, v2, v1}, LB/e;->b(FII)I

    move-result v0

    iget p0, p0, Lk9/f;->w:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lk9/f;->b:Lk9/e;

    iget v1, p0, Lk9/f;->p:F

    iget-object v2, p0, Lk9/f;->u:Lk9/o;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GuidingLightConfig(shape="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", roundRectDirection="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk9/f;->c:Lk9/d;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lightPos="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk9/f;->d:Landroid/graphics/PointF;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lightRadius="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->e:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", lightColor="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->f:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lightIntensity="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->g:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", glowIntensity="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->h:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", glowRadius="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->i:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", glowSharpness="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->j:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", reflLightIntensity="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->k:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", reflLightRadius="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->l:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", reflAlbedo="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->m:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", globalLuminance="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->n:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", ditherVariation="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->o:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", saturation="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", outerSaturation="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->q:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", stretch="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->r:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", stretchDirLit="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->s:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", initialViewAlpha="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->t:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", lightMovement="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", frameRate="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk9/f;->v:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", outlineThickness="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lk9/f;->w:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
