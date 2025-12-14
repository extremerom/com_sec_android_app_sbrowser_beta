.class public Lorg/chromium/content_public/browser/NavigationEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mFavicon:Landroid/graphics/Bitmap;

.field private final mIndex:I

.field private final mIsInitialEntry:Z

.field private final mOriginalUrl:Lorg/chromium/url/GURL;

.field private mTimestamp:J

.field private final mTitle:Ljava/lang/String;

.field private mTransition:I

.field private final mUrl:Lorg/chromium/url/GURL;

.field private final mVirtualUrl:Lorg/chromium/url/GURL;


# direct methods
.method public constructor <init>(ILorg/chromium/url/GURL;Lorg/chromium/url/GURL;Lorg/chromium/url/GURL;Ljava/lang/String;Landroid/graphics/Bitmap;IJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mIndex:I

    iput-object p2, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mUrl:Lorg/chromium/url/GURL;

    iput-object p3, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mVirtualUrl:Lorg/chromium/url/GURL;

    iput-object p4, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mOriginalUrl:Lorg/chromium/url/GURL;

    iput-object p5, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mTitle:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mFavicon:Landroid/graphics/Bitmap;

    iput p7, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mTransition:I

    iput-wide p8, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mTimestamp:J

    iput-boolean p10, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mIsInitialEntry:Z

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mIndex:I

    return p0
.end method

.method public getOriginalUrl()Lorg/chromium/url/GURL;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mOriginalUrl:Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Lorg/chromium/url/GURL;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mUrl:Lorg/chromium/url/GURL;

    return-object p0
.end method
