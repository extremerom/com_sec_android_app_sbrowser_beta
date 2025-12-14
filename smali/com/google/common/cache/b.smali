.class public final enum Lcom/google/common/cache/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/b;

.field public static final enum INSTANCE:Lcom/google/common/cache/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/cache/b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/b;->INSTANCE:Lcom/google/common/cache/b;

    filled-new-array {v0}, [Lcom/google/common/cache/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/b;->$VALUES:[Lcom/google/common/cache/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/b;
    .locals 1

    const-class v0, Lcom/google/common/cache/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/b;
    .locals 1

    sget-object v0, Lcom/google/common/cache/b;->$VALUES:[Lcom/google/common/cache/b;

    invoke-virtual {v0}, [Lcom/google/common/cache/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/b;

    return-object v0
.end method
