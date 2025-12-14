.class public abstract enum Lcom/google/common/cache/D;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/D;

.field public static final enum SOFT:Lcom/google/common/cache/D;

.field public static final enum STRONG:Lcom/google/common/cache/D;

.field public static final enum WEAK:Lcom/google/common/cache/D;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/common/cache/A;

    invoke-direct {v0}, Lcom/google/common/cache/A;-><init>()V

    sput-object v0, Lcom/google/common/cache/D;->STRONG:Lcom/google/common/cache/D;

    new-instance v1, Lcom/google/common/cache/B;

    invoke-direct {v1}, Lcom/google/common/cache/B;-><init>()V

    sput-object v1, Lcom/google/common/cache/D;->SOFT:Lcom/google/common/cache/D;

    new-instance v2, Lcom/google/common/cache/C;

    invoke-direct {v2}, Lcom/google/common/cache/C;-><init>()V

    sput-object v2, Lcom/google/common/cache/D;->WEAK:Lcom/google/common/cache/D;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/common/cache/D;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/google/common/cache/D;->$VALUES:[Lcom/google/common/cache/D;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/D;
    .locals 1

    const-class v0, Lcom/google/common/cache/D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/D;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/D;
    .locals 1

    sget-object v0, Lcom/google/common/cache/D;->$VALUES:[Lcom/google/common/cache/D;

    invoke-virtual {v0}, [Lcom/google/common/cache/D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/D;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/common/base/n;
.end method

.method public abstract c(Lcom/google/common/cache/y;Lcom/google/common/cache/Q;Ljava/lang/Object;)Lcom/google/common/cache/I;
.end method
