.class public final Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfigUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfigUtils$Companion;",
        "",
        "<init>",
        "()V",
        "onNativeInitialized",
        "",
        "context",
        "Landroid/content/Context;",
        "getWebFeatureConfig",
        "Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;",
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfigUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWebFeatureConfig()Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "WebFeatureConfig"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getFeature(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;

    return-object p0
.end method

.method public final onNativeInitialized(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfigUtils$Companion;->getWebFeatureConfig()Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/WebFeatureConfig;->onNativeInitialized(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
