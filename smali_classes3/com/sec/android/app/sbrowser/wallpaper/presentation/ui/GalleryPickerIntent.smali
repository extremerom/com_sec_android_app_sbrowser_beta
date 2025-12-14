.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;",
        "",
        "<init>",
        "()V",
        "",
        "albumKey",
        "",
        "getAlbumId",
        "(Ljava/lang/String;)I",
        "bucketId",
        "maxCount",
        "Landroid/content/Intent;",
        "getPickerIntent",
        "(II)Landroid/content/Intent;",
        "getFavoriteBucketId",
        "()I",
        "getRecentBucketId",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAlbumId(Ljava/lang/String;)I
    .locals 1

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "US"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toLowerCase(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static synthetic getPickerIntent$default(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;IIILjava/lang/Object;)Landroid/content/Intent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x4

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;->getPickerIntent(II)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getFavoriteBucketId()I
    .locals 1

    const-string v0, "Virtual/Favourites"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;->getAlbumId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPickerIntent(II)Landroid/content/Intent;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x20008000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "image/*"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "include_virtual_album"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "pick-max-item"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "multi-pick"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p2, "album_pictures_pick"

    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "bucketId"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public final getRecentBucketId()I
    .locals 1

    const-string v0, "Virtual/Recently"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/GalleryPickerIntent;->getAlbumId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
