.class final enum Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

.field public static final enum DISCOVERY_IDLE:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

.field public static final enum INITIALIZING_ADAPTER:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

.field public static final enum PROGRESS_UPDATE_AVAILABLE:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

.field public static final enum STARTING:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->INITIALIZING_ADAPTER:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    sget-object v1, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->STARTING:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    sget-object v2, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->PROGRESS_UPDATE_AVAILABLE:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    sget-object v3, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->DISCOVERY_IDLE:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    const-string v1, "INITIALIZING_ADAPTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->INITIALIZING_ADAPTER:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    const-string v1, "STARTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->STARTING:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    const-string v1, "PROGRESS_UPDATE_AVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->PROGRESS_UPDATE_AVAILABLE:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    const-string v1, "DISCOVERY_IDLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->DISCOVERY_IDLE:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->$values()[Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->$VALUES:[Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->$VALUES:[Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    return-object v0
.end method
