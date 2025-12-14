.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/SBrowserContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/SBrowserContract$TABS;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final SBROWSER_SYNC_STATE_URI:Landroid/net/Uri;

.field public static final SBROWSER_TAB_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.sec.android.app.sbrowser.beta"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/SBrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "tabs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/SBrowserContract;->SBROWSER_TAB_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta/syncstate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/SBrowserContract;->SBROWSER_SYNC_STATE_URI:Landroid/net/Uri;

    return-void
.end method
