.class public Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;
    }
.end annotation


# instance fields
.field public final iconUrlToMurmur2HashMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final manifestStartUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final manifestUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final shareTarget:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shellApkVersion:I

.field public final shortcutItems:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;",
            ">;"
        }
    .end annotation
.end field

.field public final splashIcon:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final webApkPackageName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->webApkPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->splashIcon:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    iput p3, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->shellApkVersion:I

    iput-object p4, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->manifestUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->manifestStartUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->iconUrlToMurmur2HashMap:Ljava/util/Map;

    iput-object p7, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->shareTarget:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    iput-object p8, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->shortcutItems:Ljava/util/List;

    return-void
.end method

.method public static createEmpty()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;
    .locals 10

    new-instance v9, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    new-instance v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    invoke-direct {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    invoke-direct {v7}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;-><init>(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;Ljava/util/List;)V

    return-object v9
.end method
