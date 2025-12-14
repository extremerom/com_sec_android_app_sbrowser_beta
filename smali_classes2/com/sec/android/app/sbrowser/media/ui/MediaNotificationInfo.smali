.class public Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;,
        Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    }
.end annotation


# instance fields
.field public final contentIntent:Landroid/content/Intent;

.field public final contentPendingIntent:Landroid/app/PendingIntent;

.field public final defaultNotificationLargeIcon:I

.field public final id:I

.field public final isPaused:Z

.field public final isPrivate:Z

.field public final listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

.field private final mActions:I

.field public final mediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mediaSessionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSessionImage:Landroid/graphics/Bitmap;

.field public final metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

.field public final notificationLargeIcon:Landroid/graphics/Bitmap;

.field public final notificationSmallIcon:I

.field public final origin:Ljava/lang/String;

.field public final tabId:I


# direct methods
.method private constructor <init>(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;ZLjava/lang/String;IZILandroid/graphics/Bitmap;ILandroid/graphics/Bitmap;IILandroid/content/Intent;Landroid/app/PendingIntent;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;Ljava/util/Set;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;",
            "Z",
            "Ljava/lang/String;",
            "IZI",
            "Landroid/graphics/Bitmap;",
            "I",
            "Landroid/graphics/Bitmap;",
            "II",
            "Landroid/content/Intent;",
            "Landroid/app/PendingIntent;",
            "Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    move v2, p2

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    move-object v2, p3

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    move v2, p4

    iput v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    move v2, p5

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPrivate:Z

    move v2, p6

    iput v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationSmallIcon:I

    move-object v2, p7

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationLargeIcon:Landroid/graphics/Bitmap;

    move v2, p8

    iput v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->defaultNotificationLargeIcon:I

    move-object v2, p9

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionImage:Landroid/graphics/Bitmap;

    move v2, p10

    iput v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mActions:I

    move v2, p11

    iput v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    move-object v2, p12

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionActions:Ljava/util/Set;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;ZLjava/lang/String;IZILandroid/graphics/Bitmap;ILandroid/graphics/Bitmap;IILandroid/content/Intent;Landroid/app/PendingIntent;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;Ljava/util/Set;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;I)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;ZLjava/lang/String;IZILandroid/graphics/Bitmap;ILandroid/graphics/Bitmap;IILandroid/content/Intent;Landroid/app/PendingIntent;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;Ljava/util/Set;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    iget-boolean v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPrivate:Z

    iget-boolean v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPrivate:Z

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationSmallIcon:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationSmallIcon:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationLargeIcon:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationLargeIcon:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->defaultNotificationLargeIcon:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->defaultNotificationLargeIcon:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionImage:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionImage:Landroid/graphics/Bitmap;

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mActions:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mActions:I

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    if-eq v1, v3, :cond_4

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentPendingIntent:Landroid/app/PendingIntent;

    if-eq v1, v3, :cond_5

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    if-eq v1, v3, :cond_6

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionActions:Ljava/util/Set;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionActions:Ljava/util/Set;

    if-eq v1, v3, :cond_7

    if-eqz v1, :cond_8

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    if-ne p0, p1, :cond_8

    goto :goto_0

    :cond_8
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPrivate:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationSmallIcon:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationLargeIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->defaultNotificationLargeIcon:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mActions:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public supportsPlayPause()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mActions:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsSwipeAway()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mActions:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
