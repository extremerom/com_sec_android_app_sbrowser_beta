.class Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;


# instance fields
.field private mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->mLruCache:Landroid/util/LruCache;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method private addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->mLruCache:Landroid/util/LruCache;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->sInstance:Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    invoke-direct {v0}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->sInstance:Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->sInstance:Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    return-object v0
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->mLruCache:Landroid/util/LruCache;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public requestIcon(Landroid/content/Context;Ljava/lang/String;FLcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;)V
    .locals 3

    const/high16 v0, 0x41b80000    # 23.0f

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v1

    sget-object v2, LS3/n;->d:LS3/n;

    invoke-virtual {v1, v2}, Lh4/a;->d(LS3/n;)Lh4/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/j;

    new-instance v2, Lh4/h;

    invoke-direct {v2}, Lh4/a;-><init>()V

    invoke-virtual {v2, p3, v0}, Lh4/a;->g(II)Lh4/a;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/bumptech/glide/j;->w(Lh4/a;)Lcom/bumptech/glide/j;

    move-result-object p3

    new-instance v0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;-><init>(Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;)V

    sget-object p0, Ll4/f;->a:LR5/n;

    const/4 p1, 0x0

    invoke-virtual {p3, v0, p1, p3, p0}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public requestVirtualCardIcon(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/high16 v2, 0x41b80000    # 23.0f

    mul-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x42100000    # 36.0f

    mul-float/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, p3, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p2, v0}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    const-string p0, "TinCustomIconFetcher"

    const-string p1, "File not found. Add one or more cards in Samsung Wallet"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method
