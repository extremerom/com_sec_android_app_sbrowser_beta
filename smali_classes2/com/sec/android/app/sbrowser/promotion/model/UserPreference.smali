.class Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/promotion/model/Category;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mThreshold:I

    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/model/Category;->UNKNOWN:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/model/Category;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->initThreshold()V

    return-void
.end method

.method private getThreshold(Landroid/content/Context;Z)I
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils$Companion;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils$Companion;->getInitThreshold(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils$Companion;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils$Companion;->getRepeatThreshold(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private initThreshold()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "threshold"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mThreshold:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getThreshold(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mThreshold:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mThreshold:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private updateThreshold()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v1

    const-string v2, "threshold"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mThreshold:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v4

    const-string v5, "dismiss_count"

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getThreshold(Landroid/content/Context;Z)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mThreshold:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mThreshold:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "dismiss_count"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->updateThreshold()V

    return-void
.end method

.method public expire()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "weight"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    const-string v2, "dismiss_count"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->initThreshold()V

    return-void
.end method

.method public getDimension()Ljava/util/Map;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    const-string v2, "weight"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "visit_count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    const-string v1, "dismiss_count"

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    return-object p0
.end method

.method public getThreshold()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mThreshold:I

    return p0
.end method

.method public incWeight()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->isPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "weight"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "User weight : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserPreference"

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getThreshold()I

    move-result v2

    if-ge v2, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getThreshold()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->POSITIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public isPreferred()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->values()[Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "status"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    aget-object p0, v0, p0

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->POSITIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public resetHistory()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "threshold"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    const-string v2, "weight"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v0

    const-string v2, "dismiss_count"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->initThreshold()V

    return-void
.end method

.method public showToastMessage()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User preference : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->values()[Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-string v5, "status"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getHelper()Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    move-result-object v2

    const-string v3, "weight"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/UserPreference;->getThreshold()I

    move-result p0

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
