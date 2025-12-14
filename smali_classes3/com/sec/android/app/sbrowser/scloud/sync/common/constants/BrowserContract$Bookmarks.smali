.class public final Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$Bookmarks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$CommonColumns;
.implements Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$ImageColumns;
.implements Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "folder"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    return-void
.end method
