.class public final enum Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "From"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

.field public static final enum HOMEPAGE_SETTINGS_FROM_NATIVE_PAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

.field public static final enum HOMEPAGE_SETTINGS_FROM_WEBPAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

.field public static final enum INTERNAL:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

.field public static final enum POPUP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

.field public static final enum UHP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->POPUP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->UHP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->INTERNAL:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->HOMEPAGE_SETTINGS_FROM_NATIVE_PAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->HOMEPAGE_SETTINGS_FROM_WEBPAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    const-string v1, "POPUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->POPUP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    const-string v1, "UHP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->UHP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    const-string v1, "INTERNAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->INTERNAL:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    const-string v1, "HOMEPAGE_SETTINGS_FROM_NATIVE_PAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->HOMEPAGE_SETTINGS_FROM_NATIVE_PAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    const-string v1, "HOMEPAGE_SETTINGS_FROM_WEBPAGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->HOMEPAGE_SETTINGS_FROM_WEBPAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->$values()[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

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

.method public static external(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->INTERNAL:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    return-object v0
.end method
