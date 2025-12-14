.class public final LL2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS2/a;
.implements LYc/a;


# instance fields
.field public final a:LS2/a;

.field public final b:LYc/a;

.field public c:Lib/h;

.field public d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LS2/a;)V
    .locals 2

    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object v0

    const-string v1, "delegate"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/i;->a:LS2/a;

    iput-object v0, p0, LL2/i;->b:LYc/a;

    return-void
.end method


# virtual methods
.method public final a(Lkb/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LL2/i;->b:LYc/a;

    invoke-interface {p0, p1}, LYc/a;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    iget-object p0, p0, LL2/i;->b:LYc/a;

    invoke-interface {p0, p1}, LYc/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object v0, p0, LL2/i;->c:Lib/h;

    const/16 v1, 0xa

    if-nez v0, :cond_1

    iget-object v0, p0, LL2/i;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "\t\tStatus: Free connection"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_1
    :goto_0
    const-string v0, "\t\tStatus: Acquired connection"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, LL2/i;->c:Lib/h;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\tCoroutine: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p0, p0, LL2/i;->d:Ljava/lang/Throwable;

    if-eqz p0, :cond_6

    const-string v0, "\t\tAcquired:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LG5/y2;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, LKc/d;

    invoke-direct {v0, p0}, LKc/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LKc/d;->hasNext()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lfb/v;->a:Lfb/v;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, LKc/d;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, LKc/d;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v0}, LKc/d;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0}, LKc/d;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object p0, v2

    :goto_2
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, LL2/i;->a:LS2/a;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LL2/i;->a:LS2/a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w0(Ljava/lang/String;)LS2/c;
    .locals 1

    const-string v0, "sql"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LL2/i;->a:LS2/a;

    invoke-interface {p0, p1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    return-object p0
.end method
