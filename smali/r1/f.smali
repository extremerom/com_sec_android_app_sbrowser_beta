.class public final Lr1/f;
.super Lr1/e;
.source "SourceFile"


# instance fields
.field public u:Lr1/g;

.field public v:F

.field public w:Z


# direct methods
.method public constructor <init>(LU/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lr1/e;-><init>(LU/b;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lr1/f;->u:Lr1/g;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lr1/f;->v:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/f;->w:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;LG5/C;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr1/e;-><init>(Ljava/lang/Object;LG5/C;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lr1/f;->u:Lr1/g;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lr1/f;->v:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/f;->w:Z

    return-void
.end method


# virtual methods
.method public final f(F)V
    .locals 3

    iget-boolean v0, p0, Lr1/e;->f:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lr1/f;->v:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr1/f;->u:Lr1/g;

    if-nez v0, :cond_1

    new-instance v0, Lr1/g;

    invoke-direct {v0, p1}, Lr1/g;-><init>(F)V

    iput-object v0, p0, Lr1/f;->u:Lr1/g;

    :cond_1
    iget-object v0, p0, Lr1/f;->u:Lr1/g;

    float-to-double v1, p1

    iput-wide v1, v0, Lr1/g;->i:D

    invoke-virtual {p0}, Lr1/f;->h()V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lr1/e;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr1/e;->c(Z)V

    :cond_0
    iget v0, p0, Lr1/f;->v:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr1/f;->u:Lr1/g;

    if-nez v2, :cond_1

    new-instance v2, Lr1/g;

    invoke-direct {v2, v0}, Lr1/g;-><init>(F)V

    iput-object v2, p0, Lr1/f;->u:Lr1/g;

    goto :goto_0

    :cond_1
    float-to-double v3, v0

    iput-wide v3, v2, Lr1/g;->i:D

    :goto_0
    iput v1, p0, Lr1/f;->v:F

    :cond_2
    return-void

    :cond_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lr1/f;->u:Lr1/g;

    if-eqz v0, :cond_9

    iget-wide v1, v0, Lr1/g;->i:D

    double-to-float v1, v1

    float-to-double v1, v1

    iget v3, p0, Lr1/e;->g:F

    float-to-double v3, v3

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_8

    iget v3, p0, Lr1/e;->h:F

    float-to-double v3, v3

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_7

    iget v1, p0, Lr1/e;->j:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Lr1/g;->d:D

    const-wide v3, 0x404f400000000000L    # 62.5

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lr1/g;->e:D

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lr1/e;->f:Z

    if-nez v0, :cond_5

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr1/e;->f:Z

    iget-boolean v0, p0, Lr1/e;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr1/e;->e:LG5/C;

    iget-object v1, p0, Lr1/e;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LG5/C;->a(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lr1/e;->b:F

    :cond_0
    iget v0, p0, Lr1/e;->b:F

    iget v1, p0, Lr1/e;->g:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_4

    iget v1, p0, Lr1/e;->h:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_4

    sget-object v0, Lr1/a;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lr1/a;

    invoke-direct {v1}, Lr1/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/a;

    iget-object v1, v0, Lr1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lr1/a;->d:LZ3/x;

    if-nez v2, :cond_2

    new-instance v2, LZ3/x;

    iget-object v3, v0, Lr1/a;->c:LG5/J2;

    invoke-direct {v2, v3}, LZ3/x;-><init>(LG5/J2;)V

    iput-object v2, v0, Lr1/a;->d:LZ3/x;

    :cond_2
    iget-object v0, v0, Lr1/a;->d:LZ3/x;

    iget-object v2, v0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/databinding/i;

    iget-object v0, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_3
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-void

    :cond_6
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
