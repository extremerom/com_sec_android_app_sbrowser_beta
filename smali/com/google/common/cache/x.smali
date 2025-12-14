.class public final enum Lcom/google/common/cache/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/Q;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/x;

.field public static final enum INSTANCE:Lcom/google/common/cache/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/cache/x;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/x;->INSTANCE:Lcom/google/common/cache/x;

    filled-new-array {v0}, [Lcom/google/common/cache/x;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/x;->$VALUES:[Lcom/google/common/cache/x;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/x;
    .locals 1

    const-class v0, Lcom/google/common/cache/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/x;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/x;
    .locals 1

    sget-object v0, Lcom/google/common/cache/x;->$VALUES:[Lcom/google/common/cache/x;

    invoke-virtual {v0}, [Lcom/google/common/cache/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/x;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/common/cache/Q;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/google/common/cache/Q;
    .locals 0

    return-object p0
.end method

.method public final d()Lcom/google/common/cache/I;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()Lcom/google/common/cache/Q;
    .locals 0

    return-object p0
.end method

.method public final f(Lcom/google/common/cache/Q;)V
    .locals 0

    return-void
.end method

.method public final g()Lcom/google/common/cache/Q;
    .locals 0

    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k(Lcom/google/common/cache/I;)V
    .locals 0

    return-void
.end method

.method public final l()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final m(J)V
    .locals 0

    return-void
.end method

.method public final n()Lcom/google/common/cache/Q;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final o()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final p(J)V
    .locals 0

    return-void
.end method

.method public final q(Lcom/google/common/cache/Q;)V
    .locals 0

    return-void
.end method

.method public final r(Lcom/google/common/cache/Q;)V
    .locals 0

    return-void
.end method

.method public final s(Lcom/google/common/cache/Q;)V
    .locals 0

    return-void
.end method
