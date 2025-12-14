.class public final enum LY7/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LY7/s;

.field public static final enum ADDRESSBOOK:LY7/s;

.field public static final enum CALENDAR:LY7/s;

.field public static final enum EMAIL_ADDRESS:LY7/s;

.field public static final enum GEO:LY7/s;

.field public static final enum IOT:LY7/s;

.field public static final enum ISBN:LY7/s;

.field public static final enum PASSKEY:LY7/s;

.field public static final enum PAYMENT:LY7/s;

.field public static final enum PRODUCT:LY7/s;

.field public static final enum SMS:LY7/s;

.field public static final enum TEL:LY7/s;

.field public static final enum TEXT:LY7/s;

.field public static final enum URI:LY7/s;

.field public static final enum VIN:LY7/s;

.field public static final enum WIFI:LY7/s;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, LY7/s;

    const-string v1, "ADDRESSBOOK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LY7/s;->ADDRESSBOOK:LY7/s;

    new-instance v1, LY7/s;

    const-string v2, "EMAIL_ADDRESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LY7/s;->EMAIL_ADDRESS:LY7/s;

    new-instance v2, LY7/s;

    const-string v3, "PRODUCT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LY7/s;->PRODUCT:LY7/s;

    new-instance v3, LY7/s;

    const-string v4, "URI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LY7/s;->URI:LY7/s;

    new-instance v4, LY7/s;

    const-string v5, "TEXT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LY7/s;->TEXT:LY7/s;

    new-instance v5, LY7/s;

    const-string v6, "GEO"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LY7/s;->GEO:LY7/s;

    new-instance v6, LY7/s;

    const-string v7, "TEL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LY7/s;->TEL:LY7/s;

    new-instance v7, LY7/s;

    const-string v8, "SMS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, LY7/s;->SMS:LY7/s;

    new-instance v8, LY7/s;

    const-string v9, "CALENDAR"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, LY7/s;->CALENDAR:LY7/s;

    new-instance v9, LY7/s;

    const-string v10, "WIFI"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, LY7/s;->WIFI:LY7/s;

    new-instance v10, LY7/s;

    const-string v11, "ISBN"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, LY7/s;->ISBN:LY7/s;

    new-instance v11, LY7/s;

    const-string v12, "VIN"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, LY7/s;->VIN:LY7/s;

    new-instance v12, LY7/s;

    const-string v13, "IOT"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, LY7/s;->IOT:LY7/s;

    new-instance v13, LY7/s;

    const-string v14, "PAYMENT"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, LY7/s;->PAYMENT:LY7/s;

    new-instance v14, LY7/s;

    const-string v15, "PASSKEY"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, LY7/s;->PASSKEY:LY7/s;

    move-object/from16 v13, v16

    filled-new-array/range {v0 .. v14}, [LY7/s;

    move-result-object v0

    sput-object v0, LY7/s;->$VALUES:[LY7/s;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LY7/s;
    .locals 1

    const-class v0, LY7/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LY7/s;

    return-object p0
.end method

.method public static values()[LY7/s;
    .locals 1

    sget-object v0, LY7/s;->$VALUES:[LY7/s;

    invoke-virtual {v0}, [LY7/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LY7/s;

    return-object v0
.end method
