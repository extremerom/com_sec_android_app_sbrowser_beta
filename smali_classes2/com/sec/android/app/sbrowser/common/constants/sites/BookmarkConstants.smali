.class public Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$GUIDName;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$LoginDetails;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkIntentParams;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityNumbers;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;
    }
.end annotation


# static fields
.field public static final INVALID_BOOKMARK_ID:Ljava/lang/Long;

.field public static final PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

.field public static final PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    return-void
.end method
