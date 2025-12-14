.class public final enum Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B+\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR)\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;",
        "",
        "",
        "string",
        "Lkotlin/Function2;",
        "",
        "",
        "hasError",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Lsb/n;)V",
        "Ljava/lang/String;",
        "getString",
        "()Ljava/lang/String;",
        "Lsb/n;",
        "getHasError",
        "()Lsb/n;",
        "EMPTY",
        "MAX_LENGTH",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

.field public static final enum EMPTY:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

.field public static final enum MAX_LENGTH:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;


# instance fields
.field private final hasError:Lsb/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/n;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final string:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->EMPTY:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->MAX_LENGTH:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/a;-><init>(I)V

    const/4 v2, 0x0

    const-string v3, "empty"

    const-string v4, "EMPTY"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Lsb/n;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->EMPTY:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/a;-><init>(I)V

    const/4 v2, 0x1

    const-string v3, "maxLength"

    const-string v4, "MAX_LENGTH"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Lsb/n;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->MAX_LENGTH:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->$values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->$ENTRIES:Llb/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lsb/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsb/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->string:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->hasError:Lsb/n;

    return-void
.end method

.method private static final _init_$lambda$1(Ljava/lang/String;I)Z
    .locals 6

    const-string p1, "input"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-gt v2, p1, :cond_5

    if-nez v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, p1

    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ltb/k;->h(II)I

    move-result v4

    if-gtz v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-nez v3, :cond_3

    if-nez v4, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr p1, v0

    invoke-interface {p0, v2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    return v0
.end method

.method private static final _init_$lambda$2(Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic a(ILjava/lang/String;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->_init_$lambda$1(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(ILjava/lang/String;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->_init_$lambda$2(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;

    return-object v0
.end method


# virtual methods
.method public final getHasError()Lsb/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/n;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError$ErrorType;->hasError:Lsb/n;

    return-object p0
.end method
