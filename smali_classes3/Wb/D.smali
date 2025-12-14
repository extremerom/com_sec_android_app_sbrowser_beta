.class public final LWb/D;
.super LHc/l;
.source "SourceFile"


# instance fields
.field public final synthetic b:LWb/j;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lsb/k;


# direct methods
.method public constructor <init>(LWb/j;Ljava/util/Set;Lsb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWb/D;->b:LWb/j;

    iput-object p2, p0, LWb/D;->c:Ljava/util/Set;

    iput-object p3, p0, LWb/D;->d:Lsb/k;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LJb/f;

    const-string v0, "current"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LWb/D;->b:LWb/j;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LJb/f;->j0()Lrc/o;

    move-result-object p1

    const-string v0, "getStaticScope(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LWb/F;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWb/D;->d:Lsb/k;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iget-object p0, p0, LWb/D;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final bridge synthetic i()Ljava/lang/Object;
    .locals 0

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
