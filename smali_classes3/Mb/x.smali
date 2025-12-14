.class public final LMb/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LMb/y;


# direct methods
.method public synthetic constructor <init>(LMb/y;I)V
    .locals 0

    iput p2, p0, LMb/x;->a:I

    iput-object p1, p0, LMb/x;->b:LMb/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LMb/x;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LMb/x;->b:LMb/y;

    iget-object v0, p0, LMb/y;->g:Lxc/i;

    sget-object v1, LMb/y;->i:[LAb/u;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v0, v2}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lrc/n;->b:Lrc/n;

    goto :goto_1

    :cond_0
    iget-object v0, p0, LMb/y;->f:Lxc/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJb/H;

    invoke-interface {v2}, LJb/H;->G()Lrc/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, LMb/N;

    iget-object v2, p0, LMb/y;->d:LMb/B;

    iget-object p0, p0, LMb/y;->e:Lhc/c;

    invoke-direct {v0, v2, p0}, LMb/N;-><init>(LJb/C;Lhc/c;)V

    invoke-static {v1, v0}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "package view scope for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, LG5/E;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lrc/o;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_0
    iget-object p0, p0, LMb/x;->b:LMb/y;

    iget-object v0, p0, LMb/y;->d:LMb/B;

    invoke-virtual {v0}, LMb/B;->T0()V

    iget-object v0, v0, LMb/B;->l:Ldb/o;

    invoke-virtual {v0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/m;

    iget-object p0, p0, LMb/y;->e:Lhc/c;

    invoke-static {v0, p0}, LJb/y;->h(LJb/I;Lhc/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LMb/x;->b:LMb/y;

    iget-object v0, p0, LMb/y;->d:LMb/B;

    invoke-virtual {v0}, LMb/B;->T0()V

    iget-object v0, v0, LMb/B;->l:Ldb/o;

    invoke-virtual {v0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/m;

    iget-object p0, p0, LMb/y;->e:Lhc/c;

    invoke-static {v0, p0}, LJb/y;->i(LJb/I;Lhc/c;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
