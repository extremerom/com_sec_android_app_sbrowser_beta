.class public final enum Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

.field public static final enum FROM_BOOKMARK_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

.field public static final enum FROM_TAB_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

.field public static final enum FROM_WEB_LINK:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_WEB_LINK:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_BOOKMARK_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_TAB_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    const-string v1, "FROM_WEB_LINK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_WEB_LINK:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    const-string v1, "FROM_BOOKMARK_BUTTON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_BOOKMARK_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    const-string v1, "FROM_TAB_BUTTON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_TAB_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->$values()[Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    return-object v0
.end method
