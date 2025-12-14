.class public final enum Lcom/google/ar/core/F;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/ar/core/F;

.field public static final enum b:Lcom/google/ar/core/F;

.field public static final enum c:Lcom/google/ar/core/F;

.field private static final synthetic d:[Lcom/google/ar/core/F;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/ar/core/F;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ar/core/F;->a:Lcom/google/ar/core/F;

    new-instance v1, Lcom/google/ar/core/F;

    const-string v2, "CANCELLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ar/core/F;->b:Lcom/google/ar/core/F;

    new-instance v2, Lcom/google/ar/core/F;

    const-string v3, "COMPLETED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/ar/core/F;->c:Lcom/google/ar/core/F;

    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/F;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/F;->d:[Lcom/google/ar/core/F;

    return-void
.end method

.method public static values()[Lcom/google/ar/core/F;
    .locals 1

    sget-object v0, Lcom/google/ar/core/F;->d:[Lcom/google/ar/core/F;

    invoke-virtual {v0}, [Lcom/google/ar/core/F;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/F;

    return-object v0
.end method
