.class public final Lcom/google/common/cache/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/google/common/cache/y;

.field public d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public e:Lcom/google/common/cache/Q;

.field public f:Lcom/google/common/cache/O;

.field public g:Lcom/google/common/cache/O;

.field public final synthetic h:Lcom/google/common/cache/P;

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Lcom/google/common/cache/P;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/cache/t;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/t;->h:Lcom/google/common/cache/P;

    iget-object p1, p1, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/cache/t;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/cache/t;->b:I

    invoke-virtual {p0}, Lcom/google/common/cache/t;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/t;->f:Lcom/google/common/cache/O;

    invoke-virtual {p0}, Lcom/google/common/cache/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/t;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/google/common/cache/t;->a:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/t;->h:Lcom/google/common/cache/P;

    iget-object v1, v1, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/t;->a:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/cache/t;->c:Lcom/google/common/cache/y;

    iget v0, v0, Lcom/google/common/cache/y;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/cache/t;->c:Lcom/google/common/cache/y;

    iget-object v0, v0, Lcom/google/common/cache/y;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/t;->b:I

    invoke-virtual {p0}, Lcom/google/common/cache/t;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method public final c(Lcom/google/common/cache/Q;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/cache/t;->h:Lcom/google/common/cache/P;

    :try_start_0
    iget-object v1, v0, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v1}, Lcom/google/common/base/C;->t()J

    invoke-interface {p1}, Lcom/google/common/cache/Q;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/cache/Q;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    if-eqz v3, :cond_2

    new-instance p1, Lcom/google/common/cache/O;

    invoke-direct {p1, v0, v1, v3}, Lcom/google/common/cache/O;-><init>(Lcom/google/common/cache/P;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/common/cache/t;->f:Lcom/google/common/cache/O;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/cache/t;->c:Lcom/google/common/cache/y;

    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/common/cache/t;->c:Lcom/google/common/cache/y;

    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    const/4 p0, 0x0

    return p0

    :goto_1
    iget-object p0, p0, Lcom/google/common/cache/t;->c:Lcom/google/common/cache/y;

    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    throw p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/cache/t;->e()Lcom/google/common/cache/O;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lcom/google/common/cache/O;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/t;->f:Lcom/google/common/cache/O;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/cache/t;->g:Lcom/google/common/cache/O;

    invoke-virtual {p0}, Lcom/google/common/cache/t;->b()V

    iget-object p0, p0, Lcom/google/common/cache/t;->g:Lcom/google/common/cache/O;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/t;->e:Lcom/google/common/cache/Q;

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Lcom/google/common/cache/Q;->n()Lcom/google/common/cache/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/t;->e:Lcom/google/common/cache/Q;

    iget-object v0, p0, Lcom/google/common/cache/t;->e:Lcom/google/common/cache/Q;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/common/cache/t;->c(Lcom/google/common/cache/Q;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/t;->e:Lcom/google/common/cache/Q;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final g()Z
    .locals 3

    :cond_0
    iget v0, p0, Lcom/google/common/cache/t;->b:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/t;->b:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/Q;

    iput-object v0, p0, Lcom/google/common/cache/t;->e:Lcom/google/common/cache/Q;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/t;->c(Lcom/google/common/cache/Q;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/t;->f:Lcom/google/common/cache/O;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/cache/t;->i:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/common/cache/t;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/common/cache/t;->e()Lcom/google/common/cache/O;

    move-result-object p0

    iget-object p0, p0, Lcom/google/common/cache/O;->b:Ljava/lang/Object;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/common/cache/t;->e()Lcom/google/common/cache/O;

    move-result-object p0

    iget-object p0, p0, Lcom/google/common/cache/O;->a:Ljava/lang/Object;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/t;->g:Lcom/google/common/cache/O;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/common/cache/O;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/cache/t;->h:Lcom/google/common/cache/P;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/P;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/t;->g:Lcom/google/common/cache/O;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
