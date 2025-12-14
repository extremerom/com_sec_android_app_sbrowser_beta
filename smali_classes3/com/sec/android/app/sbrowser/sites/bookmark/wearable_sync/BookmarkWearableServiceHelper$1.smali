.class Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->sendResponse(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelClient$Channel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->lambda$run$1(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelClient$Channel;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->lambda$run$0(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static lambda$run$1(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelClient$Channel;)V
    .locals 2

    invoke-static {p0}, LY5/h;->a(Landroid/content/Context;)LN5/d;

    move-result-object p0

    const-string v0, "channel must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-virtual {p0}, Lb5/j;->asGoogleApiClient()Lb5/m;

    move-result-object p0

    new-instance v0, LZ5/f;

    const/4 v1, 0x2

    invoke-direct {v0, p2, p0, v1}, LZ5/f;-><init>(Lcom/google/android/gms/wearable/internal/zzbq;Lb5/m;I)V

    check-cast p0, Lc5/C;

    iget-object p0, p0, Lc5/C;->b:Lb5/j;

    invoke-virtual {p0, v0}, Lb5/j;->doRead(Lc5/e;)Lc5/e;

    move-result-object p0

    sget-object p2, LZ5/d;->d:LZ5/d;

    invoke-static {p0, p2}, Lcom/google/android/gms/common/internal/o;->l(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/internal/n;)LR5/p;

    move-result-object p0

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/b;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LR5/p;->e(LR5/e;)LR5/p;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "node : "

    const-string v2, "BookmarkWearableServiceHelper"

    invoke-static {v1, v0, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, LY5/h;->a(Landroid/content/Context;)LN5/d;

    move-result-object v1

    invoke-virtual {v1}, Lb5/j;->asGoogleApiClient()Lb5/m;

    move-result-object v1

    const-string v2, "client is null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LZ5/f;

    invoke-direct {v2, v1, v0}, LZ5/f;-><init>(Lb5/m;Ljava/lang/String;)V

    check-cast v1, Lc5/C;

    iget-object v0, v1, Lc5/C;->b:Lb5/j;

    invoke-virtual {v0, v2}, Lb5/j;->doRead(Lc5/e;)Lc5/e;

    move-result-object v0

    sget-object v1, LZ5/d;->b:LZ5/d;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->l(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/internal/n;)LR5/p;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->val$str:Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, LR5/p;->e(LR5/e;)LR5/p;

    return-void
.end method
