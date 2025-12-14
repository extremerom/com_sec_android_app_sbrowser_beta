.class public Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingParams;,
        Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;
    }
.end annotation


# direct methods
.method public static bridge synthetic a(Landroid/content/ContentValues;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils;->setPendingContentValues(Landroid/content/ContentValues;Z)V

    return-void
.end method

.method public static createPending(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingParams;)Landroid/net/Uri;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingParams;->mInsertUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingParams;->mInsertValues:Landroid/content/ContentValues;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static openPending(Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static setPendingContentValues(Landroid/content/ContentValues;Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "is_pending"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
