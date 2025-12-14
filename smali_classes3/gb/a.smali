.class public final Lgb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lub/a;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgb/b;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lgb/a;->a:I

    const-string v0, "list"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgb/a;->e:Ljava/lang/Object;

    iput p2, p0, Lgb/a;->b:I

    const/4 p2, -0x1

    iput p2, p0, Lgb/a;->c:I

    invoke-static {p1}, Lgb/b;->m(Lgb/b;)I

    move-result p1

    iput p1, p0, Lgb/a;->d:I

    return-void
.end method

.method public constructor <init>(Lgb/c;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lgb/a;->a:I

    const-string v0, "list"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgb/a;->e:Ljava/lang/Object;

    iput p2, p0, Lgb/a;->b:I

    const/4 p2, -0x1

    iput p2, p0, Lgb/a;->c:I

    invoke-static {p1}, Lgb/c;->m(Lgb/c;)I

    move-result p1

    iput p1, p0, Lgb/a;->d:I

    return-void
.end method

.method public constructor <init>(Lk0/p;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lgb/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgb/a;->e:Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lgb/a;->b:I

    const/4 p2, -0x1

    iput p2, p0, Lgb/a;->c:I

    invoke-virtual {p1}, Lk0/p;->p()I

    move-result p1

    iput p1, p0, Lgb/a;->d:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lgb/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lgb/a;->d()V

    iget v0, p0, Lgb/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v1, Lk0/p;

    invoke-virtual {v1, v0, p1}, Lk0/p;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lgb/a;->c:I

    iget p1, p0, Lgb/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgb/a;->b:I

    invoke-virtual {v1}, Lk0/p;->p()I

    move-result p1

    iput p1, p0, Lgb/a;->d:I

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lgb/a;->c()V

    iget v0, p0, Lgb/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgb/a;->b:I

    iget-object v1, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v1, Lgb/c;

    invoke-virtual {v1, v0, p1}, Lgb/c;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lgb/a;->c:I

    invoke-static {v1}, Lgb/c;->m(Lgb/c;)I

    move-result p1

    iput p1, p0, Lgb/a;->d:I

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lgb/a;->b()V

    iget v0, p0, Lgb/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgb/a;->b:I

    iget-object v1, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v1, Lgb/b;

    invoke-virtual {v1, v0, p1}, Lgb/b;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lgb/a;->c:I

    invoke-static {v1}, Lgb/b;->m(Lgb/b;)I

    move-result p1

    iput p1, p0, Lgb/a;->d:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v0, Lgb/b;

    iget-object v0, v0, Lgb/b;->e:Lgb/c;

    invoke-static {v0}, Lgb/c;->m(Lgb/c;)I

    move-result v0

    iget p0, p0, Lgb/a;->d:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v0, Lgb/c;

    invoke-static {v0}, Lgb/c;->m(Lgb/c;)I

    move-result v0

    iget p0, p0, Lgb/a;->d:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v0, Lk0/p;

    invoke-virtual {v0}, Lk0/p;->p()I

    move-result v0

    iget p0, p0, Lgb/a;->d:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lgb/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lgb/a;->b:I

    iget-object p0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast p0, Lk0/p;

    invoke-virtual {p0}, Lk0/p;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget v0, p0, Lgb/a;->b:I

    iget-object p0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast p0, Lgb/c;

    iget p0, p0, Lgb/c;->b:I

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget v0, p0, Lgb/a;->b:I

    iget-object p0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast p0, Lgb/b;

    iget p0, p0, Lgb/b;->c:I

    if-ge v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lgb/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lgb/a;->b:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget p0, p0, Lgb/a;->b:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget p0, p0, Lgb/a;->b:I

    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lgb/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lgb/a;->d()V

    iget v0, p0, Lgb/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgb/a;->c:I

    iget-object v1, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v1, Lk0/p;

    invoke-virtual {v1}, Lk0/p;->size()I

    move-result v2

    invoke-static {v0, v2}, Lk0/q;->a(II)V

    invoke-virtual {v1, v0}, Lk0/p;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput v0, p0, Lgb/a;->b:I

    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Lgb/a;->c()V

    iget v0, p0, Lgb/a;->b:I

    iget-object v1, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v1, Lgb/c;

    iget v2, v1, Lgb/c;->b:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lgb/a;->b:I

    iput v0, p0, Lgb/a;->c:I

    iget-object p0, v1, Lgb/c;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lgb/a;->b()V

    iget v0, p0, Lgb/a;->b:I

    iget-object v1, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v1, Lgb/b;

    iget v2, v1, Lgb/b;->c:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lgb/a;->b:I

    iput v0, p0, Lgb/a;->c:I

    iget-object p0, v1, Lgb/b;->a:[Ljava/lang/Object;

    iget v1, v1, Lgb/b;->b:I

    add-int/2addr v1, v0

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lgb/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lgb/a;->b:I

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    iget p0, p0, Lgb/a;->b:I

    return p0

    :pswitch_1
    iget p0, p0, Lgb/a;->b:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lgb/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lgb/a;->d()V

    iget v0, p0, Lgb/a;->b:I

    iget-object v1, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v1, Lk0/p;

    invoke-virtual {v1}, Lk0/p;->size()I

    move-result v2

    invoke-static {v0, v2}, Lk0/q;->a(II)V

    iget v0, p0, Lgb/a;->b:I

    iput v0, p0, Lgb/a;->c:I

    invoke-virtual {v1, v0}, Lk0/p;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lgb/a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgb/a;->b:I

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lgb/a;->c()V

    iget v0, p0, Lgb/a;->b:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgb/a;->b:I

    iput v0, p0, Lgb/a;->c:I

    iget-object p0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast p0, Lgb/c;

    iget-object p0, p0, Lgb/c;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lgb/a;->b()V

    iget v0, p0, Lgb/a;->b:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgb/a;->b:I

    iput v0, p0, Lgb/a;->c:I

    iget-object p0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast p0, Lgb/b;

    iget-object v1, p0, Lgb/b;->a:[Ljava/lang/Object;

    iget p0, p0, Lgb/b;->b:I

    add-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lgb/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lgb/a;->b:I

    return p0

    :pswitch_0
    iget p0, p0, Lgb/a;->b:I

    add-int/lit8 p0, p0, -0x1

    return p0

    :pswitch_1
    iget p0, p0, Lgb/a;->b:I

    add-int/lit8 p0, p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lgb/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lgb/a;->d()V

    iget v0, p0, Lgb/a;->b:I

    iget-object v1, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v1, Lk0/p;

    invoke-virtual {v1, v0}, Lk0/p;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lgb/a;->b:I

    const/4 v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lgb/a;->b:I

    iput v2, p0, Lgb/a;->c:I

    invoke-virtual {v1}, Lk0/p;->p()I

    move-result v0

    iput v0, p0, Lgb/a;->d:I

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lgb/a;->c()V

    iget v0, p0, Lgb/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v2, Lgb/c;

    invoke-virtual {v2, v0}, Lgb/c;->i(I)Ljava/lang/Object;

    iget v0, p0, Lgb/a;->c:I

    iput v0, p0, Lgb/a;->b:I

    iput v1, p0, Lgb/a;->c:I

    invoke-static {v2}, Lgb/c;->m(Lgb/c;)I

    move-result v0

    iput v0, p0, Lgb/a;->d:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lgb/a;->b()V

    iget v0, p0, Lgb/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v2, Lgb/b;

    invoke-virtual {v2, v0}, Lgb/b;->i(I)Ljava/lang/Object;

    iget v0, p0, Lgb/a;->c:I

    iput v0, p0, Lgb/a;->b:I

    iput v1, p0, Lgb/a;->c:I

    invoke-static {v2}, Lgb/b;->m(Lgb/b;)I

    move-result v0

    iput v0, p0, Lgb/a;->d:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lgb/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lgb/a;->d()V

    iget v0, p0, Lgb/a;->c:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast v1, Lk0/p;

    invoke-virtual {v1, v0, p1}, Lk0/p;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lk0/p;->p()I

    move-result p1

    iput p1, p0, Lgb/a;->d:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lgb/a;->c()V

    iget v0, p0, Lgb/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast p0, Lgb/c;

    invoke-virtual {p0, v0, p1}, Lgb/c;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lgb/a;->b()V

    iget v0, p0, Lgb/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lgb/a;->e:Ljava/lang/Object;

    check-cast p0, Lgb/b;

    invoke-virtual {p0, v0, p1}, Lgb/b;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
