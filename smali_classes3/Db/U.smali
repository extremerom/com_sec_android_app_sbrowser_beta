.class public final LDb/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/W;


# direct methods
.method public synthetic constructor <init>(LDb/W;I)V
    .locals 0

    iput p2, p0, LDb/U;->a:I

    iput-object p1, p0, LDb/U;->b:LDb/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget v0, p0, LDb/U;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LDb/U;->b:LDb/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LDb/W;->g:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/W;->c:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOb/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, LOb/b;->b:Lbc/c;

    iget-object v1, p0, Lbc/c;->e:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lbc/c;->g:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Lgc/h;->h([Ljava/lang/String;[Ljava/lang/String;)Ldb/j;

    move-result-object v0

    iget-object v1, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Lgc/f;

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    check-cast v0, Lcc/E;

    new-instance v2, Ldb/p;

    iget-object p0, p0, Lbc/c;->d:Ljava/lang/Object;

    check-cast p0, Lec/f;

    invoke-direct {v2, v1, v0, p0}, Ldb/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :cond_0
    return-object v0

    :pswitch_0
    iget-object p0, p0, LDb/U;->b:LDb/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LDb/W;->g:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, p0, LDb/W;->c:LDb/B0;

    invoke-virtual {v0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOb/b;

    if-eqz v0, :cond_b

    sget-object v2, LDb/F;->b:[LAb/u;

    aget-object v1, v2, v1

    iget-object p0, p0, LDb/F;->a:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getValue(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LOb/e;

    iget-object p0, p0, LOb/e;->b:Lo3/t;

    iget-object v1, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, LOb/b;->a:Ljava/lang/Class;

    invoke-static {v2}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-static {v2}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v2

    iget-object v4, v0, LOb/b;->b:Lbc/c;

    sget-object v5, Lbc/b;->MULTIFILE_CLASS:Lbc/b;

    iget-object v6, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v6, Lac/f;

    iget-object v7, v4, Lbc/c;->c:Ljava/lang/Object;

    check-cast v7, Lbc/b;

    if-ne v7, v5, :cond_5

    const/4 v8, 0x0

    if-ne v7, v5, :cond_1

    iget-object v4, v4, Lbc/c;->e:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v8

    :goto_0
    if-eqz v4, :cond_2

    invoke-static {v4}, Lfb/l;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_2
    if-nez v8, :cond_3

    sget-object v8, Lfb/v;->a:Lfb/v;

    :cond_3
    check-cast v8, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lpc/b;->c(Ljava/lang/String;)Lpc/b;

    move-result-object v7

    new-instance v8, Lhc/c;

    const/16 v9, 0x2e

    iget-object v7, v7, Lpc/b;->a:Ljava/lang/String;

    const/16 v10, 0x2f

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v7, Lhc/b;

    invoke-virtual {v8}, Lhc/c;->b()Lhc/c;

    move-result-object v9

    iget-object v8, v8, Lhc/c;->a:Lhc/d;

    invoke-virtual {v8}, Lhc/d;->f()Lhc/f;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-virtual {v6}, Lac/f;->c()Luc/k;

    move-result-object v8

    iget-object v8, v8, Luc/k;->c:Luc/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lec/f;->g:Lec/f;

    iget-object v9, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v9, Lo3/f;

    invoke-static {v9, v7, v8}, LG5/T3;->c(Lo3/f;Lhc/b;Lec/f;)LOb/b;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_6
    new-instance p0, LIb/p;

    invoke-virtual {v6}, Lac/f;->c()Luc/k;

    move-result-object v5

    iget-object v5, v5, Luc/k;->b:LJb/C;

    iget-object v2, v2, Lhc/b;->a:Lhc/c;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v2, v7}, LIb/p;-><init>(LJb/C;Lhc/c;I)V

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LOb/b;

    invoke-virtual {v6, p0, v7}, Lac/f;->a(LJb/H;LOb/b;)Lwc/q;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {v5}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, LG5/E;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lrc/o;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v4, p0

    goto :goto_3

    :cond_9
    move-object v4, v0

    :cond_a
    :goto_3
    const-string p0, "getOrPut(...)"

    invoke-static {v4, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lrc/o;

    goto :goto_4

    :cond_b
    sget-object v4, Lrc/n;->b:Lrc/n;

    :goto_4
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
