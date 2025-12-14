.class public abstract LMb/g;
.super LMb/o;
.source "SourceFile"

# interfaces
.implements LJb/V;


# instance fields
.field public final f:Lxc/o;

.field public final g:LJb/p;

.field public h:Ljava/util/List;

.field public final i:LMb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LMb/g;

    const-string v2, "constructors"

    const-string v3, "getConstructors()Ljava/util/Collection;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    return-void
.end method

.method public constructor <init>(Lxc/o;LJb/l;LKb/h;Lhc/f;LJb/p;)V
    .locals 2

    sget-object v0, LJb/S;->L:LJb/T;

    const-string v1, "storageManager"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "containingDeclaration"

    invoke-static {p2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "visibilityImpl"

    invoke-static {p5, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4, v0}, LMb/o;-><init>(LJb/l;LKb/h;Lhc/f;LJb/S;)V

    iput-object p1, p0, LMb/g;->f:Lxc/o;

    iput-object p5, p0, LMb/g;->g:LJb/p;

    new-instance p2, LDb/E;

    const/16 p3, 0x9

    invoke-direct {p2, p3, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lxc/l;

    invoke-virtual {p1, p2}, Lxc/l;->a(Lsb/a;)Lxc/i;

    new-instance p1, LMb/f;

    invoke-direct {p1, p0}, LMb/f;-><init>(LMb/g;)V

    iput-object p1, p0, LMb/g;->i:LMb/f;

    return-void
.end method


# virtual methods
.method public final T0()LJb/m;
    .locals 0

    return-object p0
.end method

.method public final U()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final W()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final a()LJb/i;
    .locals 0

    return-object p0
.end method

.method public final a()LJb/l;
    .locals 0

    return-object p0
.end method

.method public final a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LJb/n;->e(LMb/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getVisibility()LJb/p;
    .locals 0

    iget-object p0, p0, LMb/g;->g:LJb/p;

    return-object p0
.end method

.method public final q()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LMb/g;->h:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "declaredTypeParametersImpl"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "typealias "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lyc/L;
    .locals 0

    iget-object p0, p0, LMb/g;->i:LMb/f;

    return-object p0
.end method

.method public final z()Z
    .locals 3

    move-object v0, p0

    check-cast v0, Lwc/t;

    invoke-virtual {v0}, Lwc/t;->W0()Lyc/A;

    move-result-object v0

    new-instance v1, LMb/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lyc/b0;->c(Lyc/w;Lsb/k;LHc/i;)Z

    move-result p0

    return p0
.end method
