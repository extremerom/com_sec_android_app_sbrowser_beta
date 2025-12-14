.class public final enum Li/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Li/a;

.field public static final enum COLOR:Li/a;

.field public static final enum GRAVITY:Li/a;

.field public static final enum INFERRED:Li/a;

.field public static final enum INT_ENUM:Li/a;

.field public static final enum INT_FLAG:Li/a;

.field public static final enum NONE:Li/a;

.field public static final enum RESOURCE_ID:Li/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Li/a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a;->NONE:Li/a;

    new-instance v1, Li/a;

    const-string v2, "INFERRED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/a;->INFERRED:Li/a;

    new-instance v2, Li/a;

    const-string v3, "INT_ENUM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Li/a;->INT_ENUM:Li/a;

    new-instance v3, Li/a;

    const-string v4, "INT_FLAG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li/a;->INT_FLAG:Li/a;

    new-instance v4, Li/a;

    const-string v5, "COLOR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Li/a;->COLOR:Li/a;

    new-instance v5, Li/a;

    const-string v6, "GRAVITY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Li/a;->GRAVITY:Li/a;

    new-instance v6, Li/a;

    const-string v7, "RESOURCE_ID"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Li/a;->RESOURCE_ID:Li/a;

    filled-new-array/range {v0 .. v6}, [Li/a;

    move-result-object v0

    sput-object v0, Li/a;->$VALUES:[Li/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Li/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/a;
    .locals 1

    const-class v0, Li/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a;

    return-object p0
.end method

.method public static values()[Li/a;
    .locals 1

    sget-object v0, Li/a;->$VALUES:[Li/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a;

    return-object v0
.end method
