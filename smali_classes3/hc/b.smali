.class public final Lhc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhc/c;

.field public final b:Lhc/c;

.field public final c:Z


# direct methods
.method public constructor <init>(Lhc/c;Lhc/c;Z)V
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relativeClassName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/b;->a:Lhc/c;

    iput-object p2, p0, Lhc/b;->b:Lhc/c;

    iput-boolean p3, p0, Lhc/b;->c:Z

    iget-object p0, p2, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->c()Z

    return-void
.end method

.method public constructor <init>(Lhc/c;Lhc/f;)V
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topLevelName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lhc/c;->c:Lhc/c;

    invoke-static {p2}, LG5/C3;->c(Lhc/f;)Lhc/c;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    return-void
.end method

.method public static final c(Lhc/c;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-static {p0, v0}, LKc/k;->p(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "`"

    const/16 v1, 0x60

    invoke-static {v1, v0, p0}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Lhc/c;
    .locals 3

    iget-object v0, p0, Lhc/b;->a:Lhc/c;

    iget-object v1, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->c()Z

    move-result v1

    iget-object p0, p0, Lhc/b;->b:Lhc/c;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lhc/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    iget-object v0, v0, Lhc/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lhc/c;-><init>(Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lhc/b;->a:Lhc/c;

    iget-object v1, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->c()Z

    move-result v1

    iget-object p0, p0, Lhc/b;->b:Lhc/c;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lhc/b;->c(Lhc/c;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    iget-object v0, v0, Lhc/d;->a:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-static {v0, v2, v3}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lhc/b;->c(Lhc/c;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final d(Lhc/f;)Lhc/b;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhc/b;

    iget-object v1, p0, Lhc/b;->b:Lhc/c;

    invoke-virtual {v1, p1}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object p1

    iget-boolean v1, p0, Lhc/b;->c:Z

    iget-object p0, p0, Lhc/b;->a:Lhc/c;

    invoke-direct {v0, p0, p1, v1}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    return-object v0
.end method

.method public final e()Lhc/b;
    .locals 3

    iget-object v0, p0, Lhc/b;->b:Lhc/c;

    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v0

    iget-object v1, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lhc/b;

    iget-object v2, p0, Lhc/b;->a:Lhc/c;

    iget-boolean p0, p0, Lhc/b;->c:Z

    invoke-direct {v1, v2, v0, p0}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhc/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lhc/b;

    iget-object v1, p1, Lhc/b;->a:Lhc/c;

    iget-object v3, p0, Lhc/b;->a:Lhc/c;

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lhc/b;->b:Lhc/c;

    iget-object v3, p1, Lhc/b;->b:Lhc/c;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lhc/b;->c:Z

    iget-boolean p1, p1, Lhc/b;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()Lhc/f;
    .locals 0

    iget-object p0, p0, Lhc/b;->b:Lhc/c;

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->f()Lhc/f;

    move-result-object p0

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lhc/b;->b:Lhc/c;

    invoke-virtual {p0}, Lhc/c;->b()Lhc/c;

    move-result-object p0

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->c()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lhc/b;->a:Lhc/c;

    invoke-virtual {v0}, Lhc/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lhc/b;->b:Lhc/c;

    invoke-virtual {v1}, Lhc/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lhc/b;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lhc/b;->a:Lhc/c;

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lhc/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lhc/b;->b()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
