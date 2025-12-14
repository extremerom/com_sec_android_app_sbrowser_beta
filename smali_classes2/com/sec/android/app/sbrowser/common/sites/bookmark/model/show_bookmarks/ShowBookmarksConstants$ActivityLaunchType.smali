.class public final enum Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityLaunchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

.field public static final enum EDIT_BOOKMARK_FOLDER:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

.field public static final enum EDIT_BOOKMARK_URL:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

.field public static final enum MOVE_BOOKMARK:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

.field public static final enum SHARE_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->EDIT_BOOKMARK_URL:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->EDIT_BOOKMARK_FOLDER:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->MOVE_BOOKMARK:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->SHARE_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    const-string v1, "EDIT_BOOKMARK_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->EDIT_BOOKMARK_URL:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    const-string v1, "EDIT_BOOKMARK_FOLDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->EDIT_BOOKMARK_FOLDER:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    const-string v1, "MOVE_BOOKMARK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->MOVE_BOOKMARK:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    const-string v1, "SHARE_BOOKMARKS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->SHARE_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->$values()[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    return-object v0
.end method
