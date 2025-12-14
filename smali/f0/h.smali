.class public final Lf0/h;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Lub/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgb/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf0/h;->a:I

    const-string v0, "backing"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lf0/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Li0/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf0/h;->a:I

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lf0/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lf0/h;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lf0/h;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p0, "elements"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Lf0/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Lgb/f;

    invoke-virtual {p0}, Lgb/f;->clear()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Li0/d;

    invoke-virtual {p0}, Li0/d;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lf0/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Lgb/f;

    invoke-virtual {p0, p1}, Lgb/f;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Li0/d;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lf0/h;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Lgb/f;

    invoke-virtual {p0}, Lgb/f;->isEmpty()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 6

    iget v0, p0, Lf0/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Lgb/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lgb/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lgb/d;-><init>(Lgb/f;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lf0/g;

    const/16 v1, 0x8

    new-array v2, v1, [Lf0/m;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lf0/n;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lf0/n;-><init>(I)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Li0/d;

    invoke-direct {v0, p0, v2}, Lf0/e;-><init>(Li0/d;[Lf0/m;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lf0/h;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Lgb/f;

    invoke-virtual {p0}, Lgb/f;->c()V

    invoke-virtual {p0, p1}, Lgb/f;->i(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lgb/f;->m(I)V

    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lf0/h;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast v0, Lgb/f;

    invoke-virtual {v0}, Lgb/f;->c()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lf0/h;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast v0, Lgb/f;

    invoke-virtual {v0}, Lgb/f;->c()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lf0/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Lgb/f;

    iget p0, p0, Lgb/f;->i:I

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lf0/h;->b:Ljava/lang/Object;

    check-cast p0, Li0/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Li0/d;->e:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
