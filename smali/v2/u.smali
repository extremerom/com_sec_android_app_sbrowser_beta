.class public final enum Lv2/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lv2/u;

.field public static final enum ITEM_TO_PLACEHOLDER:Lv2/u;

.field public static final enum PLACEHOLDER_POSITION_CHANGE:Lv2/u;

.field public static final enum PLACEHOLDER_TO_ITEM:Lv2/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lv2/u;

    const-string v1, "ITEM_TO_PLACEHOLDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/u;->ITEM_TO_PLACEHOLDER:Lv2/u;

    new-instance v1, Lv2/u;

    const-string v2, "PLACEHOLDER_TO_ITEM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv2/u;->PLACEHOLDER_TO_ITEM:Lv2/u;

    new-instance v2, Lv2/u;

    const-string v3, "PLACEHOLDER_POSITION_CHANGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lv2/u;->PLACEHOLDER_POSITION_CHANGE:Lv2/u;

    filled-new-array {v0, v1, v2}, [Lv2/u;

    move-result-object v0

    sput-object v0, Lv2/u;->$VALUES:[Lv2/u;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/u;
    .locals 1

    const-class v0, Lv2/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv2/u;

    return-object p0
.end method

.method public static values()[Lv2/u;
    .locals 1

    sget-object v0, Lv2/u;->$VALUES:[Lv2/u;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/u;

    return-object v0
.end method
