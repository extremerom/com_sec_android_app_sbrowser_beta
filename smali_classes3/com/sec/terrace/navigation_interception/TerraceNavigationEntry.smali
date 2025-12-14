.class public Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mNavigationEntry:Lorg/chromium/content_public/browser/NavigationEntry;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lorg/chromium/content_public/browser/NavigationEntry;

    new-instance v2, Lorg/chromium/url/GURL;

    move-object v0, p2

    invoke-direct {v2, p2}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/chromium/url/GURL;

    move-object v0, p3

    invoke-direct {v3, p3}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/chromium/url/GURL;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object v0, v11

    move v1, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/chromium/content_public/browser/NavigationEntry;-><init>(ILorg/chromium/url/GURL;Lorg/chromium/url/GURL;Lorg/chromium/url/GURL;Ljava/lang/String;Landroid/graphics/Bitmap;IJZ)V

    move-object v0, p0

    iput-object v11, v0, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->mNavigationEntry:Lorg/chromium/content_public/browser/NavigationEntry;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/NavigationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->mNavigationEntry:Lorg/chromium/content_public/browser/NavigationEntry;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->mNavigationEntry:Lorg/chromium/content_public/browser/NavigationEntry;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationEntry;->getIndex()I

    move-result p0

    return p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->mNavigationEntry:Lorg/chromium/content_public/browser/NavigationEntry;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationEntry;->getOriginalUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->mNavigationEntry:Lorg/chromium/content_public/browser/NavigationEntry;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->mNavigationEntry:Lorg/chromium/content_public/browser/NavigationEntry;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationEntry;->getUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
