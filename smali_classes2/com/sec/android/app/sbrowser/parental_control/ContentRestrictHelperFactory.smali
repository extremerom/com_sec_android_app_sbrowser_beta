.class public final Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J<\u0010\r\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042!\u0010\u000c\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0006H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;",
        "",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;",
        "existingHelper",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "toBeRemoved",
        "Ldb/r;",
        "updateRemoveParentalControlHistory",
        "getOrCreate",
        "(Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;Lsb/k;)Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;",
        "getRestrictHelperClass",
        "()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;",
        "newHelper",
        "isRestrictHelperUpdatable",
        "(Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;)Z",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getOrCreate(Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;Lsb/k;)Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;
    .locals 3
    .param p0    # Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;",
            "Lsb/k;",
            ")",
            "Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "updateRemoveParentalControlHistory"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;->getRestrictHelperClass()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;->isRestrictHelperUpdatable(Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RestrictHelper is updated to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContentRestrictFactory"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlHelper;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;-><init>()V

    :cond_1
    return-object p0
.end method

.method private final getRestrictHelperClass()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlHelper;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isWebContentRestrictEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/WebContentContentRestrictHelper;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/NoContentRestrictHelper;-><init>()V

    :goto_0
    return-object p0
.end method

.method private final isRestrictHelperUpdatable(Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
