.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$Searches;,
        Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$History;,
        Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$Accounts;,
        Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$Bookmarks;,
        Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$ImageColumns;,
        Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$CommonColumns;,
        Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$SyncColumns;,
        Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$BaseSyncColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final SBROWSER_AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.browser"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract;->SBROWSER_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method
