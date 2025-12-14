.class public final LMb/y;
.super LMb/n;
.source "SourceFile"

# interfaces
.implements LJb/M;


# static fields
.field public static final synthetic i:[LAb/u;


# instance fields
.field public final d:LMb/B;

.field public final e:Lhc/c;

.field public final f:Lxc/i;

.field public final g:Lxc/i;

.field public final h:Lrc/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltb/p;

    const-class v1, LMb/y;

    const-string v2, "fragments"

    const-string v3, "getFragments()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "empty"

    const-string v5, "getEmpty()Z"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, LMb/y;->i:[LAb/u;

    return-void
.end method

.method public constructor <init>(LMb/B;Lhc/c;Lxc/l;)V
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LKb/g;->a:LKb/f;

    iget-object v1, p2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lhc/d;->e:Lhc/f;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lhc/d;->f()Lhc/f;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v0, v1}, LMb/n;-><init>(LKb/h;Lhc/f;)V

    iput-object p1, p0, LMb/y;->d:LMb/B;

    iput-object p2, p0, LMb/y;->e:Lhc/c;

    new-instance p1, LMb/x;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LMb/x;-><init>(LMb/y;I)V

    new-instance p2, Lxc/i;

    invoke-direct {p2, p3, p1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p2, p0, LMb/y;->f:Lxc/i;

    new-instance p1, LMb/x;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LMb/x;-><init>(LMb/y;I)V

    new-instance p2, Lxc/i;

    invoke-direct {p2, p3, p1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p2, p0, LMb/y;->g:Lxc/i;

    new-instance p1, Lrc/k;

    new-instance p2, LMb/x;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, LMb/x;-><init>(LMb/y;I)V

    invoke-direct {p1, p3, p2}, Lrc/k;-><init>(Lxc/o;Lsb/a;)V

    iput-object p1, p0, LMb/y;->h:Lrc/k;

    return-void
.end method


# virtual methods
.method public final a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LJb/n;->c(LMb/y;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LJb/M;

    if-eqz v0, :cond_0

    check-cast p1, LJb/M;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    check-cast p1, LMb/y;

    iget-object v1, p0, LMb/y;->e:Lhc/c;

    iget-object v2, p1, LMb/y;->e:Lhc/c;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, LMb/y;->d:LMb/B;

    iget-object p1, p1, LMb/y;->d:LMb/B;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LMb/y;->d:LMb/B;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, LMb/y;->e:Lhc/c;

    invoke-virtual {p0}, Lhc/c;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final k()LJb/l;
    .locals 2

    iget-object v0, p0, LMb/y;->e:Lhc/c;

    iget-object v1, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v0

    iget-object p0, p0, LMb/y;->d:LMb/B;

    invoke-virtual {p0, v0}, LMb/B;->q0(Lhc/c;)LJb/M;

    move-result-object p0

    :goto_0
    return-object p0
.end method
