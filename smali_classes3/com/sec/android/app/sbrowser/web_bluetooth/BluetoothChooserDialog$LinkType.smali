.class final enum Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

.field public static final enum ADAPTER_OFF:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

.field public static final enum ADAPTER_OFF_HELP:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

.field public static final enum EXPLAIN_BLUETOOTH:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

.field public static final enum NEED_LOCATION_PERMISSION_HELP:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

.field public static final enum REQUEST_LOCATION_SERVICES:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

.field public static final enum REQUEST_PERMISSIONS:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

.field public static final enum RESTART_SEARCH:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;
    .locals 7

    sget-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->EXPLAIN_BLUETOOTH:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    sget-object v1, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->ADAPTER_OFF:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    sget-object v2, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->ADAPTER_OFF_HELP:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    sget-object v3, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->REQUEST_PERMISSIONS:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    sget-object v4, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->REQUEST_LOCATION_SERVICES:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    sget-object v5, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->NEED_LOCATION_PERMISSION_HELP:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    sget-object v6, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->RESTART_SEARCH:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    const-string v1, "EXPLAIN_BLUETOOTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->EXPLAIN_BLUETOOTH:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    const-string v1, "ADAPTER_OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->ADAPTER_OFF:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    const-string v1, "ADAPTER_OFF_HELP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->ADAPTER_OFF_HELP:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    const-string v1, "REQUEST_PERMISSIONS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->REQUEST_PERMISSIONS:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    const-string v1, "REQUEST_LOCATION_SERVICES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->REQUEST_LOCATION_SERVICES:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    const-string v1, "NEED_LOCATION_PERMISSION_HELP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->NEED_LOCATION_PERMISSION_HELP:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    const-string v1, "RESTART_SEARCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->RESTART_SEARCH:Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->$values()[Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->$VALUES:[Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->$VALUES:[Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothChooserDialog$LinkType;

    return-object v0
.end method
