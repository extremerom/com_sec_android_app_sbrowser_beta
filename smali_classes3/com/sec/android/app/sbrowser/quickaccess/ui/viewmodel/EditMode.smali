.class public final enum Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum ONE_TIME:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum ONE_TIME_PROGRESSING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum POPUP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum SETTINGS_FRAGMENT_HOMEPAGE_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum SETTINGS_FRAGMENT_HOMEPAGE_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum SETTINGS_FRAGMENT_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum SETTINGS_FRAGMENT_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field public static final enum SETTINGS_FRAGMENT_UHP_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
    .locals 13

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME_PROGRESSING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v6, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v8, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->POPUP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v9, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v10, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v11, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v12, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    filled-new-array/range {v0 .. v12}, [Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "ONE_TIME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "ONE_TIME_PROGRESSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME_PROGRESSING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "SETTINGS_FRAGMENT_NATIVE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "SETTINGS_FRAGMENT_UHP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "SETTINGS_FRAGMENT_NATIVE_EXITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "SETTINGS_FRAGMENT_UHP_EXITING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "POPUP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->POPUP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "SETTINGS_FRAGMENT_HOMEPAGE_NATIVE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "SETTINGS_FRAGMENT_HOMEPAGE_NATIVE_EXITING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const-string v1, "SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->$values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

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

.method public static getEditModeForExiting(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode$1;->$SwitchMap$com$sec$android$app$sbrowser$quickaccess$ui$viewmodel$EditMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    :goto_0
    return-object p0
.end method

.method public static isExitScheduled(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isFromExternal(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->POPUP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isNewsFeedEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isFromHomepageSettings(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static skipOnEventReceived(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    return-object v0
.end method


# virtual methods
.method public isExiting()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isExternal()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->POPUP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNonNativeEditableView()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->POPUP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNonNativeEditableViewExiting()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public shouldShowEditableView()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->POPUP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
