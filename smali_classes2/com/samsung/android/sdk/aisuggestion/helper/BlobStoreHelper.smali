.class public final Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J(\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J(\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J*\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J*\u0010\u0016\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "downloadBlobBitmap",
        "Landroid/graphics/Bitmap;",
        "handle",
        "Landroid/app/blob/BlobHandle;",
        "uploadBitmapToBlobStore",
        "bitmap",
        "tag",
        "",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "expiryTimeMillis",
        "",
        "uploadToBlobStore",
        "input",
        "",
        "res",
        "",
        "uploadVectorToBlobStore",
        "Companion",
        "deepsky-sdk-aisuggestion-1.6.13_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ALLOW_PACKAGE_NAME_SSS:Ljava/lang/String; = "com.samsung.android.smartsuggestions"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ALLOW_PACKAGE_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ALLOW_SIGNATURE_ENG:Ljava/lang/String; = "C8A2E9BCCF597C2FB6DC66BEE293FC13F2FC47EC77BC6B2B0D52C11F51192AB8"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ALLOW_SIGNATURE_USER:Ljava/lang/String; = "34DF0E7A9F1CF1892E45C056B4973CD81CCF148A4050D11AEA4AC5A65F900A42"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_KEY_CREATION_TIMESTAMP:Ljava/lang/String; = "creationTimestamp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_KEY_EXPIRY_TIME_MILLIS:Ljava/lang/String; = "expiryTimeMillis"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_KEY_PUBLISHER_LABEL:Ljava/lang/String; = "publisherLabel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_KEY_RESOURCE_DIGEST:Ljava/lang/String; = "resourceDigest"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAM_KEY_TAG:Ljava/lang/String; = "tag"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URI_AUTHORITY:Ljava/lang/String; = "blobstore"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final URI_PATH_ANIMATED_IMAGE:Ljava/lang/String; = "animatedimage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final URI_PATH_DRAWABLE:Ljava/lang/String; = "drawable"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URI_PATH_HANDLE:Ljava/lang/String; = "handle"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URI_SCHEME:Ljava/lang/String; = "contextualinsight"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final isBuildTypeUser$delegate:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->Companion:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion$isBuildTypeUser$2;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion$isBuildTypeUser$2;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->isBuildTypeUser$delegate:Ldb/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->uploadToBlobStore$lambda$5$lambda$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$isBuildTypeUser$delegate$cp()Ldb/f;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->isBuildTypeUser$delegate:Ldb/f;

    return-object v0
.end method

.method public static final toBlobHandle(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;)Landroid/app/blob/BlobHandle;
    .locals 1
    .param p0    # Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->Companion:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;->toBlobHandle(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final toBlobHandle(Ljava/lang/String;)Landroid/app/blob/BlobHandle;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->Companion:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;->toBlobHandle(Ljava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final toBlobStoreHandleDocument(Landroid/app/blob/BlobHandle;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
    .locals 1
    .param p0    # Landroid/app/blob/BlobHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->Companion:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;->toBlobStoreHandleDocument(Landroid/app/blob/BlobHandle;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public static final toUri(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->Companion:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;->toUri(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic uploadBitmapToBlobStore$default(Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/concurrent/Executor;JILjava/lang/Object;)Landroid/app/blob/BlobHandle;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p4

    const-wide/16 p5, 0x1

    invoke-static {p5, p6}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p4

    invoke-virtual {p4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->uploadBitmapToBlobStore(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic uploadToBlobStore$default(Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;ILjava/lang/String;Ljava/util/concurrent/Executor;JILjava/lang/Object;)Landroid/app/blob/BlobHandle;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p4

    const-wide/16 p5, 0x1

    invoke-static {p5, p6}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p4

    invoke-virtual {p4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->uploadToBlobStore(ILjava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic uploadToBlobStore$default(Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;[BLjava/lang/String;Ljava/util/concurrent/Executor;JILjava/lang/Object;)Landroid/app/blob/BlobHandle;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p4

    const-wide/16 p5, 0x1

    invoke-static {p5, p6}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p4

    invoke-virtual {p4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->uploadToBlobStore([BLjava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method private static final uploadToBlobStore$lambda$5$lambda$4(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public static synthetic uploadVectorToBlobStore$default(Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;ILjava/lang/String;Ljava/util/concurrent/Executor;JILjava/lang/Object;)Landroid/app/blob/BlobHandle;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p4

    const-wide/16 p5, 0x1

    invoke-static {p5, p6}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p4

    invoke-virtual {p4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->uploadVectorToBlobStore(ILjava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final downloadBlobBitmap(Landroid/app/blob/BlobHandle;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Landroid/app/blob/BlobHandle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->context:Landroid/content/Context;

    invoke-static {}, LT6/a;->l()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LT6/a;->f(Ljava/lang/Object;)Landroid/app/blob/BlobStoreManager;

    move-result-object p0

    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-static {p0, p1}, LT6/a;->j(Landroid/app/blob/BlobStoreManager;Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p1

    const/16 v2, 0x2000

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array p1, v2, [B

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_1

    invoke-virtual {p0, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string p1, "toByteArray(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p0

    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v1, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method public final uploadBitmapToBlobStore(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;
    .locals 9
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string p1, "byteArray"

    invoke-static {v4, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->uploadToBlobStore([BLjava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method public final uploadToBlobStore(ILjava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tag"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string p1, "byteArray"

    invoke-static {v4, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->uploadToBlobStore([BLjava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method public final uploadToBlobStore([BLjava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4, p5, p2}, LT6/a;->c([BLjava/lang/String;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p2

    const-string p4, "createWithSha256(\n      \u2026           tag,\n        )"

    invoke-static {p2, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->context:Landroid/content/Context;

    invoke-static {}, LT6/a;->l()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LT6/a;->f(Ljava/lang/Object;)Landroid/app/blob/BlobStoreManager;

    move-result-object p0

    invoke-static {p0, p2}, LT6/a;->a(Landroid/app/blob/BlobStoreManager;Landroid/app/blob/BlobHandle;)J

    move-result-wide p4

    invoke-static {p0, p4, p5}, LT6/a;->d(Landroid/app/blob/BlobStoreManager;J)Landroid/app/blob/BlobStoreManager$Session;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, LT6/a;->e(Ljava/lang/Object;)Landroid/app/blob/BlobStoreManager$Session;

    move-result-object p4

    array-length p5, p1

    int-to-long v0, p5

    invoke-static {p4, v0, v1}, LT6/a;->i(Landroid/app/blob/BlobStoreManager$Session;J)Landroid/os/ParcelFileDescriptor;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 p1, 0x0

    :try_start_3
    invoke-static {v0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p5, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object p5, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->Companion:Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;

    invoke-static {p5}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;->access$isBuildTypeUser(Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;)Z

    move-result p5

    if-eqz p5, :cond_0

    const-string p5, "34DF0E7A9F1CF1892E45C056B4973CD81CCF148A4050D11AEA4AC5A65F900A42"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string p5, "C8A2E9BCCF597C2FB6DC66BEE293FC13F2FC47EC77BC6B2B0D52C11F51192AB8"

    :goto_0
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p5}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {p4, v0}, LT6/a;->n(Landroid/app/blob/BlobStoreManager$Session;[B)V

    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p5}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p5

    invoke-static {p4, p5}, LT6/a;->z(Landroid/app/blob/BlobStoreManager$Session;[B)V

    new-instance p5, Lca/c;

    const/4 v0, 0x3

    invoke-direct {p5, v0}, Lca/c;-><init>(I)V

    invoke-static {p4, p3, p5}, LT6/a;->m(Landroid/app/blob/BlobStoreManager$Session;Ljava/util/concurrent/Executor;Lca/c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    :try_start_6
    invoke-static {v0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p2

    :try_start_8
    invoke-static {p5, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p2

    invoke-static {p0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final uploadVectorToBlobStore(ILjava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tag"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(it.intrinsi\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string p1, "byteArray"

    invoke-static {v4, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->uploadToBlobStore([BLjava/lang/String;Ljava/util/concurrent/Executor;J)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to upload to the blob store. "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
