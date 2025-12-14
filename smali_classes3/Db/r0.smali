.class public abstract LDb/r0;
.super LDb/s;
.source "SourceFile"

# interfaces
.implements LAb/u;


# static fields
.field public static final i:Ljava/lang/Object;


# instance fields
.field public final c:LDb/I;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:LDb/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LDb/r0;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LDb/I;LMb/J;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    invoke-virtual {v0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v3

    const-string v0, "asString(...)"

    invoke-static {v3, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, LDb/G0;->b(LJb/P;)LG5/H;

    move-result-object v0

    invoke-virtual {v0}, LG5/H;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ltb/c;->NO_RECEIVER:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, LDb/r0;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;LMb/J;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LDb/I;Ljava/lang/String;Ljava/lang/String;LMb/J;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, LDb/s;-><init>()V

    iput-object p1, p0, LDb/r0;->c:LDb/I;

    iput-object p2, p0, LDb/r0;->d:Ljava/lang/String;

    iput-object p3, p0, LDb/r0;->e:Ljava/lang/String;

    iput-object p5, p0, LDb/r0;->f:Ljava/lang/Object;

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance p2, LDb/l0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, LDb/l0;-><init>(LDb/r0;I)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, LDb/r0;->g:Ljava/lang/Object;

    new-instance p1, LDb/l0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LDb/l0;-><init>(LDb/r0;I)V

    invoke-static {p4, p1}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object p1

    iput-object p1, p0, LDb/r0;->h:LDb/B0;

    return-void
.end method

.method public constructor <init>(LDb/I;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LDb/r0;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;LMb/J;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d()LEb/g;
    .locals 0

    invoke-virtual {p0}, LDb/r0;->m()LDb/o0;

    move-result-object p0

    invoke-virtual {p0}, LDb/o0;->d()LEb/g;

    move-result-object p0

    return-object p0
.end method

.method public final e()LDb/I;
    .locals 0

    iget-object p0, p0, LDb/r0;->c:LDb/I;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {p1}, LDb/I0;->c(Ljava/lang/Object;)LDb/r0;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, LDb/r0;->c:LDb/I;

    iget-object v2, p1, LDb/r0;->c:LDb/I;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LDb/r0;->d:Ljava/lang/String;

    iget-object v2, p1, LDb/r0;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LDb/r0;->e:Ljava/lang/String;

    iget-object v2, p1, LDb/r0;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, LDb/r0;->f:Ljava/lang/Object;

    iget-object p1, p1, LDb/r0;->f:Ljava/lang/Object;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final f()LEb/g;
    .locals 0

    invoke-virtual {p0}, LDb/r0;->m()LDb/o0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic g()LJb/d;
    .locals 0

    invoke-virtual {p0}, LDb/r0;->l()LJb/P;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LDb/r0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, LDb/r0;->c:LDb/I;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, LDb/r0;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, LDb/r0;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final j()Z
    .locals 1

    iget-object p0, p0, LDb/r0;->f:Ljava/lang/Object;

    sget-object v0, Ltb/c;->NO_RECEIVER:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()Ljava/lang/reflect/Member;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, LDb/r0;->l()LJb/P;

    move-result-object v1

    invoke-interface {v1}, LJb/P;->B()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, LDb/G0;->a:Lhc/b;

    invoke-virtual {p0}, LDb/r0;->l()LJb/P;

    move-result-object v1

    invoke-static {v1}, LDb/G0;->b(LJb/P;)LG5/H;

    move-result-object v1

    instance-of v3, v1, LDb/n;

    if-eqz v3, :cond_2

    check-cast v1, LDb/n;

    iget-object v3, v1, LDb/n;->d:Lfc/e;

    iget v4, v3, Lfc/e;->b:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    iget-object v3, v3, Lfc/e;->g:Lfc/c;

    iget v4, v3, Lfc/c;->b:I

    and-int/lit8 v5, v4, 0x1

    if-ne v5, v0, :cond_1

    const/4 v0, 0x2

    and-int/2addr v4, v0

    if-ne v4, v0, :cond_1

    iget v0, v3, Lfc/c;->c:I

    iget-object v1, v1, LDb/n;->e:Lec/g;

    invoke-interface {v1, v0}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v3, Lfc/c;->d:I

    invoke-interface {v1, v2}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, LDb/r0;->c:LDb/I;

    invoke-virtual {p0, v0, v1}, LDb/I;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2

    :cond_2
    iget-object p0, p0, LDb/r0;->g:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public final l()LJb/P;
    .locals 1

    iget-object p0, p0, LDb/r0;->h:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "invoke(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LJb/P;

    return-object p0
.end method

.method public abstract m()LDb/o0;
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LDb/F0;->a:Ljc/j;

    invoke-virtual {p0}, LDb/r0;->l()LJb/P;

    move-result-object p0

    invoke-static {p0}, LDb/F0;->c(LJb/P;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
