.class public Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEncoded:Ljava/lang/String;

.field private mIsTrusted:Z

.field private mResourceId:I

.field private mUnsafeData:[B

.field private mWebApkPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mWebApkPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mResourceId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mEncoded:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mIsTrusted:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mUnsafeData:[B

    return-void
.end method

.method private generateBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mEncoded:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mIsTrusted:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->decodeBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mWebApkPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mResourceId:I

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mWebApkPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mResourceId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->generateBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public data()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mUnsafeData:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->encoded()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public encoded()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mEncoded:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->encodeBitmapAsString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mEncoded:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->mEncoded:Ljava/lang/String;

    return-object p0
.end method
