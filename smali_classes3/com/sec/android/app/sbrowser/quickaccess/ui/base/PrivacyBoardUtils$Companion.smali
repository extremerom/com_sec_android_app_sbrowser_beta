.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J)\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001f\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008$\u0010#R\u0014\u0010%\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0014\u0010&\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008&\u0010#R\u0014\u0010\'\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010#R\u0014\u0010(\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010*\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008*\u0010)R\u0014\u0010+\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008+\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;",
        "",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;",
        "privacyBoardStatus",
        "Landroid/content/Context;",
        "context",
        "Ldb/r;",
        "openPrivacySettings",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Landroid/content/Context;)V",
        "",
        "event",
        "",
        "value",
        "sendSALogging",
        "(Ljava/lang/String;J)V",
        "detail",
        "(Ljava/lang/String;Ljava/lang/String;J)V",
        "",
        "visibility",
        "isTurnedOn",
        "(Z)J",
        "",
        "type",
        "getFeatureType",
        "(I)J",
        "featureType",
        "getFeatureName",
        "(I)Ljava/lang/String;",
        "onClickPrivacyContent",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V",
        "onClickTurnOn",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V",
        "FEATURE_DETAIL_SAT",
        "Ljava/lang/String;",
        "FEATURE_DETAIL_REDIRECT",
        "FEATURE_DETAIL_POPUP",
        "FEATURE_DETAIL_ADBLOCK",
        "FEATURE_DETAIL_FALLBACK",
        "FEATURE_VALUE_POPUP",
        "J",
        "FEATURE_VALUE_REDIRECT",
        "FEATURE_VALUE_SAT",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;-><init>()V

    return-void
.end method

.method private final getFeatureName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "ALL"

    goto :goto_0

    :cond_0
    const-string p0, "ADBLOCK"

    goto :goto_0

    :cond_1
    const-string p0, "POPUP"

    goto :goto_0

    :cond_2
    const-string p0, "BACK_REDIR"

    goto :goto_0

    :cond_3
    const-string p0, "SAT"

    :goto_0
    return-object p0
.end method

.method private final getFeatureType(I)J
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0x2

    :goto_0
    return-wide p0
.end method

.method private final isTurnedOn(Z)J
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method private final openPrivacySettings(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchAdBlockerSettings(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->isFeatureEnabled()Z

    move-result p1

    invoke-static {p2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchPrivacySettings(Landroid/content/Context;IZ)V

    :goto_0
    return-void
.end method

.method private final sendSALogging(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;->sendSALogging(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private final sendSALogging(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    const-string p0, "201"

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final onClickPrivacyContent(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;->openPrivacySettings(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;->getFeatureName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->isFeatureEnabled()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;->isTurnedOn(Z)J

    move-result-wide v0

    const-string p2, "5097"

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;->sendSALogging(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final onClickTurnOn(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;->getFeatureType(I)J

    move-result-wide v0

    const-string p1, "5098"

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/PrivacyBoardUtils$Companion;->sendSALogging(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
