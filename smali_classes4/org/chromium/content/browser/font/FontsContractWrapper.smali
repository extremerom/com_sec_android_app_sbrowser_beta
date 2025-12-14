.class public Lorg/chromium/content/browser/font/FontsContractWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Lc1/c;)Lc1/h;
    .locals 1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p0

    new-instance p3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lc1/b;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/CancellationSignal;)Lc1/h;

    move-result-object p0

    return-object p0
.end method
