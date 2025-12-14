.class public final Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;",
        "",
        "<init>",
        "()V",
        "isDebug",
        "",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDebug()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
