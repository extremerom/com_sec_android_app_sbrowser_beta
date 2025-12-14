.class Lcom/sec/terrace/browser/printing/TinPrinterJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/printing/TinPrinter$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/printing/TinPrinter$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/printing/TinPrinterJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/printing/TinPrinterJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public print(Lorg/chromium/content_public/browser/WebContents;II)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->My$K6pLX(Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method
