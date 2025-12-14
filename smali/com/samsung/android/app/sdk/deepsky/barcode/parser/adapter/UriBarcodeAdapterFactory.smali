.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u0017\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\nJ\u0017\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\nJ\u0017\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\nJ\u0015\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "displayResult",
        "",
        "isEsimUri",
        "(Ljava/lang/String;)Z",
        "isFacebookUri",
        "isInstagramUri",
        "isPlayStoreUri",
        "isQuickShareUri",
        "isSamsungAccountUri",
        "isSamsungCmcUri",
        "isSamsungHealthUri",
        "isSamsungPassUri",
        "LY7/r;",
        "parsedResult",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;",
        "create",
        "(LY7/r;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;",
        "appContext",
        "Landroid/content/Context;",
        "Companion",
        "deepsky-sdk-barcode-1.0.11_release"
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final QUICK_SHARE_URLS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SAMSUNG_ACCOUNT_URLS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile instance:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final appContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory$Companion;

    const-string v0, "https://linksharing.samsungcloud.com"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->QUICK_SHARE_URLS:Ljava/util/ArrayList;

    const-string v0, "https://signins.samsungospdev.com/key/"

    const-string v1, "https://signine.samsungosp.com/key/"

    const-string v2, "https://signin.samsung.com/key/"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->SAMSUNG_ACCOUNT_URLS:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isSamsungAccountUri$lambda$2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->instance:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->instance:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;

    return-void
.end method

.method public static synthetic b(LH9/e;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isQuickShareUri$lambda$1(Lsb/k;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isQuickShareUri$lambda$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(LH9/e;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isSamsungAccountUri$lambda$3(Lsb/k;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isEsimUri(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    const-string v0, "LPA:"

    invoke-static {p1, v0, p0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isFacebookUri(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "((http(s)?)://)?(www[.])?(facebook.com)/.*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v0, "compile(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private final isInstagramUri(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "((http(s)?)://)?(www[.])?(facebook.com)/.*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v0, "compile(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private final isPlayStoreUri(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    const-string v0, "https://play.google.com/store/apps/details?id="

    invoke-static {p1, v0, p0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isQuickShareUri(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->QUICK_SHARE_URLS:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LH9/e;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, LH9/e;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lba/b;

    const/4 v1, 0x6

    invoke-direct {p1, v1, v0}, Lba/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static final isQuickShareUri$lambda$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static final isQuickShareUri$lambda$1(Lsb/k;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final isSamsungAccountUri(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->SAMSUNG_ACCOUNT_URLS:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LH9/e;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, LH9/e;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lba/b;

    const/4 v1, 0x7

    invoke-direct {p1, v1, v0}, Lba/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static final isSamsungAccountUri$lambda$2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static final isSamsungAccountUri$lambda$3(Lsb/k;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final isSamsungCmcUri(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    const-string v0, "cmc://setting?"

    invoke-static {p1, v0, p0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isSamsungHealthUri(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    const-string v0, "https://shealth.samsung.com/deepLink?sc_id="

    invoke-static {p1, v0, p0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isSamsungPassUri(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    const-string v0, "samsungpass://launch?action=main&verify="

    invoke-static {p1, v0, p0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final create(LY7/r;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;
    .locals 2
    .param p1    # LY7/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parsedResult"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LY7/r;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDisplayResult(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isEsimUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/EsimBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/EsimBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, LY7/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isFacebookUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/FacebookBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/FacebookBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, LY7/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isInstagramUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/InstagramBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/InstagramBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, LY7/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isPlayStoreUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PlayStoreBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PlayStoreBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_3
    invoke-virtual {p1}, LY7/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isQuickShareUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/QuickShareBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/QuickShareBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_4
    invoke-virtual {p1}, LY7/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isSamsungAccountUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungAccountBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungAccountBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_5
    invoke-virtual {p1}, LY7/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isSamsungCmcUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungCmcBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungCmcBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_6
    invoke-virtual {p1}, LY7/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isSamsungHealthUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungHealthBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungHealthBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_7
    invoke-virtual {p1}, LY7/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->isSamsungPassUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungPassBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungPassBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_8
    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UrlBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UrlBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0
.end method
