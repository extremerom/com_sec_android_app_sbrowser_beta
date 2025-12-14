.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActions:I

.field private final mAlbumArt:Landroid/graphics/Bitmap;

.field private final mContentIntent:Landroid/content/Intent;

.field private final mContentPendingIntent:Landroid/app/PendingIntent;

.field private final mId:I

.field private final mIsPaused:Z

.field private final mIsPrivate:Z

.field private final mLargeIcon:Landroid/graphics/Bitmap;

.field private final mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;

.field private final mOrigin:Ljava/lang/String;

.field private final mReadAloudActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSmallIcon:I

.field private final mTabId:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZZIILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;Ljava/util/Set;Landroid/content/Intent;Landroid/app/PendingIntent;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/app/PendingIntent;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mActions:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mIsPaused:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mIsPrivate:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mId:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mTabId:I

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mOrigin:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mAlbumArt:Landroid/graphics/Bitmap;

    iput p9, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mSmallIcon:I

    iput-object p10, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz p11, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mReadAloudActions:Ljava/util/Set;

    iput-object p12, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mContentIntent:Landroid/content/Intent;

    iput-object p13, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mContentPendingIntent:Landroid/app/PendingIntent;

    iput-object p14, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;

    return-void
.end method


# virtual methods
.method public getAlbumArt()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getContentIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mContentIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mId:I

    return p0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;

    return-object p0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getReadAloudAction()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mReadAloudActions:Ljava/util/Set;

    return-object p0
.end method

.method public getSmallIcon()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mSmallIcon:I

    return p0
.end method

.method public getTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mTabId:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mIsPaused:Z

    return p0
.end method

.method public isPrivate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mIsPrivate:Z

    return p0
.end method

.method public supportsPlayPause()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mActions:I

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

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;->mActions:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
