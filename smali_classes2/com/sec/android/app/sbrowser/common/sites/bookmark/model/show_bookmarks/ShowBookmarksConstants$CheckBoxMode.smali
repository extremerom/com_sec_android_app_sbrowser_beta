.class public final enum Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckBoxMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

.field public static final enum DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

.field public static final enum NO_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

.field public static final enum SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->NO_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    const-string v1, "NO_CHECKBOX_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->NO_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    const-string v1, "SELECT_CHECKBOX_MODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    const-string v1, "DELETE_CHECKBOX_MODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->$values()[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->$VALUES:[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->$VALUES:[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    return-object v0
.end method
