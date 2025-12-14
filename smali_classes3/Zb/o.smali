.class public final LZb/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;

.field public d:Ldb/j;


# direct methods
.method public constructor <init>(Lcom/samsung/android/motionphoto/utils/ex/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LZb/o;->a:Ljava/lang/String;

    iput-object p3, p0, LZb/o;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LZb/o;->c:Ljava/util/ArrayList;

    new-instance p1, Ldb/j;

    const-string p2, "V"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LZb/o;->d:Ldb/j;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[LZb/d;)V
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LZb/o;->c:Ljava/util/ArrayList;

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, LJc/q;

    new-instance v1, LJ2/L;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p2}, LJ2/L;-><init>(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-direct {v0, p2, v1}, LJc/q;-><init>(ILjava/lang/Object;)V

    const/16 p2, 0xa

    invoke-static {v0, p2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lfb/C;->g(I)I

    move-result p2

    const/16 v1, 0x10

    if-ge p2, v1, :cond_1

    move p2, v1

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, LJc/q;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object v0, p2

    check-cast v0, LJc/c;

    iget-object v2, v0, LJc/c;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LJc/c;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfb/z;

    iget v2, v0, Lfb/z;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lfb/z;->b:Ljava/lang/Object;

    check-cast v0, LZb/d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p2, LZb/q;

    invoke-direct {p2, v1}, LZb/q;-><init>(Ljava/util/LinkedHashMap;)V

    :goto_1
    new-instance v0, Ldb/j;

    invoke-direct {v0, p1, p2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[LZb/d;)V
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJc/q;

    new-instance v1, LJ2/L;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p2}, LJ2/L;-><init>(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-direct {v0, p2, v1}, LJc/q;-><init>(ILjava/lang/Object;)V

    const/16 p2, 0xa

    invoke-static {v0, p2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lfb/C;->g(I)I

    move-result p2

    const/16 v1, 0x10

    if-ge p2, v1, :cond_0

    move p2, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, LJc/q;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object v0, p2

    check-cast v0, LJc/c;

    iget-object v2, v0, LJc/c;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, LJc/c;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfb/z;

    iget v2, v0, Lfb/z;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lfb/z;->b:Ljava/lang/Object;

    check-cast v0, LZb/d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p2, LZb/q;

    invoke-direct {p2, v1}, LZb/q;-><init>(Ljava/util/LinkedHashMap;)V

    new-instance v0, Ldb/j;

    invoke-direct {v0, p1, p2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, LZb/o;->d:Ldb/j;

    return-void
.end method

.method public final c(Lpc/c;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lpc/c;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getDesc(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldb/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, LZb/o;->d:Ldb/j;

    return-void
.end method
