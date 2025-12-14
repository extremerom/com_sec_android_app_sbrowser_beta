.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider;
.super Lr9/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0003J-\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0015\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider;",
        "Lr9/a;",
        "<init>",
        "()V",
        "Lcom/samsung/android/settings/external/DynamicMenuData;",
        "getMenuData",
        "()Lcom/samsung/android/settings/external/DynamicMenuData;",
        "getIntelligentFeaturesMenuData",
        "Ldb/r;",
        "updateData",
        "onCreateData",
        "",
        "method",
        "arg",
        "Landroid/os/Bundle;",
        "extras",
        "call",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;",
        "p0",
        "",
        "p1",
        "onCheckedChanged",
        "(Ljava/lang/String;Z)Z",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr9/a;-><init>()V

    return-void
.end method

.method private final getIntelligentFeaturesMenuData()Lcom/samsung/android/settings/external/DynamicMenuData;
    .locals 2

    const-string p0, "key_read_aloud"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/settings/external/DynamicMenuData;->a:Ljava/lang/String;

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/samsung/android/settings/external/DynamicMenuData;->b:Ljava/lang/String;

    const v1, 0x7f140083

    iput v1, v0, Lcom/samsung/android/settings/external/DynamicMenuData;->c:I

    iput-object p0, v0, Lcom/samsung/android/settings/external/DynamicMenuData;->d:Ljava/lang/String;

    const p0, 0x7f140084

    iput p0, v0, Lcom/samsung/android/settings/external/DynamicMenuData;->e:I

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/samsung/android/settings/external/DynamicMenuData;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/external/DynamicMenuData;->g:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/external/DynamicMenuData;->h:Z

    iput-boolean p0, v0, Lcom/samsung/android/settings/external/DynamicMenuData;->i:Z

    return-object v0

    :cond_0
    new-instance p0, LI5/b;

    const-string v0, "Key cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getMenuData()Lcom/samsung/android/settings/external/DynamicMenuData;
    .locals 3

    sget p0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v0, 0x11170

    if-lt p0, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->getConfigAiVersion()I

    move-result p0

    const/16 v0, 0x4f1b

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f1402aa

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f1402a9

    :goto_1
    const-string v0, "key_internet"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/settings/external/DynamicMenuData;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/samsung/android/settings/external/DynamicMenuData;->b:Ljava/lang/String;

    const v2, 0x7f1402a0

    iput v2, v1, Lcom/samsung/android/settings/external/DynamicMenuData;->c:I

    iput-object v0, v1, Lcom/samsung/android/settings/external/DynamicMenuData;->d:Ljava/lang/String;

    iput p0, v1, Lcom/samsung/android/settings/external/DynamicMenuData;->e:I

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/samsung/android/settings/external/DynamicMenuData;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/samsung/android/settings/external/DynamicMenuData;->g:Z

    iput-boolean v0, v1, Lcom/samsung/android/settings/external/DynamicMenuData;->h:Z

    iput-boolean p0, v1, Lcom/samsung/android/settings/external/DynamicMenuData;->i:Z

    return-object v1

    :cond_2
    new-instance p0, LI5/b;

    const-string v0, "Key cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateData()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider;->getMenuData()Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr9/a;->addMenuData(Lcom/samsung/android/settings/external/DynamicMenuData;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "get_menu_list"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AiDescriptionProvider"

    const-string v1, "External provider called - update data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider;->updateData()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lr9/a;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public onCheckedChanged(Ljava/lang/String;Z)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public onCreateData()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider;->getMenuData()Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr9/a;->addMenuData(Lcom/samsung/android/settings/external/DynamicMenuData;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/provider/AiDescriptionProvider;->getIntelligentFeaturesMenuData()Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr9/a;->addMenuData(Lcom/samsung/android/settings/external/DynamicMenuData;)V

    return-void
.end method
