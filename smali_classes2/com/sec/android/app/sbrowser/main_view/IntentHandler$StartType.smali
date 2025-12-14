.class final enum Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/IntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

.field public static final enum ADDONS:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

.field public static final enum SETTINGS_APPEARANCE:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

.field public static final enum SETTINGS_ASSIST:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

.field public static final enum SETTINGS_PRIVACY:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->ADDONS:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    sget-object v1, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->SETTINGS_APPEARANCE:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    sget-object v2, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->SETTINGS_PRIVACY:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    sget-object v3, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->SETTINGS_ASSIST:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    const-string v1, "ADDONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->ADDONS:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    const-string v1, "SETTINGS_APPEARANCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->SETTINGS_APPEARANCE:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    const-string v1, "SETTINGS_PRIVACY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->SETTINGS_PRIVACY:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    const-string v1, "SETTINGS_ASSIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->SETTINGS_ASSIST:Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->$values()[Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->$VALUES:[Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->$VALUES:[Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    return-object v0
.end method
