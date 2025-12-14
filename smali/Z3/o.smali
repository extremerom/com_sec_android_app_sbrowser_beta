.class public final enum LZ3/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LZ3/o;

.field public static final enum MEMORY:LZ3/o;

.field public static final enum QUALITY:LZ3/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LZ3/o;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZ3/o;->MEMORY:LZ3/o;

    new-instance v1, LZ3/o;

    const-string v2, "QUALITY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZ3/o;->QUALITY:LZ3/o;

    filled-new-array {v0, v1}, [LZ3/o;

    move-result-object v0

    sput-object v0, LZ3/o;->$VALUES:[LZ3/o;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZ3/o;
    .locals 1

    const-class v0, LZ3/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZ3/o;

    return-object p0
.end method

.method public static values()[LZ3/o;
    .locals 1

    sget-object v0, LZ3/o;->$VALUES:[LZ3/o;

    invoke-virtual {v0}, [LZ3/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZ3/o;

    return-object v0
.end method
