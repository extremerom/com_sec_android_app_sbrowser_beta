.class Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    const-string v1, "policy"

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    return-void
.end method

.method private updateExpirationDate(Ljava/util/Calendar;)V
    .locals 2
    .param p1    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->clear(I)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->clear(I)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->clear(I)V

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;->setExpirationDate(J)V

    return-void
.end method


# virtual methods
.method public getCurrentCalendar()Ljava/util/Calendar;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getExpirationDate()J
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    const-string v0, "expiration_date"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isExpired()Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;->getCurrentCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;->getExpirationDate()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "PromotionPolicy"

    const-string v2, "First initializing"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;->updateExpirationDate(Ljava/util/Calendar;)V

    return v4

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;->updateExpirationDate(Ljava/util/Calendar;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v4
.end method

.method public setExpirationDate(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPolicy;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "expiration_date"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
