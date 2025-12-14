.class public abstract Lh4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:LS3/n;

.field public c:Lcom/bumptech/glide/f;

.field public d:Landroid/graphics/drawable/ColorDrawable;

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:LQ3/g;

.field public j:Z

.field public k:LQ3/k;

.field public l:Ll4/c;

.field public m:Ljava/lang/Class;

.field public n:Z

.field public o:Landroid/content/res/Resources$Theme;

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LS3/n;->e:LS3/n;

    iput-object v0, p0, Lh4/a;->b:LS3/n;

    sget-object v0, Lcom/bumptech/glide/f;->NORMAL:Lcom/bumptech/glide/f;

    iput-object v0, p0, Lh4/a;->c:Lcom/bumptech/glide/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh4/a;->f:Z

    const/4 v1, -0x1

    iput v1, p0, Lh4/a;->g:I

    iput v1, p0, Lh4/a;->h:I

    sget-object v1, Lk4/c;->b:Lk4/c;

    iput-object v1, p0, Lh4/a;->i:LQ3/g;

    new-instance v1, LQ3/k;

    invoke-direct {v1}, LQ3/k;-><init>()V

    iput-object v1, p0, Lh4/a;->k:LQ3/k;

    new-instance v1, Ll4/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LN/A;-><init>(I)V

    iput-object v1, p0, Lh4/a;->l:Ll4/c;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lh4/a;->m:Ljava/lang/Class;

    iput-boolean v0, p0, Lh4/a;->q:Z

    return-void
.end method

.method public static e(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lh4/a;)Lh4/a;
    .locals 2

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/a;->a(Lh4/a;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p1, Lh4/a;->a:I

    iget v0, p1, Lh4/a;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lh4/a;->r:Z

    iput-boolean v0, p0, Lh4/a;->r:Z

    :cond_1
    iget v0, p1, Lh4/a;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lh4/a;->b:LS3/n;

    iput-object v0, p0, Lh4/a;->b:LS3/n;

    :cond_2
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lh4/a;->c:Lcom/bumptech/glide/f;

    iput-object v0, p0, Lh4/a;->c:Lcom/bumptech/glide/f;

    :cond_3
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lh4/a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lh4/a;->a:I

    :cond_4
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lh4/a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lh4/a;->a:I

    :cond_5
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lh4/a;->d:Landroid/graphics/drawable/ColorDrawable;

    iput-object v0, p0, Lh4/a;->d:Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    iput v0, p0, Lh4/a;->e:I

    iget v0, p0, Lh4/a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lh4/a;->a:I

    :cond_6
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lh4/a;->e:I

    iput v0, p0, Lh4/a;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lh4/a;->d:Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lh4/a;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lh4/a;->a:I

    :cond_7
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lh4/a;->f:Z

    iput-boolean v0, p0, Lh4/a;->f:Z

    :cond_8
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lh4/a;->h:I

    iput v0, p0, Lh4/a;->h:I

    iget v0, p1, Lh4/a;->g:I

    iput v0, p0, Lh4/a;->g:I

    :cond_9
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lh4/a;->i:LQ3/g;

    iput-object v0, p0, Lh4/a;->i:LQ3/g;

    :cond_a
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lh4/a;->m:Ljava/lang/Class;

    iput-object v0, p0, Lh4/a;->m:Ljava/lang/Class;

    :cond_b
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lh4/a;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lh4/a;->a:I

    :cond_c
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lh4/a;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lh4/a;->a:I

    :cond_d
    iget v0, p1, Lh4/a;->a:I

    const v1, 0x8000

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lh4/a;->o:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lh4/a;->o:Landroid/content/res/Resources$Theme;

    :cond_e
    iget v0, p1, Lh4/a;->a:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p1, Lh4/a;->j:Z

    iput-boolean v0, p0, Lh4/a;->j:Z

    :cond_f
    iget v0, p1, Lh4/a;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lh4/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lh4/a;->l:Ll4/c;

    iget-object v1, p1, Lh4/a;->l:Ll4/c;

    invoke-virtual {v0, v1}, LN/f;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lh4/a;->q:Z

    iput-boolean v0, p0, Lh4/a;->q:Z

    :cond_10
    iget v0, p0, Lh4/a;->a:I

    iget v1, p1, Lh4/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lh4/a;->a:I

    iget-object v0, p0, Lh4/a;->k:LQ3/k;

    iget-object p1, p1, Lh4/a;->k:LQ3/k;

    iget-object v0, v0, LQ3/k;->b:Ll4/c;

    iget-object p1, p1, LQ3/k;->b:Ll4/c;

    invoke-virtual {v0, p1}, Ll4/c;->g(LN/f;)V

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public b()Lh4/a;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/a;

    new-instance v1, LQ3/k;

    invoke-direct {v1}, LQ3/k;-><init>()V

    iput-object v1, v0, Lh4/a;->k:LQ3/k;

    iget-object v2, p0, Lh4/a;->k:LQ3/k;

    iget-object v1, v1, LQ3/k;->b:Ll4/c;

    iget-object v2, v2, LQ3/k;->b:Ll4/c;

    invoke-virtual {v1, v2}, Ll4/c;->g(LN/f;)V

    new-instance v1, Ll4/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LN/A;-><init>(I)V

    iput-object v1, v0, Lh4/a;->l:Ll4/c;

    iget-object p0, p0, Lh4/a;->l:Ll4/c;

    invoke-virtual {v1, p0}, LN/f;->putAll(Ljava/util/Map;)V

    iput-boolean v2, v0, Lh4/a;->n:Z

    iput-boolean v2, v0, Lh4/a;->p:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(Ljava/lang/Class;)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/a;->c(Ljava/lang/Class;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lh4/a;->m:Ljava/lang/Class;

    iget p1, p0, Lh4/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lh4/a;->a:I

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method public final d(LS3/n;)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/a;->d(LS3/n;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lh4/a;->b:LS3/n;

    iget p1, p0, Lh4/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lh4/a;->a:I

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lh4/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lh4/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Ll4/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lh4/a;->e:I

    iget v3, p1, Lh4/a;->e:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lh4/a;->d:Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p1, Lh4/a;->d:Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2, v3}, Ll4/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v0}, Ll4/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lh4/a;->f:Z

    iget-boolean v2, p1, Lh4/a;->f:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lh4/a;->g:I

    iget v2, p1, Lh4/a;->g:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lh4/a;->h:I

    iget v2, p1, Lh4/a;->h:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lh4/a;->j:Z

    iget-boolean v2, p1, Lh4/a;->j:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lh4/a;->b:LS3/n;

    iget-object v2, p1, Lh4/a;->b:LS3/n;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh4/a;->c:Lcom/bumptech/glide/f;

    iget-object v2, p1, Lh4/a;->c:Lcom/bumptech/glide/f;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lh4/a;->k:LQ3/k;

    iget-object v2, p1, Lh4/a;->k:LQ3/k;

    invoke-virtual {v0, v2}, LQ3/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh4/a;->l:Ll4/c;

    iget-object v2, p1, Lh4/a;->l:Ll4/c;

    invoke-virtual {v0, v2}, LN/A;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh4/a;->m:Ljava/lang/Class;

    iget-object v2, p1, Lh4/a;->m:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh4/a;->i:LQ3/g;

    iget-object v2, p1, Lh4/a;->i:LQ3/g;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lh4/a;->o:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lh4/a;->o:Landroid/content/res/Resources$Theme;

    invoke-static {p0, p1}, Ll4/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f(LZ3/n;LZ3/e;)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lh4/a;->f(LZ3/n;LZ3/e;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, LZ3/n;->g:LQ3/j;

    invoke-virtual {p0, v0, p1}, Lh4/a;->n(LQ3/j;Ljava/lang/Object;)Lh4/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lh4/a;->r(LQ3/o;Z)Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method public final g(II)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lh4/a;->g(II)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lh4/a;->h:I

    iput p2, p0, Lh4/a;->g:I

    iget p1, p0, Lh4/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lh4/a;->a:I

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final h()Lh4/a;
    .locals 2

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0}, Lh4/a;->h()Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f0807da

    iput v0, p0, Lh4/a;->e:I

    iget v0, p0, Lh4/a;->a:I

    or-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    iput-object v1, p0, Lh4/a;->d:Landroid/graphics/drawable/ColorDrawable;

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lh4/a;->a:I

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Ll4/l;->a:[C

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Ll4/l;->g(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ll4/l;->g(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget v3, p0, Lh4/a;->e:I

    invoke-static {v3, v0}, Ll4/l;->g(II)I

    move-result v0

    iget-object v3, p0, Lh4/a;->d:Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0, v3}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v1, v0}, Ll4/l;->g(II)I

    move-result v0

    invoke-static {v0, v2}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v2, p0, Lh4/a;->f:Z

    invoke-static {v2, v0}, Ll4/l;->g(II)I

    move-result v0

    iget v2, p0, Lh4/a;->g:I

    invoke-static {v2, v0}, Ll4/l;->g(II)I

    move-result v0

    iget v2, p0, Lh4/a;->h:I

    invoke-static {v2, v0}, Ll4/l;->g(II)I

    move-result v0

    iget-boolean v2, p0, Lh4/a;->j:Z

    invoke-static {v2, v0}, Ll4/l;->g(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ll4/l;->g(II)I

    move-result v0

    invoke-static {v1, v0}, Ll4/l;->g(II)I

    move-result v0

    invoke-static {v1, v0}, Ll4/l;->g(II)I

    move-result v0

    iget-object v1, p0, Lh4/a;->b:LS3/n;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh4/a;->c:Lcom/bumptech/glide/f;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh4/a;->k:LQ3/k;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh4/a;->l:Ll4/c;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh4/a;->m:Ljava/lang/Class;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh4/a;->i:LQ3/g;

    invoke-static {v0, v1}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lh4/a;->o:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p0}, Ll4/l;->h(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Landroid/graphics/drawable/ColorDrawable;)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/a;->i(Landroid/graphics/drawable/ColorDrawable;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lh4/a;->d:Landroid/graphics/drawable/ColorDrawable;

    iget p1, p0, Lh4/a;->a:I

    or-int/lit8 p1, p1, 0x40

    const/4 v0, 0x0

    iput v0, p0, Lh4/a;->e:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lh4/a;->a:I

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final j(Lcom/bumptech/glide/f;)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/a;->j(Lcom/bumptech/glide/f;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lh4/a;->c:Lcom/bumptech/glide/f;

    iget p1, p0, Lh4/a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lh4/a;->a:I

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final k(LQ3/j;)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/a;->k(LQ3/j;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lh4/a;->k:LQ3/k;

    iget-object v0, v0, LQ3/k;->b:Ll4/c;

    invoke-virtual {v0, p1}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final l(LZ3/n;LZ3/e;Z)Lh4/a;
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lh4/a;->s(LZ3/n;LZ3/e;)Lh4/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lh4/a;->f(LZ3/n;LZ3/e;)Lh4/a;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lh4/a;->q:Z

    return-object p0
.end method

.method public final m()V
    .locals 1

    iget-boolean p0, p0, Lh4/a;->n:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n(LQ3/j;Ljava/lang/Object;)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lh4/a;->n(LQ3/j;Ljava/lang/Object;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Ll4/f;->b(Ljava/lang/Object;)V

    invoke-static {p2}, Ll4/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/a;->k:LQ3/k;

    iget-object v0, v0, LQ3/k;->b:Ll4/c;

    invoke-virtual {v0, p1, p2}, Ll4/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final o(LQ3/g;)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/a;->o(LQ3/g;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lh4/a;->i:LQ3/g;

    iget p1, p0, Lh4/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lh4/a;->a:I

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final p()Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0}, Lh4/a;->p()Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lh4/a;->f:Z

    iget v0, p0, Lh4/a;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lh4/a;->a:I

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final q(Landroid/content/res/Resources$Theme;)Lh4/a;
    .locals 2

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/a;->q(Landroid/content/res/Resources$Theme;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lh4/a;->o:Landroid/content/res/Resources$Theme;

    if-eqz p1, :cond_1

    iget v0, p0, Lh4/a;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lh4/a;->a:I

    sget-object v0, Lb4/c;->b:LQ3/j;

    invoke-virtual {p0, v0, p1}, Lh4/a;->n(LQ3/j;Ljava/lang/Object;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_1
    iget p1, p0, Lh4/a;->a:I

    const v0, -0x8001

    and-int/2addr p1, v0

    iput p1, p0, Lh4/a;->a:I

    sget-object p1, Lb4/c;->b:LQ3/j;

    invoke-virtual {p0, p1}, Lh4/a;->k(LQ3/j;)Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method public final r(LQ3/o;Z)Lh4/a;
    .locals 2

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lh4/a;->r(LQ3/o;Z)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LZ3/t;

    invoke-direct {v0, p1, p2}, LZ3/t;-><init>(LQ3/o;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lh4/a;->t(Ljava/lang/Class;LQ3/o;Z)Lh4/a;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lh4/a;->t(Ljava/lang/Class;LQ3/o;Z)Lh4/a;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lh4/a;->t(Ljava/lang/Class;LQ3/o;Z)Lh4/a;

    new-instance v0, Ld4/c;

    invoke-direct {v0, p1}, Ld4/c;-><init>(LQ3/o;)V

    const-class p1, Ld4/b;

    invoke-virtual {p0, p1, v0, p2}, Lh4/a;->t(Ljava/lang/Class;LQ3/o;Z)Lh4/a;

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final s(LZ3/n;LZ3/e;)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lh4/a;->s(LZ3/n;LZ3/e;)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, LZ3/n;->g:LQ3/j;

    invoke-virtual {p0, v0, p1}, Lh4/a;->n(LQ3/j;Ljava/lang/Object;)Lh4/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lh4/a;->r(LQ3/o;Z)Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method public final t(Ljava/lang/Class;LQ3/o;Z)Lh4/a;
    .locals 1

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lh4/a;->t(Ljava/lang/Class;LQ3/o;Z)Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Ll4/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/a;->l:Ll4/c;

    invoke-virtual {v0, p1, p2}, Ll4/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lh4/a;->a:I

    const p2, 0x10800

    or-int/2addr p2, p1

    iput p2, p0, Lh4/a;->a:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lh4/a;->q:Z

    if-eqz p3, :cond_1

    const p2, 0x30800

    or-int/2addr p1, p2

    iput p1, p0, Lh4/a;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh4/a;->j:Z

    :cond_1
    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method

.method public final u()Lh4/a;
    .locals 2

    iget-boolean v0, p0, Lh4/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/a;->b()Lh4/a;

    move-result-object p0

    invoke-virtual {p0}, Lh4/a;->u()Lh4/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh4/a;->r:Z

    iget v0, p0, Lh4/a;->a:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lh4/a;->a:I

    invoke-virtual {p0}, Lh4/a;->m()V

    return-object p0
.end method
