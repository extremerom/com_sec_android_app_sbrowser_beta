.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0013\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0013\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0006\u00a2\u0006\u0004\u0008\u0013\u0010\tJ\u0010\u0010\u0014\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u0013\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0006\u00a2\u0006\u0004\u0008\u0016\u0010\tJ\u0013\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0006\u00a2\u0006\u0004\u0008\u0017\u0010\tJ\r\u0010\u0018\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u001b\u0010\u0012R\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010\'R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010,\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010\'R\u0014\u0010-\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010+R\u0014\u0010.\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010!\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "LQc/h;",
        "",
        "getPromotionEnabledFlow",
        "()LQc/h;",
        "",
        "getPromotionUrlFlow",
        "",
        "count",
        "Ldb/r;",
        "setPromotionCount",
        "(ILib/c;)Ljava/lang/Object;",
        "getPromotionCount",
        "(Lib/c;)Ljava/lang/Object;",
        "getPromotionCountFlow",
        "incrementPromotionCount",
        "",
        "getPromotionLastDisplayedTimeFlow",
        "getPromotionIuidFlow",
        "resetPromotion",
        "()V",
        "onPromotionClickFromMain",
        "onPromotionClick",
        "Landroid/content/SharedPreferences;",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;",
        "promotionEnablePreference",
        "Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;",
        "Lcom/sec/android/app/sbrowser/common/livedata/StringPreference;",
        "promotionUrl1Preference",
        "Lcom/sec/android/app/sbrowser/common/livedata/StringPreference;",
        "Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;",
        "promotionCountPreference",
        "Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;",
        "promotionIuidPreference",
        "Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;",
        "promotionLastDisplayedTimePreference",
        "Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;",
        "promotionSettingCountPreference",
        "promotionSettingLastDisplayedTimePreference",
        "promotionSettingButtonPressedPreference",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final preferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final promotionCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final promotionEnablePreference:Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final promotionIuidPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final promotionLastDisplayedTimePreference:Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final promotionSettingButtonPressedPreference:Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final promotionSettingCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final promotionSettingLastDisplayedTimePreference:Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final promotionUrl1Preference:Lcom/sec/android/app/sbrowser/common/livedata/StringPreference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;-><init>(Landroid/content/Context;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getDefaultSharedPreferences(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->preferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;

    const-string v2, "pref_promotion_enable"

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionEnablePreference:Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/StringPreference;

    const-string v2, "pref_promotion_url"

    const-string v3, ""

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/livedata/StringPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionUrl1Preference:Lcom/sec/android/app/sbrowser/common/livedata/StringPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    const-string v2, "pref_promotion_times"

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    const-string v2, "pref_promotion_iuid"

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionIuidPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    const-string v2, "pref_promotion_last_displayed_time"

    const-wide/16 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionLastDisplayedTimePreference:Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    const-string v2, "pref_promotion_setting_count"

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionSettingCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    const-string v2, "pref_promotion_setting_time_stamp"

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionSettingLastDisplayedTimePreference:Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;

    const-string v2, "pref_promotion_setting_button_pressed"

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionSettingButtonPressedPreference:Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILtb/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getPromotionCountPreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    return-object p0
.end method

.method public static final synthetic access$getPromotionLastDisplayedTimePreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionLastDisplayedTimePreference:Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    return-object p0
.end method

.method public static final synthetic access$getPromotionSettingButtonPressedPreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionSettingButtonPressedPreference:Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;

    return-object p0
.end method

.method public static final synthetic access$getPromotionSettingCountPreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionSettingCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    return-object p0
.end method

.method public static final synthetic access$getPromotionSettingLastDisplayedTimePreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionSettingLastDisplayedTimePreference:Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    return-object p0
.end method


# virtual methods
.method public final getPromotionCount(Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;->getValue(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPromotionCountFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/Preference;->asFlow()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getPromotionEnabledFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionEnablePreference:Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/Preference;->asFlow()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getPromotionIuidFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionIuidPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/Preference;->asFlow()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getPromotionLastDisplayedTimeFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionLastDisplayedTimePreference:Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/Preference;->asFlow()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getPromotionUrlFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionUrl1Preference:Lcom/sec/android/app/sbrowser/common/livedata/StringPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/Preference;->asFlow()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final incrementPromotionCount(Lib/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;Lib/c;)V

    :goto_0
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;->label:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->getPromotionCount(Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v4

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$incrementPromotionCount$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->setPromotionCount(ILib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final onPromotionClick(Lib/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;Lib/c;)V

    :goto_0
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->I$0:I

    iget-wide v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->J$0:J

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->I$0:I

    iget-wide v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->J$0:J

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->label:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->getPromotionCount(Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-int/2addr p1, v5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->J$0:J

    iput p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->I$0:I

    iput v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;->setValue(ILib/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    move p0, p1

    move-wide v4, v6

    :goto_2
    iget-object p1, v2, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionLastDisplayedTimePreference:Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->L$0:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->J$0:J

    iput p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->I$0:I

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->label:I

    invoke-virtual {p1, v4, v5, v0}, Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;->setValue(JLib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, v2

    move-wide v1, v4

    :goto_3
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_promotion_times"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p0, "pref_promotion_last_displayed_time"

    invoke-interface {p1, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final onPromotionClickFromMain()V
    .locals 3

    sget-object v0, LNc/N;->c:LWc/e;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClickFromMain$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClickFromMain$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final resetPromotion()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;Lib/c;)V

    invoke-static {v0}, LNc/E;->E(Lsb/n;)Ljava/lang/Object;

    return-void
.end method

.method public final setPromotionCount(ILib/c;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->promotionCountPreference:Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;->setValue(ILib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
