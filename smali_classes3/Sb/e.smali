.class public abstract LSb/e;
.super LSb/H;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# direct methods
.method public static final a(LJb/v;)LJb/v;
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, LMb/n;

    invoke-virtual {v0}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LSb/e;->b(Lhc/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, LSb/a;->c:LSb/a;

    invoke-static {p0, v0}, Loc/d;->b(LJb/d;Lsb/k;)LJb/d;

    move-result-object p0

    check-cast p0, LJb/v;

    return-object p0
.end method

.method public static b(Lhc/f;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LSb/H;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
