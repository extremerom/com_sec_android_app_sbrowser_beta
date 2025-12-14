.class public final LJc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lub/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/util/Iterator;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJc/t;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJc/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJc/s;->c:Ljava/lang/Object;

    iget-object p1, p1, LJc/t;->a:LJc/l;

    invoke-interface {p1}, LJc/l;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LJc/s;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lbd/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LJc/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJc/s;->c:Ljava/lang/Object;

    iput-object p1, p0, LJc/s;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, LJc/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LJc/s;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, LJc/s;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LJc/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJc/s;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lf1/X;->a:Lf1/X;

    invoke-virtual {v1, v0}, Lf1/X;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    iget-object v2, p0, LJc/s;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, LJc/s;->b:Ljava/util/Iterator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, LJc/s;->b:Ljava/util/Iterator;

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LJc/s;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    iput-object v1, p0, LJc/s;->b:Ljava/util/Iterator;

    invoke-static {v2}, Lfb/t;->t(Ljava/util/AbstractList;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :pswitch_0
    iget-object v0, p0, LJc/s;->c:Ljava/lang/Object;

    check-cast v0, LJc/t;

    iget-object v0, v0, LJc/t;->b:Lsb/k;

    iget-object p0, p0, LJc/s;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, LJc/s;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
