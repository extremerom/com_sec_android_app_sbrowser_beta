.class public final Lorg/chromium/services/media_session/MediaMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/services/media_session/MediaMetadata;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/services/media_session/MediaMetadata;->mArtist:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/services/media_session/MediaMetadata;->mAlbum:Ljava/lang/String;

    return-void
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/services/media_session/MediaMetadata;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/services/media_session/MediaMetadata;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/services/media_session/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/chromium/services/media_session/MediaMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/chromium/services/media_session/MediaMetadata;

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaMetadata;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/services/media_session/MediaMetadata;->mTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaMetadata;->mArtist:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/services/media_session/MediaMetadata;->mArtist:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaMetadata;->mAlbum:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/services/media_session/MediaMetadata;->mAlbum:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaMetadata;->mAlbum:Ljava/lang/String;

    return-object p0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaMetadata;->mArtist:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaMetadata;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/chromium/services/media_session/MediaMetadata;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/services/media_session/MediaMetadata;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/chromium/services/media_session/MediaMetadata;->mArtist:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaMetadata;->mAlbum:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
