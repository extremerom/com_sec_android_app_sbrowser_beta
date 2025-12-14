.class public final LIb/k;
.super LGb/i;
.source "SourceFile"


# static fields
.field public static final synthetic h:[LAb/u;


# instance fields
.field public f:LGb/m;

.field public final g:Lxc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LIb/k;

    const-string v2, "customizer"

    const-string v3, "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LIb/k;->h:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lxc/l;LIb/h;)V
    .locals 2

    const-string v0, "kind"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LGb/i;-><init>(Lxc/l;)V

    new-instance v0, LDb/J;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lxc/i;

    invoke-direct {v1, p1, v0}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v1, p0, LIb/k;->g:Lxc/i;

    sget-object p1, LIb/j;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, LGb/i;->c(Z)V

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LGb/i;->c(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final J()LIb/q;
    .locals 2

    sget-object v0, LIb/k;->h:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LIb/k;->g:Lxc/i;

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LIb/q;

    return-object p0
.end method

.method public final d()LLb/b;
    .locals 0

    invoke-virtual {p0}, LIb/k;->J()LIb/q;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/lang/Iterable;
    .locals 4

    invoke-super {p0}, LGb/i;->m()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, LIb/g;

    iget-object v2, p0, LGb/i;->d:Lxc/l;

    invoke-virtual {p0}, LGb/i;->l()LMb/B;

    move-result-object p0

    const-string v3, "getBuiltInsModule(...)"

    invoke-static {p0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, LIb/g;-><init>(Lxc/l;LMb/B;)V

    invoke-static {v0, v1}, Lfb/n;->Q(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final q()LLb/d;
    .locals 0

    invoke-virtual {p0}, LIb/k;->J()LIb/q;

    move-result-object p0

    return-object p0
.end method
