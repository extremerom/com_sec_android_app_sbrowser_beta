.class public final enum Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionMenuAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

.field public static final enum OPTION_MENU_CREATE:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

.field public static final enum OPTION_MENU_PREPARE:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

.field public static final enum OPTION_MENU_SELECT:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->OPTION_MENU_CREATE:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->OPTION_MENU_PREPARE:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->OPTION_MENU_SELECT:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    const-string v1, "OPTION_MENU_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->OPTION_MENU_CREATE:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    const-string v1, "OPTION_MENU_PREPARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->OPTION_MENU_PREPARE:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    const-string v1, "OPTION_MENU_SELECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->OPTION_MENU_SELECT:Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->$values()[Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->$VALUES:[Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->$VALUES:[Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/sites/history/model/HistoryConstants$OptionMenuAction;

    return-object v0
.end method
