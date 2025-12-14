.class public Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAppID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appId"
    .end annotation
.end field

.field private mAverageRating:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "averageRating"
    .end annotation
.end field

.field private mCategoryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categoryName"
    .end annotation
.end field

.field private mCurrencyUnit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currencyUnit"
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mDiscountFlag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discountFlag"
    .end annotation
.end field

.field private mDiscountPrice:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discountPrice"
    .end annotation
.end field

.field private mIconImgURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconImgURL"
    .end annotation
.end field

.field private mPrice:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private mProductID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "productID"
    .end annotation
.end field

.field private mProductName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "productName"
    .end annotation
.end field

.field private mRealContentSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realContentSize"
    .end annotation
.end field

.field private mSellerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sellerName"
    .end annotation
.end field

.field private mShortDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortDescription"
    .end annotation
.end field

.field private mVersionCode:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versionCode"
    .end annotation
.end field

.field private mVersionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versionName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mAppID:Ljava/lang/String;

    return-object p0
.end method

.method public getIconImgURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mIconImgURL:Ljava/lang/String;

    return-object p0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mProductName:Ljava/lang/String;

    return-object p0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mAppID:Ljava/lang/String;

    return-void
.end method

.method public setAverageRating(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mAverageRating:I

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mCategoryName:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mCurrencyUnit:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDiscountFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mDiscountFlag:Ljava/lang/String;

    return-void
.end method

.method public setDiscountPrice(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mDiscountPrice:D

    return-void
.end method

.method public setIconImgURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mIconImgURL:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mPrice:D

    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mProductID:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mProductName:Ljava/lang/String;

    return-void
.end method

.method public setRealContentSize(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mRealContentSize:J

    return-void
.end method

.method public setSellerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mSellerName:Ljava/lang/String;

    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mShortDescription:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mVersionCode:J

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->mVersionName:Ljava/lang/String;

    return-void
.end method
