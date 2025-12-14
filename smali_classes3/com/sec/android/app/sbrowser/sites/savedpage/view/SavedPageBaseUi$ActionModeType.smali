.class final enum Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

.field public static final enum ALL:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

.field public static final enum DELETE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

.field public static final enum SHARE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->NONE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->SHARE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->DELETE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    sget-object v3, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->ALL:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->NONE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    const-string v1, "SHARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->SHARE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    const-string v1, "DELETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->DELETE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    const-string v1, "ALL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->ALL:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->$values()[Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->$VALUES:[Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->$VALUES:[Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    return-object v0
.end method
