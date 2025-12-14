.class public abstract enum Lcom/google/common/cache/X;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/X;

.field public static final enum COLLECTED:Lcom/google/common/cache/X;

.field public static final enum EXPIRED:Lcom/google/common/cache/X;

.field public static final enum EXPLICIT:Lcom/google/common/cache/X;

.field public static final enum REPLACED:Lcom/google/common/cache/X;

.field public static final enum SIZE:Lcom/google/common/cache/X;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/common/cache/S;

    invoke-direct {v0}, Lcom/google/common/cache/S;-><init>()V

    sput-object v0, Lcom/google/common/cache/X;->EXPLICIT:Lcom/google/common/cache/X;

    new-instance v1, Lcom/google/common/cache/T;

    invoke-direct {v1}, Lcom/google/common/cache/T;-><init>()V

    sput-object v1, Lcom/google/common/cache/X;->REPLACED:Lcom/google/common/cache/X;

    new-instance v2, Lcom/google/common/cache/U;

    invoke-direct {v2}, Lcom/google/common/cache/U;-><init>()V

    sput-object v2, Lcom/google/common/cache/X;->COLLECTED:Lcom/google/common/cache/X;

    new-instance v3, Lcom/google/common/cache/V;

    invoke-direct {v3}, Lcom/google/common/cache/V;-><init>()V

    sput-object v3, Lcom/google/common/cache/X;->EXPIRED:Lcom/google/common/cache/X;

    new-instance v4, Lcom/google/common/cache/W;

    invoke-direct {v4}, Lcom/google/common/cache/W;-><init>()V

    sput-object v4, Lcom/google/common/cache/X;->SIZE:Lcom/google/common/cache/X;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/google/common/cache/X;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Lcom/google/common/cache/X;->$VALUES:[Lcom/google/common/cache/X;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/X;
    .locals 1

    const-class v0, Lcom/google/common/cache/X;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/X;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/X;
    .locals 1

    sget-object v0, Lcom/google/common/cache/X;->$VALUES:[Lcom/google/common/cache/X;

    invoke-virtual {v0}, [Lcom/google/common/cache/X;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/X;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method
