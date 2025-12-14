.class public Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContentUri:Ljava/lang/String;

.field private mCreatedTime:J

.field private mDescription:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDirPath:Ljava/lang/String;

.field private mDomainUrl:Ljava/lang/String;

.field private mId:I

.field private mImage:[B

.field private mImageStyle:I

.field private mIsChecked:Z

.field private mIsReaderPage:Z

.field private mIsSyncable:Ljava/lang/Boolean;

.field private mIsSynced:Ljava/lang/Boolean;

.field private mSync1:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140dca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140dc1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDescription:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsReaderPage:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsChecked:Z

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImageStyle:I

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSyncable:Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSynced:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDeviceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mSync1:Ljava/lang/String;

    return-void
.end method

.method private addBetaIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ".beta"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".sbrowser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x9

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static removeBeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".beta"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private setImageStyle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImageStyle:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImage:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImage:[B

    :cond_0
    return-void
.end method

.method public fillSavedPageItem(Landroid/database/Cursor;)V
    .locals 3

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mId:I

    const-string v0, "path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->removeBeta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mContentUri:Ljava/lang/String;

    const-string v0, "dir_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->removeBeta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDirPath:Ljava/lang/String;

    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mTitle:Ljava/lang/String;

    const-string v0, "description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDescription:Ljava/lang/String;

    const-string v0, "url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDomainUrl:Ljava/lang/String;

    const-string v1, "isReadingItem"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsReaderPage:Z

    const-string v1, "device_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDeviceId:Ljava/lang/String;

    const-string v1, "image_style"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImageStyle:I

    const-string v1, "sync1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mSync1:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSyncable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSynced:Ljava/lang/Boolean;

    const-string v0, "created"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mCreatedTime:J

    return-void
.end method

.method public getContentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mContentUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->addBetaIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues(Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 5

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "path"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mContentUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dir_path"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDirPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "favicon"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImage:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "url"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDeviceId:Ljava/lang/String;

    :goto_0
    const-string v3, "device_id"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_name"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "created"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "modified"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_deleted"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_dirty"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImageStyle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "image_style"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mSync1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mSync1:Ljava/lang/String;

    :goto_1
    const-string v4, "sync1"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sync2"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sync3"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sync4"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "account_name"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_type"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sync5"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsReaderPage:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "isReadingItem"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "isNightMode"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDirPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->addBetaIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDomainUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDomainUrl:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDomainUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mId:I

    return p0
.end method

.method public getImage()[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImage:[B

    return-object p0
.end method

.method public getImageStyle()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImageStyle:I

    return p0
.end method

.method public getIsSyncable()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSyncable:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDirPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->getLength(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x1f400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSyncable:Ljava/lang/Boolean;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSyncable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getIsSynced()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSynced:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDeviceId:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mSync1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSynced:Ljava/lang/Boolean;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsSynced:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mCreatedTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsChecked:Z

    return p0
.end method

.method public isReaderPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsReaderPage:Z

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsChecked:Z

    return-void
.end method

.method public setContentUri(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->removeBeta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mContentUri:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDirPath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->removeBeta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mDirPath:Ljava/lang/String;

    return-void
.end method

.method public setImage([B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mImage:[B

    if-nez p1, :cond_0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setImageStyle(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setImageStyle(I)V

    :goto_0
    return-void
.end method

.method public setReaderPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mIsReaderPage:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->mUrl:Ljava/lang/String;

    return-void
.end method
