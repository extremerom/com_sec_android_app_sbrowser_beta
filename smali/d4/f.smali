.class public final Ld4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LP3/d;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/bumptech/glide/l;

.field public final e:LT3/a;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/j;

.field public i:Ld4/d;

.field public j:Z

.field public k:Ld4/d;

.field public l:Landroid/graphics/Bitmap;

.field public m:Ld4/d;

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;LP3/d;IILandroid/graphics/Bitmap;)V
    .locals 5

    sget-object v0, LY3/c;->b:LY3/c;

    iget-object v1, p1, Lcom/bumptech/glide/b;->b:LT3/a;

    iget-object p1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object v3, LS3/n;->b:LS3/n;

    new-instance v4, Lh4/h;

    invoke-direct {v4}, Lh4/a;-><init>()V

    invoke-virtual {v4, v3}, Lh4/a;->d(LS3/n;)Lh4/a;

    move-result-object v3

    check-cast v3, Lh4/h;

    invoke-virtual {v3}, Lh4/a;->u()Lh4/a;

    move-result-object v3

    check-cast v3, Lh4/h;

    invoke-virtual {v3}, Lh4/a;->p()Lh4/a;

    move-result-object v3

    check-cast v3, Lh4/h;

    invoke-virtual {v3, p3, p4}, Lh4/a;->g(II)Lh4/a;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/j;->w(Lh4/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Ld4/f;->c:Ljava/util/ArrayList;

    iput-object v2, p0, Ld4/f;->d:Lcom/bumptech/glide/l;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v2, LH6/r;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, LH6/r;-><init>(ILjava/lang/Object;)V

    invoke-direct {p3, p4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Ld4/f;->e:LT3/a;

    iput-object p3, p0, Ld4/f;->b:Landroid/os/Handler;

    iput-object p1, p0, Ld4/f;->h:Lcom/bumptech/glide/j;

    iput-object p2, p0, Ld4/f;->a:LP3/d;

    invoke-virtual {p0, v0, p5}, Ld4/f;->c(LQ3/o;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-boolean v0, p0, Ld4/f;->f:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Ld4/f;->g:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ld4/f;->m:Ld4/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Ld4/f;->m:Ld4/d;

    invoke-virtual {p0, v0}, Ld4/f;->b(Ld4/d;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld4/f;->g:Z

    iget-object v2, p0, Ld4/f;->a:LP3/d;

    iget-object v3, v2, LP3/d;->l:LP3/b;

    iget v4, v3, LP3/b;->c:I

    if-lez v4, :cond_4

    iget v5, v2, LP3/d;->k:I

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    if-ltz v5, :cond_3

    if-ge v5, v4, :cond_3

    iget-object v3, v3, LP3/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LP3/a;

    iget v3, v3, LP3/a;->i:I

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget v3, v2, LP3/d;->k:I

    add-int/2addr v3, v0

    iget-object v0, v2, LP3/d;->l:LP3/b;

    iget v0, v0, LP3/b;->c:I

    rem-int/2addr v3, v0

    iput v3, v2, LP3/d;->k:I

    new-instance v0, Ld4/d;

    iget-object v6, p0, Ld4/f;->b:Landroid/os/Handler;

    invoke-direct {v0, v6, v3, v4, v5}, Ld4/d;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Ld4/f;->k:Ld4/d;

    iget-object v0, p0, Ld4/f;->h:Lcom/bumptech/glide/j;

    new-instance v3, Lk4/d;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lk4/d;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lh4/h;

    invoke-direct {v4}, Lh4/a;-><init>()V

    invoke-virtual {v4, v3}, Lh4/a;->o(LQ3/g;)Lh4/a;

    move-result-object v3

    check-cast v3, Lh4/h;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/j;->w(Lh4/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object p0, p0, Ld4/f;->k:Ld4/d;

    sget-object v2, Ll4/f;->a:LR5/n;

    invoke-virtual {v0, p0, v1, v0, v2}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final b(Ld4/d;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld4/f;->g:Z

    iget-boolean v0, p0, Ld4/f;->j:Z

    const/4 v1, 0x2

    iget-object v2, p0, Ld4/f;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-boolean v0, p0, Ld4/f;->f:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Ld4/f;->m:Ld4/d;

    return-void

    :cond_1
    iget-object v0, p1, Ld4/d;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ld4/f;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v3, p0, Ld4/f;->e:LT3/a;

    invoke-interface {v3, v0}, LT3/a;->d(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld4/f;->l:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Ld4/f;->i:Ld4/d;

    iput-object p1, p0, Ld4/f;->i:Ld4/d;

    iget-object p1, p0, Ld4/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld4/e;

    check-cast v4, Ld4/b;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    :goto_1
    instance-of v6, v5, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    invoke-virtual {v4}, Ld4/b;->stop()V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v5, v4, Ld4/b;->a:LZ2/f;

    iget-object v5, v5, LZ2/f;->b:Ljava/lang/Object;

    check-cast v5, Ld4/f;

    iget-object v6, v5, Ld4/f;->i:Ld4/d;

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    iget v6, v6, Ld4/d;->b:I

    goto :goto_2

    :cond_5
    move v6, v7

    :goto_2
    iget-object v5, v5, Ld4/f;->a:LP3/d;

    iget-object v5, v5, LP3/d;->l:LP3/b;

    iget v5, v5, LP3/b;->c:I

    add-int/lit8 v5, v5, -0x1

    if-ne v6, v5, :cond_6

    iget v5, v4, Ld4/b;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Ld4/b;->f:I

    :cond_6
    iget v5, v4, Ld4/b;->g:I

    if-eq v5, v7, :cond_7

    iget v6, v4, Ld4/b;->f:I

    if-lt v6, v5, :cond_7

    invoke-virtual {v4}, Ld4/b;->stop()V

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    invoke-virtual {p0}, Ld4/f;->a()V

    return-void
.end method

.method public final c(LQ3/o;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ld4/f;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Ld4/f;->h:Lcom/bumptech/glide/j;

    new-instance v1, Lh4/h;

    invoke-direct {v1}, Lh4/a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lh4/a;->r(LQ3/o;Z)Lh4/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->w(Lh4/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    iput-object p1, p0, Ld4/f;->h:Lcom/bumptech/glide/j;

    invoke-static {p2}, Ll4/l;->c(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Ld4/f;->n:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Ld4/f;->o:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Ld4/f;->p:I

    return-void
.end method
