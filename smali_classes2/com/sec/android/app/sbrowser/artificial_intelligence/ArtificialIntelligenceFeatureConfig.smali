.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig;
.super Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\rR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig;",
        "Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;",
        "<init>",
        "()V",
        "",
        "",
        "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
        "getFieldTypeMap",
        "()Ljava/util/Map;",
        "Landroid/content/Context;",
        "context",
        "Ldb/r;",
        "onFeatureConfigUpdated",
        "(Landroid/content/Context;)V",
        "onUpdateFailed",
        "fieldTypeMap",
        "Ljava/util/Map;",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final fieldTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "ArtificialIntelligence"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig;->fieldTypeMap:Ljava/util/Map;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->BOOLEAN:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "summary_support"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_summary_support"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->INT:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v2, "summarize_controller_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v3, "summarize_controller"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "summary_support_languages"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "summary_domain_block_list"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "summary_policy"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "help_me_write_support"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "help_me_write_version"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "help_me_write"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read_aloud_support"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read_aloud_version"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read_aloud"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read_highlights_aloud_support"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read_highlights_aloud_support_languages_version"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read_highlights_aloud_support_languages"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read_highlights_aloud_version"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read_highlights_aloud"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read_highlights_aloud_support_site"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "read_highlights_aloud_list_size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "read_highlights_aloud_ai_brief_support"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFieldTypeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig;->fieldTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ArtificialIntelligence"

    const-string v1, "onFeatureConfigUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "summarize_controller"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$1;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$1;-><init>()V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    const-string v0, "summary_support_languages"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$2;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$2;-><init>()V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    const-string v0, "summary_domain_block_list"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$3;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$3;-><init>()V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    const-string v0, "summary_policy"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$4;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$4;-><init>()V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    const-string v0, "help_me_write"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$5;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$5;-><init>()V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    const-string v0, "read_aloud"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$6;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$6;-><init>()V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    const-string v0, "read_highlights_aloud_support_languages"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$7;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$7;-><init>()V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    const-string v0, "read_highlights_aloud"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$8;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$8;-><init>()V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    const-string v0, "read_highlights_aloud_support_site"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->createFetch(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->setUseETag(Z)Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$9;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ArtificialIntelligenceFeatureConfig$onFeatureConfigUpdated$9;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;->fetch(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;)V

    return-void
.end method

.method public onUpdateFailed(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ArtificialIntelligence"

    const-string p1, "onFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
