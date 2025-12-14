.class public final enum LH3/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LH3/h;

.field public static final enum ADD:LH3/h;

.field public static final enum INVERT:LH3/h;

.field public static final enum LUMA:LH3/h;

.field public static final enum LUMA_INVERTED:LH3/h;

.field public static final enum NONE:LH3/h;

.field public static final enum UNKNOWN:LH3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LH3/h;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH3/h;->NONE:LH3/h;

    new-instance v1, LH3/h;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LH3/h;->ADD:LH3/h;

    new-instance v2, LH3/h;

    const-string v3, "INVERT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LH3/h;->INVERT:LH3/h;

    new-instance v3, LH3/h;

    const-string v4, "LUMA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LH3/h;->LUMA:LH3/h;

    new-instance v4, LH3/h;

    const-string v5, "LUMA_INVERTED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LH3/h;->LUMA_INVERTED:LH3/h;

    new-instance v5, LH3/h;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LH3/h;->UNKNOWN:LH3/h;

    filled-new-array/range {v0 .. v5}, [LH3/h;

    move-result-object v0

    sput-object v0, LH3/h;->$VALUES:[LH3/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LH3/h;
    .locals 1

    const-class v0, LH3/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LH3/h;

    return-object p0
.end method

.method public static values()[LH3/h;
    .locals 1

    sget-object v0, LH3/h;->$VALUES:[LH3/h;

    invoke-virtual {v0}, [LH3/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LH3/h;

    return-object v0
.end method
