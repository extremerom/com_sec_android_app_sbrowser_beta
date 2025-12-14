.class public Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;
    }
.end annotation


# instance fields
.field final brandName:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final couponCode:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final couponName:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final expiredDate:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field final id:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Id;
    .end annotation
.end field

.field final namespace:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Namespace;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->namespace:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->e(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->c(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->couponName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->a(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->brandName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->d(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->expiredDate:J

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;->b(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->couponCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->couponName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->brandName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->expiredDate:J

    iput-object p7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->couponCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBrandName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->brandName:Ljava/lang/String;

    return-object p0
.end method

.method public getCouponCode()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->couponCode:Ljava/lang/String;

    return-object p0
.end method

.method public getCouponName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->couponName:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiredDate()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->expiredDate:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CouponDataDocument;->namespace:Ljava/lang/String;

    return-object p0
.end method
