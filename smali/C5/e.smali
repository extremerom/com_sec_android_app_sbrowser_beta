.class public final LC5/e;
.super LG5/t;
.source "SourceFile"


# instance fields
.field public final a:Lo3/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo3/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo3/e;-><init>(I)V

    iput-object v0, p0, LC5/e;->a:Lo3/e;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 3

    if-eq p2, p1, :cond_3

    iget-object p0, p0, LC5/e;->a:Lo3/e;

    iget-object v0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance p0, LC5/d;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, LC5/d;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Ljava/util/Vector;-><init>(I)V

    new-instance v1, LC5/d;

    invoke-direct {v1, p1, v0}, LC5/d;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, p1

    :goto_1
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Self suppression is not allowed."

    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
