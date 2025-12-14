.class public final LJc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lub/a;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJc/k;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJc/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJc/j;->d:Ljava/lang/Object;

    const/4 p1, -0x2

    iput p1, p0, LJc/j;->b:I

    return-void
.end method

.method public constructor <init>(LN/v;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LJc/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJc/j;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, LJc/j;->b:I

    new-instance v0, LN/t;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LN/t;-><init>(LN/v;LJc/j;Lib/c;)V

    invoke-static {v0}, LG5/F3;->g(Lsb/n;)LJc/m;

    move-result-object p1

    iput-object p1, p0, LJc/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LJc/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJc/j;->c:Ljava/lang/Object;

    iput-object p2, p0, LJc/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget v0, p0, LJc/j;->b:I

    const/4 v1, -0x2

    iget-object v2, p0, LJc/j;->d:Ljava/lang/Object;

    check-cast v2, LJc/k;

    if-ne v0, v1, :cond_0

    iget-object v0, v2, LJc/k;->a:Lsb/a;

    invoke-interface {v0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v2, LJc/k;->b:Lsb/k;

    iget-object v1, p0, LJc/j;->c:Ljava/lang/Object;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LJc/j;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, LJc/j;->b:I

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, LJc/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LJc/j;->b:I

    iget-object p0, p0, LJc/j;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, LJc/j;->c:Ljava/lang/Object;

    check-cast p0, LJc/m;

    invoke-virtual {p0}, LJc/m;->hasNext()Z

    move-result p0

    return p0

    :pswitch_1
    iget v0, p0, LJc/j;->b:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, LJc/j;->b()V

    :cond_1
    iget p0, p0, LJc/j;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LJc/j;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, LJc/j;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJc/j;->c:Ljava/lang/Object;

    iget v1, p0, LJc/j;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LJc/j;->b:I

    iget-object v1, p0, LJc/j;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lg0/a;

    iget-object v1, v1, Lg0/a;->b:Ljava/lang/Object;

    iput-object v1, p0, LJc/j;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash code of an element ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") has changed after it was added to the persistent set."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, LJc/j;->c:Ljava/lang/Object;

    check-cast p0, LJc/m;

    invoke-virtual {p0}, LJc/m;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget v0, p0, LJc/j;->b:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, LJc/j;->b()V

    :cond_2
    iget v0, p0, LJc/j;->b:I

    if-eqz v0, :cond_3

    iget-object v0, p0, LJc/j;->c:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, LJc/j;->b:I

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, LJc/j;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget v0, p0, LJc/j;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, LJc/j;->d:Ljava/lang/Object;

    check-cast v2, LN/v;

    invoke-virtual {v2, v0}, LN/v;->k(I)V

    iput v1, p0, LJc/j;->b:I

    :cond_0
    return-void

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
