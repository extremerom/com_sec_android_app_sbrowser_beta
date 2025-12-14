.class public final enum LZb/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LZb/p;

.field public static final enum FLEXIBLE_LOWER:LZb/p;

.field public static final enum FLEXIBLE_UPPER:LZb/p;

.field public static final enum INFLEXIBLE:LZb/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LZb/p;

    const-string v1, "FLEXIBLE_LOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZb/p;->FLEXIBLE_LOWER:LZb/p;

    new-instance v1, LZb/p;

    const-string v2, "FLEXIBLE_UPPER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZb/p;->FLEXIBLE_UPPER:LZb/p;

    new-instance v2, LZb/p;

    const-string v3, "INFLEXIBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LZb/p;->INFLEXIBLE:LZb/p;

    filled-new-array {v0, v1, v2}, [LZb/p;

    move-result-object v0

    sput-object v0, LZb/p;->$VALUES:[LZb/p;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LZb/p;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZb/p;
    .locals 1

    const-class v0, LZb/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZb/p;

    return-object p0
.end method

.method public static values()[LZb/p;
    .locals 1

    sget-object v0, LZb/p;->$VALUES:[LZb/p;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZb/p;

    return-object v0
.end method
