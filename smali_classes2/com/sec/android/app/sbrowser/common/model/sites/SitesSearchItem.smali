.class public Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;
    }
.end annotation


# instance fields
.field private mBookmarkType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

.field private mContentUri:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDominantColor:I

.field private mId:Ljava/lang/Long;

.field private mIsChecked:Z

.field private mIsEditable:Z

.field private final mIsPrivate:Z

.field private mKey:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSmartSearchKey:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTouchIconData:[B

.field private mTouchicon:Landroid/graphics/Bitmap;

.field private mType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsChecked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mDominantColor:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mId:Ljava/lang/Long;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mPath:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsEditable:Z

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mDescription:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsPrivate:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mKey:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mSmartSearchKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsChecked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mDominantColor:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mId:Ljava/lang/Long;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mPath:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsEditable:Z

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsPrivate:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mKey:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mSmartSearchKey:Ljava/lang/String;

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

.method public static isNonShareableItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "quickaccess.internet.apps.samsung.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private removeBeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ".beta"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mBookmarkType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    return-object p0
.end method

.method public getContentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mContentUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->addBetaIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getDominantColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mDominantColor:I

    return p0
.end method

.method public getId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mId:Ljava/lang/Long;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSmartSearchKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mSmartSearchKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTouchIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTouchicon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getTouchIconData()[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTouchIconData:[B

    return-object p0
.end method

.method public getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsChecked:Z

    return p0
.end method

.method public isEditable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsEditable:Z

    return p0
.end method

.method public isPrivate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsPrivate:Z

    return p0
.end method

.method public isTouchIconAvailable()Z
    .locals 5

    const-string v0, "SitesSearchItem"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTouchicon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTouchIconData:[B

    if-eqz v1, :cond_1

    :try_start_0
    array-length v4, v1

    if-le v4, v3, :cond_0

    array-length v4, v1

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTouchicon:Landroid/graphics/Bitmap;
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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTouchIconData:[B

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTouchicon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTouchicon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBookmarkType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mBookmarkType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsChecked:Z

    return-void
.end method

.method public setContentUri(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->removeBeta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mContentUri:Ljava/lang/String;

    return-void
.end method

.method public setDominantColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mDominantColor:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mId:Ljava/lang/Long;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mType:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mKey:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mIsPrivate:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mSmartSearchKey:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTouchIcon([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->mTouchIconData:[B

    :cond_0
    return-void
.end method
