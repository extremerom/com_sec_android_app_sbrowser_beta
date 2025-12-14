.class public final enum LZ7/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LZ7/c;

.field public static final enum APP_LINK_QR:LZ7/c;

.field public static final enum MATTER_QR:LZ7/c;

.field public static final enum ON_BOARDING_STANDARD_QR:LZ7/c;

.field public static final enum SAMJIN_HUB_V3:LZ7/c;

.field public static final enum SAMJIN_SENSOR:LZ7/c;

.field public static final enum SMART_TAG_QR:LZ7/c;

.field public static final enum ST_Camera:LZ7/c;

.field public static final enum ZIGBEE_V3:LZ7/c;

.field public static final enum ZWAVE_V2_SPEC_NEW:LZ7/c;

.field public static final enum ZWAVE_V2_SPEC_OLD:LZ7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, LZ7/c;

    const-string v1, "ON_BOARDING_STANDARD_QR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZ7/c;->ON_BOARDING_STANDARD_QR:LZ7/c;

    new-instance v1, LZ7/c;

    const-string v2, "SAMJIN_SENSOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZ7/c;->SAMJIN_SENSOR:LZ7/c;

    new-instance v2, LZ7/c;

    const-string v3, "SAMJIN_HUB_V3"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LZ7/c;->SAMJIN_HUB_V3:LZ7/c;

    new-instance v3, LZ7/c;

    const-string v4, "ZIGBEE_V3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LZ7/c;->ZIGBEE_V3:LZ7/c;

    new-instance v4, LZ7/c;

    const-string v5, "ZWAVE_V2_SPEC_OLD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LZ7/c;->ZWAVE_V2_SPEC_OLD:LZ7/c;

    new-instance v5, LZ7/c;

    const-string v6, "ZWAVE_V2_SPEC_NEW"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LZ7/c;->ZWAVE_V2_SPEC_NEW:LZ7/c;

    new-instance v6, LZ7/c;

    const-string v7, "ST_Camera"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LZ7/c;->ST_Camera:LZ7/c;

    new-instance v7, LZ7/c;

    const-string v8, "SMART_TAG_QR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, LZ7/c;->SMART_TAG_QR:LZ7/c;

    new-instance v8, LZ7/c;

    const-string v9, "APP_LINK_QR"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, LZ7/c;->APP_LINK_QR:LZ7/c;

    new-instance v9, LZ7/c;

    const-string v10, "MATTER_QR"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, LZ7/c;->MATTER_QR:LZ7/c;

    filled-new-array/range {v0 .. v9}, [LZ7/c;

    move-result-object v0

    sput-object v0, LZ7/c;->$VALUES:[LZ7/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZ7/c;
    .locals 1

    const-class v0, LZ7/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZ7/c;

    return-object p0
.end method

.method public static values()[LZ7/c;
    .locals 1

    sget-object v0, LZ7/c;->$VALUES:[LZ7/c;

    invoke-virtual {v0}, [LZ7/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZ7/c;

    return-object v0
.end method
