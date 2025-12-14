.class public Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingSession"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public publish()Landroid/net/Uri;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils;->a(Landroid/content/ContentValues;Z)V

    const-string v1, "date_expires"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaStoreUtils"

    const-string v2, "Unable to publish pending session."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/provider/MediaStoreUtils$PendingSession;->mUri:Landroid/net/Uri;

    return-object p0
.end method
