.class public final enum LG3/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LG3/i;

.field public static final enum ADD:LG3/i;

.field public static final enum EXCLUDE_INTERSECTIONS:LG3/i;

.field public static final enum INTERSECT:LG3/i;

.field public static final enum MERGE:LG3/i;

.field public static final enum SUBTRACT:LG3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LG3/i;

    const-string v1, "MERGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG3/i;->MERGE:LG3/i;

    new-instance v1, LG3/i;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG3/i;->ADD:LG3/i;

    new-instance v2, LG3/i;

    const-string v3, "SUBTRACT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LG3/i;->SUBTRACT:LG3/i;

    new-instance v3, LG3/i;

    const-string v4, "INTERSECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LG3/i;->INTERSECT:LG3/i;

    new-instance v4, LG3/i;

    const-string v5, "EXCLUDE_INTERSECTIONS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LG3/i;->EXCLUDE_INTERSECTIONS:LG3/i;

    filled-new-array {v0, v1, v2, v3, v4}, [LG3/i;

    move-result-object v0

    sput-object v0, LG3/i;->$VALUES:[LG3/i;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LG3/i;
    .locals 1

    const-class v0, LG3/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG3/i;

    return-object p0
.end method

.method public static values()[LG3/i;
    .locals 1

    sget-object v0, LG3/i;->$VALUES:[LG3/i;

    invoke-virtual {v0}, [LG3/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG3/i;

    return-object v0
.end method
