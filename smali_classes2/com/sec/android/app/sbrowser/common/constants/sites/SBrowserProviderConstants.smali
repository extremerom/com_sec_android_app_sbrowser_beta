.class public Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants$Table;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants$Bookmark;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants$SavedPage;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants$Path;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants$Tab;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants$UriMatch;,
        Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants$Authority;
    }
.end annotation


# static fields
.field public static BOOKMARK_CONTENT_URI:Landroid/net/Uri;

.field public static BOOKMARK_INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final HISTORY_URI:Landroid/net/Uri;

.field public static final OPEN_TAB_URI:Landroid/net/Uri;

.field public static final SAVED_PAGE_INTERNAL_URL:Landroid/net/Uri;

.field public static final SAVED_PAGE_URI:Landroid/net/Uri;

.field public static final SQL_CREATE_TRIGGER_CHILDREN_IN_SAMSUNG:Ljava/lang/String;

.field public static final SURFING_INTERNET_URI:Landroid/net/Uri;

.field public static final SYNC_STATE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.sec.android.app.sbrowser.beta/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta.sbrowser2/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta/tabs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->OPEN_TAB_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta/readinglist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta.sbrowser2/readinglist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_INTERNAL_URL:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta.browser/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->HISTORY_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta.browser/surfinginternet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SURFING_INTERNET_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta/syncstate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SYNC_STATE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TRIGGER IF NOT EXISTS createChildrenInSamsung AFTER UPDATE ON BOOKMARKS WHEN OLD.FOLDER = 1 AND OLD.bookmark_type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND ( NEW.SYNC1 = \'\' OR NEW.SYNC1 IS NULL ) AND ( OLD.SYNC1 != \'\' OR OLD.SYNC1 != NULL )  BEGIN UPDATE BOOKMARKS SET SYNC1 = NEW.SYNC1 WHERE PARENT = OLD._ID ; END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SQL_CREATE_TRIGGER_CHILDREN_IN_SAMSUNG:Ljava/lang/String;

    return-void
.end method
