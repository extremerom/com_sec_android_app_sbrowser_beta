.class public final LKb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKb/h;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, LKb/i;->a:I

    iput-object p2, p0, LKb/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhc/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LKb/i;->a:I

    const-string v0, "fqNameToMatch"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKb/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([LKb/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LKb/i;->a:I

    invoke-static {p1}, Lfb/l;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKb/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final B(Lhc/c;)LKb/b;
    .locals 2

    iget v0, p0, LKb/i;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LKb/i;->b:Ljava/lang/Object;

    check-cast p0, Lhc/c;

    invoke-virtual {p1, p0}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LZb/b;->a:LZb/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LKb/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object p0

    new-instance v0, LJb/J;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LJb/J;-><init>(Lhc/c;I)V

    invoke-static {p0, v0}, LJc/n;->u(LJc/l;Lsb/k;)LJc/h;

    move-result-object p0

    invoke-static {p0}, LJc/n;->o(LJc/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LKb/b;

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, LG5/U3;->b(LKb/h;Lhc/c;)LKb/b;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, LKb/i;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, LKb/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKb/h;

    invoke-interface {v0}, LKb/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :pswitch_1
    iget-object p0, p0, LKb/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget v0, p0, LKb/i;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lfb/u;->a:Lfb/u;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LKb/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object p0

    sget-object v0, LKb/k;->a:LKb/k;

    new-instance v1, LJc/i;

    sget-object v2, LJc/r;->a:LJc/r;

    invoke-direct {v1, p0, v0, v2}, LJc/i;-><init>(LJc/l;Lsb/k;Lsb/k;)V

    new-instance p0, LJc/g;

    invoke-direct {p0, v1}, LJc/g;-><init>(LJc/i;)V

    return-object p0

    :pswitch_1
    iget-object p0, p0, LKb/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m0(Lhc/c;)Z
    .locals 1

    iget v0, p0, LKb/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LG5/U3;->d(LKb/h;Lhc/c;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LKb/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object p0

    iget-object p0, p0, LJc/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKb/h;

    invoke-interface {v0, p1}, LKb/h;->m0(Lhc/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    invoke-static {p0, p1}, LG5/U3;->d(LKb/h;Lhc/c;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LKb/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LKb/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
