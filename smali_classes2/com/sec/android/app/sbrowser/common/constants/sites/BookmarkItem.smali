.class public Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field private mChildCount:I

.field private mCreatedTime:J

.field private mCurrentPosition:I

.field private mDeviceName:Ljava/lang/String;

.field private mDominantColor:I

.field private mDominantText:Ljava/lang/String;

.field private final mEditable:Z

.field private mExpanded:Z

.field private mFolderCount:I

.field private mGUID:Ljava/lang/String;

.field private mId:J

.field private mIsChecked:Z

.field private mIsIconRequested:Z

.field private mIsPrivate:Z

.field private mLevelFromParent:I

.field private mParentGUID:Ljava/lang/String;

.field private mParentId:J

.field private mParentName:Ljava/lang/String;

.field private mPosition:I

.field private mSYNC4:Ljava/lang/String;

.field private mScrollPosition:I

.field private mTitle:Ljava/lang/String;

.field private mTouchIconData:[B

.field private mTouchicon:Landroid/graphics/Bitmap;

.field private mType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

.field private mUpdatedTime:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mDominantColor:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mCurrentPosition:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mScrollPosition:I

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mId:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mEditable:Z

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mAccountType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    iput-wide p6, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentId:J

    iput-wide p10, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mCreatedTime:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->checkEmptyTitle()V

    return-void
.end method

.method private checkEmptyTitle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const-string v1, "Folder"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static clone(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 13

    new-instance v12, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTime()J

    move-result-wide v10

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;-><init>(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getPosition()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setPosition(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v12, p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setGUID(Ljava/lang/String;)V

    return-object v12
.end method

.method public static create(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 13

    new-instance v12, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-object v0, v12

    move-wide v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;-><init>(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)V

    return-object v12
.end method

.method public static isFolderItemsPresent(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq v3, v4, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private writeBookmarkObjectContents(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mAccountType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mEditable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mLevelFromParent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mGUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentGUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mCreatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mId:J

    iget-wide p0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mId:J

    cmp-long p0, v1, p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mAccountType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    return-object p0
.end method

.method public getBookmarkLevel()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mLevelFromParent:I

    return p0
.end method

.method public getChildCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mChildCount:I

    return p0
.end method

.method public getChromeEdgeFolderTitle(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string p0, "Chrome Bookmarks"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const v0, 0x7f14043d

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Chrome"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Edge Bookmarks"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Edge"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public getCurrentPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mCurrentPosition:I

    return p0
.end method

.method public getCurrentScrollPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mScrollPosition:I

    return p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getDominantColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mDominantColor:I

    return p0
.end method

.method public getDominantText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mDominantText:Ljava/lang/String;

    return-object p0
.end method

.method public getFolderCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mFolderCount:I

    return p0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mGUID:Ljava/lang/String;

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mId:J

    return-wide v0
.end method

.method public getParentGUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentGUID:Ljava/lang/String;

    return-object p0
.end method

.method public getParentId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentId:J

    return-wide v0
.end method

.method public getParentName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentName:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mPosition:I

    return p0
.end method

.method public getSYNC4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mSYNC4:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mCreatedTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTouchicon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchicon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getTouchiconData()[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchIconData:[B

    return-object p0
.end method

.method public getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    return-object p0
.end method

.method public getUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mUpdatedTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mIsChecked:Z

    return p0
.end method

.method public isDndOnRootFolder()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEditable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mGUID:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mGUID:Ljava/lang/String;

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mGUID:Ljava/lang/String;

    const-string v1, "toolbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mGUID:Ljava/lang/String;

    const-string v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mGUID:Ljava/lang/String;

    const-string v1, "unfiled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mEditable:Z

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mExpanded:Z

    return p0
.end method

.method public isIconAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchIconData:[B

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isIconRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mIsIconRequested:Z

    return p0
.end method

.method public isNotSelectable(ZZ)Z
    .locals 2

    const-string v0, "SBROWSERBOOKMARKBAR"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrivate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mIsPrivate:Z

    return p0
.end method

.method public isTouchiconAvailable()Z
    .locals 5

    const-string v0, "BookmarkItem"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchicon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchIconData:[B

    if-eqz v1, :cond_1

    :try_start_0
    array-length v4, v1

    if-le v4, v3, :cond_0

    array-length v4, v1

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchicon:Landroid/graphics/Bitmap;
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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchIconData:[B

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchicon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public setBookmarkLevel(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mLevelFromParent:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mIsChecked:Z

    return-void
.end method

.method public setChildCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mChildCount:I

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mCurrentPosition:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDominantColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mDominantColor:I

    return-void
.end method

.method public setDominantColor([B)V
    .locals 0

    return-void
.end method

.method public setDominantText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mDominantText:Ljava/lang/String;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mExpanded:Z

    return-void
.end method

.method public setFolderCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mFolderCount:I

    return-void
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mGUID:Ljava/lang/String;

    return-void
.end method

.method public setIconRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mIsIconRequested:Z

    return-void
.end method

.method public setParentGUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentGUID:Ljava/lang/String;

    return-void
.end method

.method public setParentId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentId:J

    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mParentName:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mPosition:I

    return-void
.end method

.method public setPrivate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mIsPrivate:Z

    return-void
.end method

.method public setSYNC4Value(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mSYNC4:Ljava/lang/String;

    return-void
.end method

.method public setScrolledState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mScrollPosition:I

    return-void
.end method

.method public setTalkbackOnLongPress(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f140b91

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f140252

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f140b90

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f140272

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v0, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f140b8f

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mCreatedTime:J

    return-void
.end method

.method public setTouchicon([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mTouchIconData:[B

    :cond_0
    return-void
.end method

.method public setType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    return-void
.end method

.method public setUpdatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->mUpdatedTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->writeBookmarkObjectContents(Landroid/os/Parcel;)V

    return-void
.end method
