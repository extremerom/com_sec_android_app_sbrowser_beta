.class public final enum Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowBookmarkLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

.field public static final enum SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

.field public static final enum SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    const-string v1, "SHOW_BOOKMARKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    const-string v1, "SHOW_NO_BOOKMARKS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->$values()[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->$VALUES:[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->$VALUES:[Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    return-object v0
.end method
