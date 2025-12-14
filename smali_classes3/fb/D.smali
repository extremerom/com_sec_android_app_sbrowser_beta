.class public final Lfb/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lub/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfb/E;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lfb/D;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb/D;->c:Ljava/lang/Object;

    iget-object v0, p1, Lfb/E;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lfb/n;->v(Lfb/E;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lfb/D;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ltb/u;Lk0/u;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lfb/D;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb/D;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfb/D;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lfb/D;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify a state list through an iterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lfb/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast v0, Ltb/u;

    iget v0, v0, Ltb/u;->a:I

    iget-object p0, p0, Lfb/D;->c:Ljava/lang/Object;

    check-cast p0, Lk0/u;

    iget p0, p0, Lk0/u;->d:I

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lfb/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ltb/u;

    iget p0, p0, Ltb/u;->a:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lfb/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast v0, Ltb/u;

    iget v1, v0, Ltb/u;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lfb/D;->c:Ljava/lang/Object;

    check-cast p0, Lk0/u;

    iget v2, p0, Lk0/u;->d:I

    invoke-static {v1, v2}, Lk0/q;->a(II)V

    iput v1, v0, Ltb/u;->a:I

    invoke-virtual {p0, v1}, Lk0/u;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lfb/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ltb/u;

    iget p0, p0, Ltb/u;->a:I

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    iget-object v0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget-object p0, p0, Lfb/D;->c:Ljava/lang/Object;

    check-cast p0, Lfb/E;

    invoke-static {p0}, Lfb/o;->f(Ljava/util/List;)I

    move-result p0

    sub-int/2addr p0, v0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lfb/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast v0, Ltb/u;

    iget v1, v0, Ltb/u;->a:I

    iget-object p0, p0, Lfb/D;->c:Ljava/lang/Object;

    check-cast p0, Lk0/u;

    iget v2, p0, Lk0/u;->d:I

    invoke-static {v1, v2}, Lk0/q;->a(II)V

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Ltb/u;->a:I

    invoke-virtual {p0, v1}, Lk0/u;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lfb/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ltb/u;

    iget p0, p0, Ltb/u;->a:I

    return p0

    :pswitch_0
    iget-object v0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget-object p0, p0, Lfb/D;->c:Ljava/lang/Object;

    check-cast p0, Lfb/E;

    invoke-static {p0}, Lfb/o;->f(Ljava/util/List;)I

    move-result p0

    sub-int/2addr p0, v0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget v0, p0, Lfb/D;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot modify a state list through an iterator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lfb/D;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify a state list through an iterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lfb/D;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
