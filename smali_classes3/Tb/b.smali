.class public LTb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LUb/i;


# static fields
.field public static final synthetic e:[LAb/u;


# instance fields
.field public final a:Lhc/c;

.field public final b:LJb/S;

.field public final c:Lxc/i;

.field public final d:LYb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LTb/b;

    const-string v2, "type"

    const-string v3, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LTb/b;->e:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lo3/i;LPb/d;Lhc/c;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LTb/b;->a:Lhc/c;

    iget-object p3, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p3, LVb/a;

    if-eqz p2, :cond_0

    iget-object v0, p3, LVb/a;->j:LOb/d;

    invoke-virtual {v0, p2}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, LJb/S;->L:LJb/T;

    :goto_0
    iput-object v0, p0, LTb/b;->b:LJb/S;

    iget-object p3, p3, LVb/a;->a:Lxc/l;

    new-instance v0, LDb/J;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p0}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lxc/i;

    invoke-direct {p1, p3, v0}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p1, p0, LTb/b;->c:Lxc/i;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, LPb/d;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lfb/n;->D(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LYb/a;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, LTb/b;->d:LYb/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 0

    sget-object p0, Lfb/w;->a:Lfb/w;

    return-object p0
.end method

.method public final b()Lhc/c;
    .locals 0

    iget-object p0, p0, LTb/b;->a:Lhc/c;

    return-object p0
.end method

.method public final e()LJb/S;
    .locals 0

    iget-object p0, p0, LTb/b;->b:LJb/S;

    return-object p0
.end method

.method public final getType()Lyc/w;
    .locals 2

    iget-object p0, p0, LTb/b;->c:Lxc/i;

    sget-object v0, LTb/b;->e:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/A;

    return-object p0
.end method
