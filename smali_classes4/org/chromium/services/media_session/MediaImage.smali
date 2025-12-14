.class public final Lorg/chromium/services/media_session/MediaImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mSrc:Lorg/chromium/url/GURL;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/url/GURL;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/GURL;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/chromium/services/media_session/MediaImage;->mSrc:Lorg/chromium/url/GURL;

    iput-object p2, p0, Lorg/chromium/services/media_session/MediaImage;->mType:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/services/media_session/MediaImage;->mSizes:Ljava/util/List;

    return-void
.end method

.method private static create(Lorg/chromium/url/GURL;Ljava/lang/String;[Landroid/graphics/Rect;)Lorg/chromium/services/media_session/MediaImage;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/services/media_session/MediaImage;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/services/media_session/MediaImage;-><init>(Lorg/chromium/url/GURL;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static createRect(II)Landroid/graphics/Rect;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/chromium/services/media_session/MediaImage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/chromium/services/media_session/MediaImage;

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaImage;->mSrc:Lorg/chromium/url/GURL;

    iget-object v3, p1, Lorg/chromium/services/media_session/MediaImage;->mSrc:Lorg/chromium/url/GURL;

    invoke-virtual {v1, v3}, Lorg/chromium/url/GURL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaImage;->mType:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/services/media_session/MediaImage;->mType:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaImage;->mSizes:Ljava/util/List;

    iget-object p1, p1, Lorg/chromium/services/media_session/MediaImage;->mSizes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaImage;->mSizes:Ljava/util/List;

    return-object p0
.end method

.method public getSrc()Lorg/chromium/url/GURL;
    .locals 0

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaImage;->mSrc:Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaImage;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/chromium/services/media_session/MediaImage;->mSrc:Lorg/chromium/url/GURL;

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/chromium/services/media_session/MediaImage;->mType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaImage;->mSizes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
