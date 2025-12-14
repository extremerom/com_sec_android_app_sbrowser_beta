.class public abstract LJ2/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJ2/U;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ2/i0;->a:I

    const-string v0, "database"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/i0;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LJ2/i0;->c:Ljava/lang/Object;

    new-instance p1, LJ2/L;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, LJ2/L;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, LJ2/i0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[LW6/d;)V
    .locals 6

    const/4 v0, 0x1

    iput v0, p0, LJ2/i0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/i0;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    iget-object v4, v3, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v3, LW6/d;->a:Ljava/lang/Class;

    if-nez v4, :cond_0

    invoke-virtual {p1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "KeyTypeManager constructed with duplicate factories for primitive "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    array-length v0, p2

    if-lez v0, :cond_2

    aget-object p2, p2, v1

    iget-object p2, p2, LW6/d;->a:Ljava/lang/Class;

    iput-object p2, p0, LJ2/i0;->d:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-class p2, Ljava/lang/Void;

    iput-object p2, p0, LJ2/i0;->d:Ljava/lang/Object;

    :goto_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LJ2/i0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LJ2/i0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/i0;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJ2/i0;->c:Ljava/lang/Object;

    iput-object p1, p0, LJ2/i0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, LJ2/i0;->a:I

    iput-object p1, p0, LJ2/i0;->b:Ljava/lang/Object;

    iput-object p3, p0, LJ2/i0;->c:Ljava/lang/Object;

    iput-object p4, p0, LJ2/i0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LT2/h;
    .locals 4

    iget-object v0, p0, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v0, LJ2/U;

    invoke-virtual {v0}, LJ2/U;->assertNotMainThread()V

    iget-object v1, p0, LJ2/i0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, LJ2/i0;->d:Ljava/lang/Object;

    check-cast p0, Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LT2/h;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LJ2/i0;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, LJ2/U;->compileStatement(Ljava/lang/String;)LT2/h;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LJ2/i0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, LJ2/i0;->b:Ljava/lang/Object;

    iput-object v0, p0, LJ2/i0;->d:Ljava/lang/Object;

    invoke-virtual {p0}, LJ2/i0;->o()V

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lhc/c;
.end method

.method public e()V
    .locals 2

    new-instance v0, Lt3/g;

    invoke-direct {v0, p0}, Lt3/g;-><init>(LJ2/i0;)V

    iget-object v1, p0, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object p0, p0, LJ2/i0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/y;

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/y;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LJ2/i0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LJ2/i0;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, LJ2/i0;->d:Ljava/lang/Object;

    return-void
.end method

.method public g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LJ2/i0;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public i(Lcom/google/crypto/tink/shaded/protobuf/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LJ2/i0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW6/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LW6/d;->a(Lcom/google/crypto/tink/shaded/protobuf/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Requested primitive class "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract j(ILjava/lang/Object;)V
.end method

.method public abstract k(ILjava/lang/Object;)V
.end method

.method public abstract l()LF3/f;
.end method

.method public abstract m()Lc7/l0;
.end method

.method public abstract n(III)V
.end method

.method public abstract o()V
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public abstract q(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/a;
.end method

.method public r(LT2/h;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ2/i0;->d:Ljava/lang/Object;

    check-cast v0, Ldb/o;

    invoke-virtual {v0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT2/h;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, LJ2/i0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public abstract s(II)V
.end method

.method public abstract t(Ljava/lang/Object;)[B
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LJ2/i0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LJ2/i0;->d()Lhc/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, LJ2/i0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LJ2/i0;->d:Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "empty stack"

    invoke-static {p0}, La0/d;->O(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract v(Lcom/google/crypto/tink/shaded/protobuf/a;)V
.end method
