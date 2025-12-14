.class public final synthetic LJ2/p;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput p7, p0, LJ2/p;->a:I

    invoke-direct/range {p0 .. p6}, Ltb/i;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LJ2/p;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LBc/d;

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Lzc/e;

    invoke-virtual {p0, p1}, Lzc/e;->a(LBc/d;)Lyc/d0;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lzc/f;

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lwc/g;

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Lwc/i;

    invoke-direct {v0, p0, p1}, Lwc/g;-><init>(Lwc/i;Lzc/f;)V

    return-object v0

    :pswitch_1
    check-cast p1, Lhc/f;

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Lwc/i;

    invoke-virtual {p0, p1}, Lwc/i;->E0(Lhc/f;)Lyc/A;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Lvc/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lvc/d;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lhc/f;

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, LWb/p;

    invoke-virtual {p0, p1}, LWb/p;->O(Lhc/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lhc/f;

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, LWb/p;

    invoke-virtual {p0, p1}, LWb/p;->N(Lhc/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, LNc/g0;

    invoke-interface {p0, p1}, LNc/g0;->c(Ljava/lang/Throwable;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/util/Set;

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, LJ2/s;

    iget-object v0, p0, LJ2/s;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p0, p0, LJ2/s;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ2/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LJ2/F;->b:[I

    array-length v2, v1

    sget-object v3, Lfb/x;->a:Lfb/x;

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_3

    new-instance v2, Lgb/h;

    invoke-direct {v2}, Lgb/h;-><init>()V

    array-length v3, v1

    move v4, v5

    :goto_1
    if-ge v5, v3, :cond_2

    aget v6, v1, v5

    add-int/lit8 v7, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, LJ2/F;->c:[Ljava/lang/String;

    aget-object v4, v6, v4

    invoke-virtual {v2, v4}, Lgb/h;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lfb/F;->a(Lgb/h;)Lgb/h;

    move-result-object v3

    goto :goto_2

    :cond_3
    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v3, v0, LJ2/F;->d:Ljava/util/Set;

    :cond_4
    :goto_2
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, LJ2/F;->a:LJ2/n;

    invoke-virtual {v0, v3}, LJ2/n;->a(Ljava/util/Set;)V

    goto :goto_0

    :cond_5
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
