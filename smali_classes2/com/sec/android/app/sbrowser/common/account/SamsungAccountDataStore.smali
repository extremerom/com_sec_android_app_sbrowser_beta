.class public final Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000f\u0010\u000eR\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R!\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R!\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0018R!\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001d8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0016\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "isSignIn",
        "Ldb/r;",
        "setSignInStatus",
        "(ZLib/c;)Ljava/lang/Object;",
        "isMinor",
        "setMinorInfo",
        "setSamsungAccountSignInStatus",
        "(Z)V",
        "setSamsungAccountMinorInfo",
        "Lm1/h;",
        "Lp1/b;",
        "dataStore",
        "Lm1/h;",
        "LQc/h;",
        "samsungAccountSignInStatus$delegate",
        "Ldb/f;",
        "getSamsungAccountSignInStatus",
        "()LQc/h;",
        "samsungAccountSignInStatus",
        "samsungAccountMinorInfo$delegate",
        "getSamsungAccountMinorInfo",
        "samsungAccountMinorInfo",
        "Landroidx/lifecycle/S;",
        "samsungAccountSignInStatusLiveData$delegate",
        "getSamsungAccountSignInStatusLiveData",
        "()Landroidx/lifecycle/S;",
        "samsungAccountSignInStatusLiveData",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_SAMSUNG_ACCOUNT_MINOR_INFO:Lp1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_SAMSUNG_ACCOUNT_SIGN_IN_STATUS:Lp1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final dataStore:Lm1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm1/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final samsungAccountMinorInfo$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final samsungAccountSignInStatus$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final samsungAccountSignInStatusLiveData$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->Companion:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->$stable:I

    new-instance v0, Lp1/f;

    const-string v1, "samsung_account_sign_in_status"

    invoke-direct {v0, v1}, Lp1/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->PREF_SAMSUNG_ACCOUNT_SIGN_IN_STATUS:Lp1/f;

    new-instance v0, Lp1/f;

    const-string v1, "samsung_account_minor_info"

    invoke-direct {v0, v1}, Lp1/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->PREF_SAMSUNG_ACCOUNT_MINOR_INFO:Lp1/f;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStoreKt;->getSamsungAccountPreferencesDataStore(Landroid/content/Context;)Lm1/h;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->dataStore:Lm1/h;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/account/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/account/a;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->samsungAccountSignInStatus$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/account/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/account/a;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->samsungAccountMinorInfo$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/account/a;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/account/a;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->samsungAccountSignInStatusLiveData$delegate:Ldb/f;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)Landroidx/lifecycle/S;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->samsungAccountSignInStatusLiveData_delegate$lambda$4(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPREF_SAMSUNG_ACCOUNT_MINOR_INFO$cp()Lp1/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->PREF_SAMSUNG_ACCOUNT_MINOR_INFO:Lp1/f;

    return-object v0
.end method

.method public static final synthetic access$getPREF_SAMSUNG_ACCOUNT_SIGN_IN_STATUS$cp()Lp1/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->PREF_SAMSUNG_ACCOUNT_SIGN_IN_STATUS:Lp1/f;

    return-object v0
.end method

.method public static final synthetic access$setMinorInfo(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;ZLib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->setMinorInfo(ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setSignInStatus(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;ZLib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->setSignInStatus(ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->samsungAccountSignInStatus_delegate$lambda$1(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->samsungAccountMinorInfo_delegate$lambda$3(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->Companion:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;->getInstance()Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object v0

    return-object v0
.end method

.method private static final samsungAccountMinorInfo_delegate$lambda$3(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)LQc/h;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->dataStore:Lm1/h;

    invoke-interface {p0}, Lm1/h;->getData()LQc/h;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$samsungAccountMinorInfo$2$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$samsungAccountMinorInfo$2$1;-><init>(Lib/c;)V

    new-instance v1, LQc/y;

    invoke-direct {v1, p0, v0}, LQc/y;-><init>(LQc/h;Lsb/o;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$samsungAccountMinorInfo_delegate$lambda$3$$inlined$map$1;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$samsungAccountMinorInfo_delegate$lambda$3$$inlined$map$1;-><init>(LQc/h;)V

    return-object p0
.end method

.method private static final samsungAccountSignInStatusLiveData_delegate$lambda$4(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)Landroidx/lifecycle/S;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->getSamsungAccountSignInStatus()LQc/h;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object p0

    return-object p0
.end method

.method private static final samsungAccountSignInStatus_delegate$lambda$1(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)LQc/h;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->dataStore:Lm1/h;

    invoke-interface {p0}, Lm1/h;->getData()LQc/h;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$samsungAccountSignInStatus$2$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$samsungAccountSignInStatus$2$1;-><init>(Lib/c;)V

    new-instance v1, LQc/y;

    invoke-direct {v1, p0, v0}, LQc/y;-><init>(LQc/h;Lsb/o;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$samsungAccountSignInStatus_delegate$lambda$1$$inlined$map$1;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$samsungAccountSignInStatus_delegate$lambda$1$$inlined$map$1;-><init>(LQc/h;)V

    return-object p0
.end method

.method private final setMinorInfo(ZLib/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;->Z$0:Z

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->dataStore:Lm1/h;

    new-instance p2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$2;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$2;-><init>(ZLib/c;)V

    iput-boolean p1, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;->Z$0:Z

    iput v3, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setMinorInfo$1;->label:I

    new-instance v3, Lp1/h;

    invoke-direct {v3, p2, v2}, Lp1/h;-><init>(Lsb/n;Lib/c;)V

    invoke-interface {p0, v3, v0}, Lm1/h;->a(Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "setMinorInfo: "

    const-string p2, "SamsungAccountDataStore"

    invoke-static {p0, p2, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final setSignInStatus(ZLib/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;->Z$0:Z

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->dataStore:Lm1/h;

    new-instance p2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;-><init>(ZLib/c;)V

    iput-boolean p1, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;->Z$0:Z

    iput v3, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$1;->label:I

    new-instance v3, Lp1/h;

    invoke-direct {v3, p2, v2}, Lp1/h;-><init>(Lsb/n;Lib/c;)V

    invoke-interface {p0, v3, v0}, Lm1/h;->a(Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "setSignInStatus: "

    const-string p2, "SamsungAccountDataStore"

    invoke-static {p0, p2, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public final getSamsungAccountMinorInfo()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->samsungAccountMinorInfo$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method public final getSamsungAccountSignInStatus()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->samsungAccountSignInStatus$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method public final getSamsungAccountSignInStatusLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->samsungAccountSignInStatusLiveData$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final setSamsungAccountMinorInfo(Z)V
    .locals 3

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object v0

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSamsungAccountMinorInfo$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSamsungAccountMinorInfo$1;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;ZLib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final setSamsungAccountSignInStatus(Z)V
    .locals 3

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object v0

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSamsungAccountSignInStatus$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSamsungAccountSignInStatus$1;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;ZLib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
