.class public Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkWidgetConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOOKMARK_WIDGET2_AUTHORITY_URI:Landroid/net/Uri;

.field public static final BOOKMARK_WIDGET_AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sbrowser.beta.widget"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkWidgetConstants;->BOOKMARK_WIDGET_AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.sbrowser.beta.widget2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkWidgetConstants;->BOOKMARK_WIDGET2_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method
