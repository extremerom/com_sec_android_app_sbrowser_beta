.class public abstract LDb/F0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljc/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljc/j;->c:Ljc/j;

    sput-object v0, LDb/F0;->a:Ljc/j;

    return-void
.end method

.method public static a(LJb/d;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-static {p0}, LDb/I0;->g(LJb/d;)LMb/w;

    move-result-object v0

    invoke-interface {p0}, LJb/b;->N()LMb/w;

    move-result-object p0

    const-string v1, "."

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LMb/w;->getType()Lyc/w;

    move-result-object v2

    invoke-static {v2}, LDb/F0;->d(Lyc/w;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, LMb/w;->getType()Lyc/w;

    move-result-object p0

    invoke-static {p0}, LDb/F0;->d(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v0, :cond_4

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method public static b(LJb/v;)Ljava/lang/String;
    .locals 8

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, LDb/F0;->a(LJb/d;Ljava/lang/StringBuilder;)V

    move-object v1, p0

    check-cast v1, LMb/n;

    invoke-virtual {v1}, LMb/n;->getName()Lhc/f;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    sget-object v3, LDb/F0;->a:Ljc/j;

    invoke-virtual {v3, v1, v2}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LJb/b;->H()Ljava/util/List;

    move-result-object v1

    const-string v2, "getValueParameters(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    sget-object v6, LDb/b;->h:LDb/b;

    const-string v4, "("

    const-string v5, ")"

    const-string v3, ", "

    const/16 v7, 0x30

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lfb/n;->H(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LJb/b;->p()Lyc/w;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, LDb/F0;->d(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(LJb/P;)Ljava/lang/String;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, LJb/Z;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "var "

    goto :goto_0

    :cond_0
    const-string v1, "val "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, LDb/F0;->a(LJb/d;Ljava/lang/StringBuilder;)V

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    sget-object v3, LDb/F0;->a:Ljc/j;

    invoke-virtual {v3, v1, v2}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LJb/Y;->getType()Lyc/w;

    move-result-object p0

    const-string v1, "getType(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LDb/F0;->d(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lyc/w;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LDb/F0;->a:Ljc/j;

    invoke-virtual {v0, p0}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
