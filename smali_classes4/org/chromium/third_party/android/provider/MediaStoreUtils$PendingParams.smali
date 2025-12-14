.class public Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/third_party/android/provider/MediaStoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingParams"
.end annotation


# instance fields
.field final mInsertUri:Landroid/net/Uri;

.field final mInsertValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;->mInsertUri:Landroid/net/Uri;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;->mInsertValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "_display_name"

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "mime_type"

    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "date_added"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "date_modified"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lorg/chromium/third_party/android/provider/MediaStoreUtils;->a(Landroid/content/ContentValues;Z)V

    return-void
.end method


# virtual methods
.method public setDownloadUri(Landroid/net/Uri;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    const-string v0, "download_uri"

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;->mInsertValues:Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;->mInsertValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;->mInsertValues:Landroid/content/ContentValues;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date_expires"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public setRefererUri(Landroid/net/Uri;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    const-string v0, "referer_uri"

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;->mInsertValues:Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/third_party/android/provider/MediaStoreUtils$PendingParams;->mInsertValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
