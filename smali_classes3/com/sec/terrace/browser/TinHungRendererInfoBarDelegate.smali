.class public Lcom/sec/terrace/browser/TinHungRendererInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# direct methods
.method private constructor <init>(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    return-void
.end method

.method public static create(J)Lcom/sec/terrace/browser/TinHungRendererInfoBarDelegate;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/TinHungRendererInfoBarDelegate;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/TinHungRendererInfoBarDelegate;-><init>(J)V

    return-object v0
.end method
