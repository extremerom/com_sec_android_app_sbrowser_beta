.class public Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final apkPackageName:Ljava/lang/String;

.field public final backgroundColor:J

.field public final displayMode:I

.field public icon:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final isIconAdaptive:Z

.field public final isIconGenerated:Z

.field public final isLaunchedFromExternal:Z

.field public final name:Ljava/lang/String;

.field public final orientation:I

.field public final scopeUrl:Ljava/lang/String;

.field public final shortName:Ljava/lang/String;

.field public final shouldForceNavigation:Z

.field public final source:I

.field public final themeColor:J

.field public final url:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final webappUrlIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;Ljava/lang/String;Ljava/lang/String;IIIJJLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->id:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->url:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->scopeUrl:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->icon:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->name:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->shortName:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->displayMode:I

    move v1, p8

    iput v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->orientation:I

    move v1, p9

    iput v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->source:I

    move-wide v1, p10

    iput-wide v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->themeColor:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->backgroundColor:J

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->apkPackageName:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->webappUrlIndex:Ljava/lang/String;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->isLaunchedFromExternal:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->isIconGenerated:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->isIconAdaptive:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->shouldForceNavigation:Z

    return-void
.end method
