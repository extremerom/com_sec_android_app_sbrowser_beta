.class public Lorg/chromium/third_party/android/provider/MediaStoreUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;,
        Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingSession;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static bridge synthetic a(Landroid/content/ContentValues;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/third_party/android/provider/MediaStoreUtils;->setPendingContentValues(Landroid/content/ContentValues;Z)V

    return-void
.end method

.method public static createPending(Landroid/content/Context;Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v0, p1, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;->mInsertUri:Landroid/net/Uri;

    iget-object p1, p1, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;->mInsertValues:Landroid/content/ContentValues;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static openPending(Landroid/content/Context;Landroid/net/Uri;)Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingSession;
    .locals 1

    new-instance v0, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingSession;

    invoke-direct {v0, p0, p1}, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingSession;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static setPendingContentValues(Landroid/content/ContentValues;Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "is_pending"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
