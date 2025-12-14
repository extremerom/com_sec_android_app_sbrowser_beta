.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBrandName:Ljava/lang/String;

.field private mCouponCode:Ljava/lang/String;

.field private mCouponName:Ljava/lang/String;

.field private mExpiredDate:J

.field private mId:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mNamespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mBrandName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mCouponCode:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mCouponName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mExpiredDate:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;I)V

    return-object v0
.end method

.method public setBrandName(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mBrandName:Ljava/lang/String;

    return-object p0
.end method

.method public setCouponCode(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mCouponCode:Ljava/lang/String;

    return-object p0
.end method

.method public setCouponName(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mCouponName:Ljava/lang/String;

    return-object p0
.end method

.method public setExpiredDate(J)Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mExpiredDate:J

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method
