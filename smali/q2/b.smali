.class public final Lq2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:F

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:I

.field public final h:F

.field public final i:F

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lq2/b;

    const/high16 v13, -0x80000000

    const/high16 v12, -0x1000000

    const-string v1, ""

    const/4 v2, 0x0

    const v11, -0x800001

    move v3, v11

    move v4, v13

    move v5, v13

    move v6, v11

    move v7, v13

    move v8, v13

    move v9, v11

    move v10, v11

    invoke-direct/range {v0 .. v13}, Lq2/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIIFFFII)V

    const/4 v0, 0x0

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0x11

    invoke-static {v0}, Lr2/e;->a(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lr2/e;->a(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lr2/e;->a(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0x12

    invoke-static {v0}, Lr2/e;->a(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lr2/e;->a(I)V

    const/4 v0, 0x5

    invoke-static {v0}, Lr2/e;->a(I)V

    const/4 v0, 0x6

    invoke-static {v0}, Lr2/e;->a(I)V

    const/4 v0, 0x7

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0x8

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0x9

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0xb

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0xc

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0xd

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0xe

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0xf

    invoke-static {v0}, Lr2/e;->a(I)V

    const/16 v0, 0x10

    invoke-static {v0}, Lr2/e;->a(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIIFFFII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lq2/b;->a:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq2/b;->a:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lq2/b;->a:Ljava/lang/CharSequence;

    :goto_0
    iput-object p2, p0, Lq2/b;->b:Landroid/text/Layout$Alignment;

    iput p3, p0, Lq2/b;->c:F

    iput p4, p0, Lq2/b;->d:I

    iput p5, p0, Lq2/b;->e:I

    iput p6, p0, Lq2/b;->f:F

    iput p7, p0, Lq2/b;->g:I

    iput p10, p0, Lq2/b;->h:F

    iput p11, p0, Lq2/b;->i:F

    iput p12, p0, Lq2/b;->j:I

    iput p8, p0, Lq2/b;->k:I

    iput p9, p0, Lq2/b;->l:F

    iput p13, p0, Lq2/b;->m:I

    return-void
.end method


# virtual methods
.method public final a()Lq2/a;
    .locals 2

    new-instance v0, Lq2/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lq2/b;->a:Ljava/lang/CharSequence;

    iput-object v1, v0, Lq2/a;->a:Ljava/lang/CharSequence;

    iget-object v1, p0, Lq2/b;->b:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Lq2/a;->b:Landroid/text/Layout$Alignment;

    iget v1, p0, Lq2/b;->c:F

    iput v1, v0, Lq2/a;->c:F

    iget v1, p0, Lq2/b;->d:I

    iput v1, v0, Lq2/a;->d:I

    iget v1, p0, Lq2/b;->e:I

    iput v1, v0, Lq2/a;->e:I

    iget v1, p0, Lq2/b;->f:F

    iput v1, v0, Lq2/a;->f:F

    iget v1, p0, Lq2/b;->g:I

    iput v1, v0, Lq2/a;->g:I

    iget v1, p0, Lq2/b;->k:I

    iput v1, v0, Lq2/a;->h:I

    iget v1, p0, Lq2/b;->l:F

    iput v1, v0, Lq2/a;->i:F

    iget v1, p0, Lq2/b;->h:F

    iput v1, v0, Lq2/a;->j:F

    iget v1, p0, Lq2/b;->i:F

    iput v1, v0, Lq2/a;->k:F

    iget v1, p0, Lq2/b;->j:I

    iput v1, v0, Lq2/a;->l:I

    iget p0, p0, Lq2/b;->m:I

    iput p0, v0, Lq2/a;->m:I

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lq2/b;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lq2/b;

    iget-object v2, p0, Lq2/b;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Lq2/b;->a:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq2/b;->b:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lq2/b;->b:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lq2/b;->c:F

    iget v3, p1, Lq2/b;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lq2/b;->d:I

    iget v3, p1, Lq2/b;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lq2/b;->e:I

    iget v3, p1, Lq2/b;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lq2/b;->f:F

    iget v3, p1, Lq2/b;->f:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lq2/b;->g:I

    iget v3, p1, Lq2/b;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lq2/b;->h:F

    iget v3, p1, Lq2/b;->h:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lq2/b;->i:F

    iget v3, p1, Lq2/b;->i:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lq2/b;->j:I

    iget v3, p1, Lq2/b;->j:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lq2/b;->k:I

    iget v3, p1, Lq2/b;->k:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lq2/b;->l:F

    iget v3, p1, Lq2/b;->l:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Lq2/b;->m:I

    iget p1, p1, Lq2/b;->m:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lq2/b;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v1, v0, Lq2/b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Lq2/b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lq2/b;->f:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v1, v0, Lq2/b;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Lq2/b;->h:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v1, v0, Lq2/b;->i:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v1, v0, Lq2/b;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Lq2/b;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Lq2/b;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    iget v1, v0, Lq2/b;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, v0, Lq2/b;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Lq2/b;->b:Landroid/text/Layout$Alignment;

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
