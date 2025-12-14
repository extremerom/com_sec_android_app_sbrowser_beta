.class public final LIb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLb/c;


# static fields
.field public static final d:LIb/e;

.field public static final synthetic e:[LAb/u;

.field public static final f:Lhc/c;

.field public static final g:Lhc/f;

.field public static final h:Lhc/b;


# instance fields
.field public final a:LMb/B;

.field public final b:Lsb/k;

.field public final c:Lxc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LIb/g;

    const-string v2, "cloneable"

    const-string v3, "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LIb/g;->e:[LAb/u;

    new-instance v0, LIb/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LIb/g;->d:LIb/e;

    sget-object v0, LGb/q;->l:Lhc/c;

    sput-object v0, LIb/g;->f:Lhc/c;

    sget-object v0, LGb/p;->c:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object v1

    sput-object v1, LIb/g;->g:Lhc/f;

    invoke-virtual {v0}, Lhc/d;->g()Lhc/c;

    move-result-object v0

    new-instance v1, Lhc/b;

    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v2

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    sput-object v1, LIb/g;->h:Lhc/b;

    return-void
.end method

.method public constructor <init>(Lxc/l;LMb/B;)V
    .locals 1

    sget-object v0, LIb/f;->a:LIb/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LIb/g;->a:LMb/B;

    iput-object v0, p0, LIb/g;->b:Lsb/k;

    new-instance p2, LDb/J;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0, p1}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, LIb/g;->c:Lxc/i;

    return-void
.end method


# virtual methods
.method public final a(Lhc/c;Lhc/f;)Z
    .locals 0

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LIb/g;->g:Lhc/f;

    invoke-virtual {p2, p0}, Lhc/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LIb/g;->f:Lhc/c;

    invoke-virtual {p1, p0}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Lhc/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LIb/g;->f:Lhc/c;

    invoke-virtual {p1, v0}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LIb/g;->c:Lxc/i;

    sget-object p1, LIb/g;->e:[LAb/u;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMb/l;

    invoke-static {p0}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    sget-object p0, Lfb/x;->a:Lfb/x;

    :goto_0
    return-object p0
.end method

.method public final c(Lhc/b;)LJb/f;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LIb/g;->h:Lhc/b;

    invoke-virtual {p1, v0}, Lhc/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LIb/g;->c:Lxc/i;

    sget-object p1, LIb/g;->e:[LAb/u;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMb/l;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
