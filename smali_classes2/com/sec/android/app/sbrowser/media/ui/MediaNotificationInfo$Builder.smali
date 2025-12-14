.class public final Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActions:I

.field private mContentIntent:Landroid/content/Intent;

.field private mContentPendingIntent:Landroid/app/PendingIntent;

.field private mDefaultNotificationLargeIcon:I

.field private mId:I

.field private mIsPaused:Z

.field private mIsPrivate:Z

.field private mListener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

.field private mMediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMediaSessionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionImage:Landroid/graphics/Bitmap;

.field private mMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

.field private mNotificationLargeIcon:Landroid/graphics/Bitmap;

.field private mNotificationSmallIcon:I

.field private mOrigin:Ljava/lang/String;

.field private mTabId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mOrigin:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mTabId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mIsPrivate:Z

    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mActions:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;
    .locals 21

    move-object/from16 v0, p0

    new-instance v19, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mIsPaused:Z

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mOrigin:Ljava/lang/String;

    iget v5, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mTabId:I

    iget-boolean v6, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mIsPrivate:Z

    iget v7, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mNotificationSmallIcon:I

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mNotificationLargeIcon:Landroid/graphics/Bitmap;

    iget v9, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mDefaultNotificationLargeIcon:I

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mMediaSessionImage:Landroid/graphics/Bitmap;

    iget v11, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mActions:I

    iget v12, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mId:I

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mContentIntent:Landroid/content/Intent;

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mContentPendingIntent:Landroid/app/PendingIntent;

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mListener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mMediaSessionActions:Ljava/util/Set;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mMediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;ZLjava/lang/String;IZILandroid/graphics/Bitmap;ILandroid/graphics/Bitmap;IILandroid/content/Intent;Landroid/app/PendingIntent;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;Ljava/util/Set;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;I)V

    return-object v19
.end method

.method public setActions(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mActions:I

    return-object p0
.end method

.method public setContentIntent(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mContentIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setContentPendingIntent(Landroid/app/PendingIntent;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mContentPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDefaultNotificationLargeIcon(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mDefaultNotificationLargeIcon:I

    return-object p0
.end method

.method public setId(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mId:I

    return-object p0
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mListener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    return-object p0
.end method

.method public setMediaPosition(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mMediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    return-object p0
.end method

.method public setMediaSessionActions(Ljava/util/Set;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mMediaSessionActions:Ljava/util/Set;

    return-object p0
.end method

.method public setMediaSessionImage(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mMediaSessionImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setMetadata(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    return-object p0
.end method

.method public setNotificationLargeIcon(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mNotificationLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setNotificationSmallIcon(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mNotificationSmallIcon:I

    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public setPaused(Z)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mIsPaused:Z

    return-object p0
.end method

.method public setPrivate(Z)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mIsPrivate:Z

    return-object p0
.end method

.method public setTabId(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->mTabId:I

    return-object p0
.end method
