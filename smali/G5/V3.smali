.class public abstract LG5/V3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LKb/h;LKb/h;)LKb/h;
    .locals 3

    const-string v0, "first"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LKb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LKb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, LKb/i;

    const/4 v1, 0x2

    new-array v1, v1, [LKb/h;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, LKb/i;-><init>([LKb/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final b(LJb/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LIb/d;->a:Ljava/lang/String;

    invoke-static {p0}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v0

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-static {v0}, LIb/d;->f(Lhc/d;)Lhc/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lpc/b;->e(Lhc/b;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lac/g;->d:Lac/g;

    invoke-static {p0, v0}, LG5/S3;->a(LJb/f;Lac/g;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "internalName"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lsb/k;)Ljc/j;
    .locals 1

    const-string v0, "changeOptions"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljc/o;

    invoke-direct {v0}, Ljc/o;-><init>()V

    invoke-interface {p0, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    iput-boolean p0, v0, Ljc/o;->a:Z

    new-instance p0, Ljc/j;

    invoke-direct {p0, v0}, Ljc/j;-><init>(Ljc/o;)V

    return-object p0
.end method
