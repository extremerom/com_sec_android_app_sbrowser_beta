.class public Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper$Delegate;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;


# instance fields
.field private mDelegate:Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper$Delegate;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;
    .locals 1

    sget-object v0, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;->sInstance:Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;

    invoke-direct {v0}, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;-><init>()V

    sput-object v0, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;->sInstance:Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;

    :cond_0
    sget-object v0, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;->sInstance:Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;

    return-object v0
.end method


# virtual methods
.method public createFullScreenKeyboard(IIIILjava/lang/String;I)Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isWearOs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;->mDelegate:Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper$Delegate;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p1, p2, p3, p4, v1}, Lorg/chromium/content/browser/input/ImeUtils;->getImeAction(IIIIZ)I

    move-result p2

    if-nez p5, :cond_2

    const-string p5, ""

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;->mDelegate:Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper$Delegate;

    invoke-interface {p0, p5, p1, p2, p6}, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper$Delegate;->createFullScreenKeyboard(Ljava/lang/CharSequence;III)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method
