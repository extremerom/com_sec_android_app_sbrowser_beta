.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActions:I

.field private mAlbumArt:Landroid/graphics/Bitmap;

.field private mContentIntent:Landroid/content/Intent;

.field private mContentPendingIntent:Landroid/app/PendingIntent;

.field private mId:I

.field private mIsPaused:Z

.field private mIsPrivate:Z

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;

.field private mOrigin:Ljava/lang/String;

.field private mReadAloudActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallIcon:I

.field private mTabId:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mOrigin:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mTabId:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mActions:I

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;
    .locals 16

    move-object/from16 v0, p0

    new-instance v15, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;

    iget v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mActions:I

    iget-boolean v2, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mIsPaused:Z

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mIsPrivate:Z

    iget v4, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mId:I

    iget v5, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mTabId:I

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mTitle:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mOrigin:Ljava/lang/String;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mAlbumArt:Landroid/graphics/Bitmap;

    iget v9, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mSmallIcon:I

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mReadAloudActions:Ljava/util/Set;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mContentIntent:Landroid/content/Intent;

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mContentPendingIntent:Landroid/app/PendingIntent;

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;-><init>(IZZIILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;Ljava/util/Set;Landroid/content/Intent;Landroid/app/PendingIntent;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;)V

    return-object v15
.end method

.method public setActions(I)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mActions:I

    return-object p0
.end method

.method public setAlbumArt(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setContentIntent(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mContentIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setId(I)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mId:I

    return-object p0
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;

    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public setPaused(Z)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mIsPaused:Z

    return-object p0
.end method

.method public setPrivate(Z)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mIsPrivate:Z

    return-object p0
.end method

.method public setReadAloudActions(Ljava/util/Set;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mReadAloudActions:Ljava/util/Set;

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mSmallIcon:I

    return-object p0
.end method

.method public setTabId(I)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mTabId:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfoBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
