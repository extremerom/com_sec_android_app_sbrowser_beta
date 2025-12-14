.class public final LDb/W;
.super LDb/F;
.source "SourceFile"


# static fields
.field public static final synthetic g:[LAb/u;


# instance fields
.field public final c:LDb/B0;

.field public final d:LDb/B0;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ltb/p;

    const-class v1, LDb/W;

    const-string v2, "kotlinClass"

    const-string v3, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "scope"

    const-string v5, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v3

    const-string v5, "members"

    const-string v6, "getMembers()Ljava/util/Collection;"

    invoke-static {v1, v5, v6, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, LDb/W;->g:[LAb/u;

    return-void
.end method

.method public constructor <init>(LDb/Y;)V
    .locals 4

    invoke-direct {p0, p1}, LDb/F;-><init>(LDb/I;)V

    new-instance v0, LDb/T;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LDb/T;-><init>(LDb/Y;I)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object v0

    iput-object v0, p0, LDb/W;->c:LDb/B0;

    new-instance v0, LDb/U;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, LDb/U;-><init>(LDb/W;I)V

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object v0

    iput-object v0, p0, LDb/W;->d:LDb/B0;

    sget-object v0, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance v2, LDb/V;

    invoke-direct {v2, p0, p1}, LDb/V;-><init>(LDb/W;LDb/Y;)V

    invoke-static {v0, v2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v2

    iput-object v2, p0, LDb/W;->e:Ljava/lang/Object;

    new-instance v2, LDb/U;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LDb/U;-><init>(LDb/W;I)V

    invoke-static {v0, v2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v0

    iput-object v0, p0, LDb/W;->f:Ljava/lang/Object;

    new-instance v0, LDb/V;

    invoke-direct {v0, p1, p0}, LDb/V;-><init>(LDb/Y;LDb/W;)V

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    return-void
.end method
