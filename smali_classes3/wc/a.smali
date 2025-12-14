.class public Lwc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKb/h;


# static fields
.field public static final synthetic b:[LAb/u;


# instance fields
.field public final a:Lxc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, Lwc/a;

    const-string v2, "annotations"

    const-string v3, "getAnnotations()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, Lwc/a;->b:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lxc/o;Lsb/a;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lxc/l;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, Lwc/a;->a:Lxc/i;

    return-void
.end method


# virtual methods
.method public final B(Lhc/c;)LKb/b;
    .locals 0

    invoke-static {p0, p1}, LG5/U3;->b(LKb/h;Lhc/c;)LKb/b;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object p0, p0, Lwc/a;->a:Lxc/i;

    sget-object v0, Lwc/a;->b:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object p0, p0, Lwc/a;->a:Lxc/i;

    sget-object v0, Lwc/a;->b:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final m0(Lhc/c;)Z
    .locals 0

    invoke-static {p0, p1}, LG5/U3;->d(LKb/h;Lhc/c;)Z

    move-result p0

    return p0
.end method
