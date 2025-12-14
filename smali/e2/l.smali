.class public final Le2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf2/a;

.field public final b:LH0/m;

.field public final c:Le2/d;

.field public final d:Le2/e;

.field public final e:Le2/c;

.field public final f:I

.field public final g:Z

.field public final h:Le2/k;

.field public final i:Le2/a;

.field public final j:I

.field public final k:Le2/m;

.field public final l:I


# direct methods
.method public constructor <init>(Lf2/a;LH0/m;Le2/d;Le2/e;Le2/c;IZLe2/a;Le2/m;II)V
    .locals 4

    and-int/lit8 v0, p11, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_2

    move-object p4, v1

    :cond_2
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_3

    move-object p5, v1

    :cond_3
    and-int/lit16 v0, p11, 0x80

    if-eqz v0, :cond_4

    const/4 p6, 0x1

    :cond_4
    and-int/lit16 v0, p11, 0x100

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    move p7, v2

    :cond_5
    new-instance v0, Le2/k;

    invoke-direct {v0}, Le2/k;-><init>()V

    and-int/lit16 v3, p11, 0x400

    if-eqz v3, :cond_6

    sget-object p8, Le2/a;->SP:Le2/a;

    :cond_6
    and-int/lit16 v3, p11, 0x2000

    if-eqz v3, :cond_7

    move-object p9, v1

    :cond_7
    and-int/lit16 p11, p11, 0x4000

    if-eqz p11, :cond_8

    move p10, v2

    :cond_8
    const-string p11, "color"

    invoke-static {p1, p11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p11, "complexUnit"

    invoke-static {p8, p11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/l;->a:Lf2/a;

    iput-object p2, p0, Le2/l;->b:LH0/m;

    iput-object p3, p0, Le2/l;->c:Le2/d;

    iput-object p4, p0, Le2/l;->d:Le2/e;

    iput-object p5, p0, Le2/l;->e:Le2/c;

    iput p6, p0, Le2/l;->f:I

    iput-boolean p7, p0, Le2/l;->g:Z

    iput-object v0, p0, Le2/l;->h:Le2/k;

    iput-object p8, p0, Le2/l;->i:Le2/a;

    iput v2, p0, Le2/l;->j:I

    iput-object p9, p0, Le2/l;->k:Le2/m;

    iput p10, p0, Le2/l;->l:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le2/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le2/l;

    iget-object v1, p1, Le2/l;->a:Lf2/a;

    iget-object v3, p0, Le2/l;->a:Lf2/a;

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Le2/l;->b:LH0/m;

    iget-object v3, p1, Le2/l;->b:LH0/m;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Le2/l;->c:Le2/d;

    iget-object v3, p1, Le2/l;->c:Le2/d;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    const/4 v1, 0x0

    invoke-static {v1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    invoke-static {v1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Le2/l;->d:Le2/e;

    iget-object v4, p1, Le2/l;->d:Le2/e;

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Le2/l;->e:Le2/c;

    iget-object v4, p1, Le2/l;->e:Le2/c;

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget v3, p0, Le2/l;->f:I

    iget v4, p1, Le2/l;->f:I

    if-ne v3, v4, :cond_10

    iget-boolean v3, p0, Le2/l;->g:Z

    iget-boolean v4, p1, Le2/l;->g:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Le2/l;->h:Le2/k;

    iget-object v4, p1, Le2/l;->h:Le2/k;

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Le2/l;->i:Le2/a;

    iget-object v4, p1, Le2/l;->i:Le2/a;

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget v3, p0, Le2/l;->j:I

    iget v4, p1, Le2/l;->j:I

    if-eq v3, v4, :cond_c

    return v2

    :cond_c
    invoke-static {v1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Le2/l;->k:Le2/m;

    iget-object v3, p1, Le2/l;->k:Le2/m;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget p0, p0, Le2/l;->l:I

    iget p1, p1, Le2/l;->l:I

    if-eq p0, p1, :cond_f

    return v2

    :cond_f
    return v0

    :cond_10
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Le2/l;->a:Lf2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Le2/l;->b:LH0/m;

    if-eqz v3, :cond_0

    iget-wide v3, v3, LH0/m;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Le2/l;->c:Le2/d;

    if-eqz v3, :cond_1

    iget v3, v3, Le2/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x745f

    iget-object v3, p0, Le2/l;->d:Le2/e;

    if-eqz v3, :cond_2

    iget v3, v3, Le2/e;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Le2/l;->e:Le2/c;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Le2/l;->f:I

    invoke-static {v3, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-boolean v3, p0, Le2/l;->g:Z

    invoke-static {v0, v1, v3}, LB/e;->e(IIZ)I

    move-result v0

    iget-object v3, p0, Le2/l;->h:Le2/k;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Le2/l;->i:Le2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Le2/l;->j:I

    const/16 v4, 0x3c1

    invoke-static {v3, v0, v4}, LB/e;->c(III)I

    move-result v0

    iget-object v3, p0, Le2/l;->k:Le2/m;

    if-eqz v3, :cond_4

    iget v2, v3, Le2/m;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Le2/l;->l:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextStyle(color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le2/l;->a:Lf2/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/l;->b:LH0/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/l;->c:Le2/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontStyle=null, textDecoration=null, textAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/l;->d:Le2/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/l;->e:Le2/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasShadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le2/l;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " textShadowStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/l;->h:Le2/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "textSizeResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le2/l;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/l;->i:Le2/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textVerticalAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/l;->k:Le2/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), textAppearanceResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Le2/l;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
