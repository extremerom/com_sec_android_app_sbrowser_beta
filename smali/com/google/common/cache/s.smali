.class public abstract enum Lcom/google/common/cache/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/s;

.field static final ACCESS_MASK:I = 0x1

.field public static final enum STRONG:Lcom/google/common/cache/s;

.field public static final enum STRONG_ACCESS:Lcom/google/common/cache/s;

.field public static final enum STRONG_ACCESS_WRITE:Lcom/google/common/cache/s;

.field public static final enum STRONG_WRITE:Lcom/google/common/cache/s;

.field public static final enum WEAK:Lcom/google/common/cache/s;

.field public static final enum WEAK_ACCESS:Lcom/google/common/cache/s;

.field public static final enum WEAK_ACCESS_WRITE:Lcom/google/common/cache/s;

.field static final WEAK_MASK:I = 0x4

.field public static final enum WEAK_WRITE:Lcom/google/common/cache/s;

.field static final WRITE_MASK:I = 0x2

.field static final factories:[Lcom/google/common/cache/s;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    new-instance v9, Lcom/google/common/cache/k;

    invoke-direct {v9}, Lcom/google/common/cache/k;-><init>()V

    sput-object v9, Lcom/google/common/cache/s;->STRONG:Lcom/google/common/cache/s;

    new-instance v10, Lcom/google/common/cache/l;

    invoke-direct {v10}, Lcom/google/common/cache/l;-><init>()V

    sput-object v10, Lcom/google/common/cache/s;->STRONG_ACCESS:Lcom/google/common/cache/s;

    new-instance v11, Lcom/google/common/cache/m;

    invoke-direct {v11}, Lcom/google/common/cache/m;-><init>()V

    sput-object v11, Lcom/google/common/cache/s;->STRONG_WRITE:Lcom/google/common/cache/s;

    new-instance v12, Lcom/google/common/cache/n;

    invoke-direct {v12}, Lcom/google/common/cache/n;-><init>()V

    sput-object v12, Lcom/google/common/cache/s;->STRONG_ACCESS_WRITE:Lcom/google/common/cache/s;

    new-instance v13, Lcom/google/common/cache/o;

    invoke-direct {v13}, Lcom/google/common/cache/o;-><init>()V

    sput-object v13, Lcom/google/common/cache/s;->WEAK:Lcom/google/common/cache/s;

    new-instance v14, Lcom/google/common/cache/p;

    invoke-direct {v14}, Lcom/google/common/cache/p;-><init>()V

    sput-object v14, Lcom/google/common/cache/s;->WEAK_ACCESS:Lcom/google/common/cache/s;

    new-instance v15, Lcom/google/common/cache/q;

    invoke-direct {v15}, Lcom/google/common/cache/q;-><init>()V

    sput-object v15, Lcom/google/common/cache/s;->WEAK_WRITE:Lcom/google/common/cache/s;

    new-instance v16, Lcom/google/common/cache/r;

    invoke-direct/range {v16 .. v16}, Lcom/google/common/cache/r;-><init>()V

    sput-object v16, Lcom/google/common/cache/s;->WEAK_ACCESS_WRITE:Lcom/google/common/cache/s;

    new-array v0, v8, [Lcom/google/common/cache/s;

    aput-object v9, v0, v7

    aput-object v10, v0, v6

    aput-object v11, v0, v5

    aput-object v12, v0, v4

    aput-object v13, v0, v3

    aput-object v14, v0, v2

    aput-object v15, v0, v1

    const/16 v17, 0x7

    aput-object v16, v0, v17

    sput-object v0, Lcom/google/common/cache/s;->$VALUES:[Lcom/google/common/cache/s;

    new-array v0, v8, [Lcom/google/common/cache/s;

    aput-object v9, v0, v7

    aput-object v10, v0, v6

    aput-object v11, v0, v5

    aput-object v12, v0, v4

    aput-object v13, v0, v3

    aput-object v14, v0, v2

    aput-object v15, v0, v1

    aput-object v16, v0, v17

    sput-object v0, Lcom/google/common/cache/s;->factories:[Lcom/google/common/cache/s;

    return-void
.end method

.method public static a(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/common/cache/Q;->o()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/Q;->m(J)V

    invoke-interface {p0}, Lcom/google/common/cache/Q;->a()Lcom/google/common/cache/Q;

    move-result-object v0

    sget-object v1, Lcom/google/common/cache/P;->r:Ljava/util/logging/Logger;

    invoke-interface {v0, p1}, Lcom/google/common/cache/Q;->q(Lcom/google/common/cache/Q;)V

    invoke-interface {p1, v0}, Lcom/google/common/cache/Q;->f(Lcom/google/common/cache/Q;)V

    invoke-interface {p0}, Lcom/google/common/cache/Q;->e()Lcom/google/common/cache/Q;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/common/cache/Q;->q(Lcom/google/common/cache/Q;)V

    invoke-interface {v0, p1}, Lcom/google/common/cache/Q;->f(Lcom/google/common/cache/Q;)V

    sget-object p1, Lcom/google/common/cache/x;->INSTANCE:Lcom/google/common/cache/x;

    invoke-interface {p0, p1}, Lcom/google/common/cache/Q;->q(Lcom/google/common/cache/Q;)V

    invoke-interface {p0, p1}, Lcom/google/common/cache/Q;->f(Lcom/google/common/cache/Q;)V

    return-void
.end method

.method public static d(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/common/cache/Q;->l()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/Q;->p(J)V

    invoke-interface {p0}, Lcom/google/common/cache/Q;->g()Lcom/google/common/cache/Q;

    move-result-object v0

    sget-object v1, Lcom/google/common/cache/P;->r:Ljava/util/logging/Logger;

    invoke-interface {v0, p1}, Lcom/google/common/cache/Q;->r(Lcom/google/common/cache/Q;)V

    invoke-interface {p1, v0}, Lcom/google/common/cache/Q;->s(Lcom/google/common/cache/Q;)V

    invoke-interface {p0}, Lcom/google/common/cache/Q;->c()Lcom/google/common/cache/Q;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/common/cache/Q;->r(Lcom/google/common/cache/Q;)V

    invoke-interface {v0, p1}, Lcom/google/common/cache/Q;->s(Lcom/google/common/cache/Q;)V

    sget-object p1, Lcom/google/common/cache/x;->INSTANCE:Lcom/google/common/cache/x;

    invoke-interface {p0, p1}, Lcom/google/common/cache/Q;->r(Lcom/google/common/cache/Q;)V

    invoke-interface {p0, p1}, Lcom/google/common/cache/Q;->s(Lcom/google/common/cache/Q;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/s;
    .locals 1

    const-class v0, Lcom/google/common/cache/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/s;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/s;
    .locals 1

    sget-object v0, Lcom/google/common/cache/s;->$VALUES:[Lcom/google/common/cache/s;

    invoke-virtual {v0}, [Lcom/google/common/cache/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/s;

    return-object v0
.end method


# virtual methods
.method public c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/Q;
    .locals 0

    invoke-interface {p2}, Lcom/google/common/cache/Q;->h()I

    move-result p2

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/google/common/cache/s;->e(Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/Q;)Lcom/google/common/cache/Q;

    move-result-object p0

    return-object p0
.end method

.method public abstract e(Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/Q;)Lcom/google/common/cache/Q;
.end method
