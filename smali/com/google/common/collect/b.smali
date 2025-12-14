.class public final enum Lcom/google/common/collect/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/b;

.field public static final enum DONE:Lcom/google/common/collect/b;

.field public static final enum FAILED:Lcom/google/common/collect/b;

.field public static final enum NOT_READY:Lcom/google/common/collect/b;

.field public static final enum READY:Lcom/google/common/collect/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/common/collect/b;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/b;->READY:Lcom/google/common/collect/b;

    new-instance v1, Lcom/google/common/collect/b;

    const-string v2, "NOT_READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/collect/b;->NOT_READY:Lcom/google/common/collect/b;

    new-instance v2, Lcom/google/common/collect/b;

    const-string v3, "DONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/common/collect/b;->DONE:Lcom/google/common/collect/b;

    new-instance v3, Lcom/google/common/collect/b;

    const-string v4, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/collect/b;->FAILED:Lcom/google/common/collect/b;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/common/collect/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/b;->$VALUES:[Lcom/google/common/collect/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/b;
    .locals 1

    const-class v0, Lcom/google/common/collect/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/b;
    .locals 1

    sget-object v0, Lcom/google/common/collect/b;->$VALUES:[Lcom/google/common/collect/b;

    invoke-virtual {v0}, [Lcom/google/common/collect/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/b;

    return-object v0
.end method
