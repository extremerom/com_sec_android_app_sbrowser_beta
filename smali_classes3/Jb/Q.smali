.class public final LJb/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LJb/T;

.field public static final synthetic e:[LAb/u;


# instance fields
.field public final a:LMb/c;

.field public final b:Lsb/k;

.field public final c:Lxc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LJb/Q;

    const-string v2, "scopeForOwnerModule"

    const-string v3, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LJb/Q;->e:[LAb/u;

    new-instance v0, LJb/T;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LJb/T;-><init>(I)V

    sput-object v0, LJb/Q;->d:LJb/T;

    return-void
.end method

.method public constructor <init>(LMb/c;Lxc/o;Lsb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJb/Q;->a:LMb/c;

    iput-object p3, p0, LJb/Q;->b:Lsb/k;

    new-instance p1, LDb/E;

    const/4 p3, 0x7

    invoke-direct {p1, p3, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    check-cast p2, Lxc/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lxc/i;

    invoke-direct {p3, p2, p1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p3, p0, LJb/Q;->c:Lxc/i;

    return-void
.end method
