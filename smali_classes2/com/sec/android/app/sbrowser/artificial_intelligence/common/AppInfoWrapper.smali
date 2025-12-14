.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\r\u001a\u0004\u0008\u0005\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;",
        "",
        "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
        "appInfo",
        "",
        "isTokenExpired",
        "<init>",
        "(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Z)V",
        "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
        "getAppInfo",
        "()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
        "setAppInfo",
        "(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V",
        "Z",
        "()Z",
        "setTokenExpired",
        "(Z)V",
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


# instance fields
.field private appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isTokenExpired:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Z)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/scs/ai/language/AppInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appInfo"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->isTokenExpired:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;ZILtb/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Z)V

    return-void
.end method


# virtual methods
.method public final getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    return-object p0
.end method

.method public final isTokenExpired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->isTokenExpired:Z

    return p0
.end method

.method public final setTokenExpired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->isTokenExpired:Z

    return-void
.end method
