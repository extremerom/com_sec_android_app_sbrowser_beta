.class public final Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field private final mIns:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>([Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;->mIns:[Ljava/io/InputStream;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;->mIns:[Ljava/io/InputStream;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Snapshot;->mIns:[Ljava/io/InputStream;

    aget-object p0, p0, p1

    return-object p0
.end method
