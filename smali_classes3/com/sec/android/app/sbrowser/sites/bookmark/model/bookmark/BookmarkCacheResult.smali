.class public final enum Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

.field public static final enum BOOKMARKED:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

.field public static final enum BOOKMARKED_NOT_EDITABLE:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

.field public static final enum NOT_BOOKMARKED:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

.field public static final enum UNKNOWN:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->BOOKMARKED:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->NOT_BOOKMARKED:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->UNKNOWN:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    sget-object v3, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->BOOKMARKED_NOT_EDITABLE:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    const-string v1, "BOOKMARKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->BOOKMARKED:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    const-string v1, "NOT_BOOKMARKED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->NOT_BOOKMARKED:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->UNKNOWN:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    const-string v1, "BOOKMARKED_NOT_EDITABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->BOOKMARKED_NOT_EDITABLE:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->$values()[Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->$VALUES:[Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->$VALUES:[Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkCacheResult;

    return-object v0
.end method
