.class public Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutItem"
.end annotation


# instance fields
.field public icon:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public iconHash:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public launchUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public shortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;)V
    .locals 0
    .param p6    # Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->shortName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->launchUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->iconUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->iconHash:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->icon:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    return-void
.end method
