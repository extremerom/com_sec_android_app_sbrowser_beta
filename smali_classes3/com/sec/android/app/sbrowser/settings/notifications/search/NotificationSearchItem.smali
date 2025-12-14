.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mId:Ljava/lang/Long;

.field private mIsChecked:Z

.field private mIsRead:I

.field private mPersID:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTouchIconData:[B

.field private mTouchicon:Landroid/graphics/Bitmap;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mIsChecked:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mId:Ljava/lang/Long;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mPersID:Ljava/lang/String;

    iput p6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mIsRead:I

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mTouchIconData:[B

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mId:Ljava/lang/Long;

    return-object p0
.end method

.method public getPersID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mPersID:Ljava/lang/String;

    return-object p0
.end method

.method public getRead()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mIsRead:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTouchicon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mTouchicon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mIsChecked:Z

    return p0
.end method

.method public isTouchiconAvailable()Z
    .locals 5

    const-string v0, "NotificationSearchItem"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mTouchicon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mTouchIconData:[B

    if-eqz v1, :cond_1

    :try_start_0
    array-length v4, v1

    if-le v4, v3, :cond_0

    array-length v4, v1

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mTouchicon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "NullPointerException happened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v1, "OutOfMemoryError happened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mTouchIconData:[B

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mTouchicon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->mIsChecked:Z

    return-void
.end method
