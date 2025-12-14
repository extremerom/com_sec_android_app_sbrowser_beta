.class public final Lcom/sec/android/app/sbrowser/media/assistant/MAManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Companion;,
        Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;,
        Lcom/sec/android/app/sbrowser/media/assistant/MAManager$MessageHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 J2\u00020\u0001:\u0003KLJB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0011\u0010\u000cJ\r\u0010\u0012\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u000cJ\r\u0010\u0013\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\u000f\u0010\u0014\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000cJ\u000f\u0010\u0015\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000cJ\u000f\u0010\u0016\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000cJ\u000f\u0010\u0017\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u000cJ\u0017\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u000cJ\u000f\u0010\u001d\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u000cJ\u000f\u0010\u001e\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u000cJ\u000f\u0010\u001f\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u000cJ\u0017\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008!\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\"\u001a\u0004\u0008#\u0010$R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010%\u001a\u0004\u0008&\u0010\'R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010(R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010-\u001a\u0004\u0018\u00010,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u0010/\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u0010+R\u0016\u00100\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010\"R\u0016\u00101\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010%R\u0018\u00102\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0018\u00105\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u00108\u001a\u0002078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010;\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R$\u0010>\u001a\u0002072\u0006\u0010=\u001a\u0002078\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008>\u00109\u001a\u0004\u0008>\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010D\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0013\u0010H\u001a\u0004\u0018\u00010\r8F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010GR\u0014\u0010I\u001a\u0002078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010?\u00a8\u0006M"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/assistant/MAManager;",
        "",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/sec/terrace/Terrace;",
        "terrace",
        "Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;",
        "mDelegate",
        "<init>",
        "(Landroid/app/Activity;Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;)V",
        "Ldb/r;",
        "hide",
        "()V",
        "Lcom/sec/android/app/sbrowser/media/common/MediaInfo;",
        "info",
        "updateMediaInfo",
        "(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V",
        "destroy",
        "show",
        "resetGestureEnabled",
        "addObservers",
        "removeObservers",
        "showInternal",
        "removeAllMessages",
        "",
        "id",
        "start",
        "(I)V",
        "startPopup",
        "adjustScreenOrientation",
        "rotateScreen",
        "startSmartView",
        "resId",
        "showPopupPlayerSnackBar",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "Lcom/sec/terrace/Terrace;",
        "getTerrace",
        "()Lcom/sec/terrace/Terrace;",
        "Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;",
        "Landroid/os/Handler;",
        "mMessageHandler",
        "Landroid/os/Handler;",
        "Lcom/sec/android/app/sbrowser/media/assistant/MAController;",
        "mController",
        "Lcom/sec/android/app/sbrowser/media/assistant/MAController;",
        "mHandler",
        "mActivity",
        "mTerrace",
        "mMediaInfo",
        "Lcom/sec/android/app/sbrowser/media/common/MediaInfo;",
        "LH6/o;",
        "mPopupPlayerSnackBar",
        "LH6/o;",
        "",
        "mIsAddedObserver",
        "Z",
        "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;",
        "mEasyModeObserver",
        "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;",
        "value",
        "isGestureOnlyEnabled",
        "()Z",
        "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;",
        "mEmergencyModeObserver",
        "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;",
        "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;",
        "mUltraPowerSavingModeObserver",
        "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;",
        "getMediaInfo",
        "()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;",
        "mediaInfo",
        "isInvalidMediaInfo",
        "Companion",
        "Delegate",
        "MessageHandler",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isGestureOnlyEnabled:Z

.field private mActivity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mController:Lcom/sec/android/app/sbrowser/media/assistant/MAController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mIsAddedObserver:Z

.field private mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mMessageHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPopupPlayerSnackBar:LH6/o;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mTerrace:Lcom/sec/terrace/Terrace;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final terrace:Lcom/sec/terrace/Terrace;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->Companion:Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->$stable:I

    const-string v0, "[MM]MAManager"

    sput-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/Terrace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terrace"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDelegate"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->terrace:Lcom/sec/terrace/Terrace;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;

    new-instance p3, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$MessageHandler;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$MessageHandler;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMessageHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mTerrace:Lcom/sec/terrace/Terrace;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/customize_toolbar/a;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/customize_toolbar/b;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/b;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/customize_toolbar/c;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/c;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    new-instance p1, Lcom/sec/android/app/sbrowser/media/assistant/MAController;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$1;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)V

    invoke-direct {p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mController:Lcom/sec/android/app/sbrowser/media/assistant/MAController;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mUltraPowerSavingModeObserver$lambda$2(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V

    return-void
.end method

.method public static final synthetic access$getMActivity$p(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getMMediaInfo$p(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    return-object p0
.end method

.method public static final synthetic access$getMTerrace$p(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public static final synthetic access$start(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->start(I)V

    return-void
.end method

.method private final addObservers()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mIsAddedObserver:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mIsAddedObserver:Z

    return-void
.end method

.method private final adjustScreenOrientation()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v1, "adjustScreenOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isAutoRotationSupported(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInteractionControlEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoHeight()I

    move-result v0

    if-ne v1, v0, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ge v1, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    if-eq v2, v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->rotateScreen()V

    :cond_5
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mEmergencyModeObserver$lambda$1(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mEasyModeObserver$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->show$lambda$3(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)V

    return-void
.end method

.method private final isInvalidMediaInfo()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v0, "MediaInfo is recycled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private static final mEasyModeObserver$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V
    .locals 1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v0, "Easy Mode changed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->hide()V

    return-void
.end method

.method private static final mEmergencyModeObserver$lambda$1(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V
    .locals 1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v0, "Emergency Mode changed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->hide()V

    return-void
.end method

.method private static final mUltraPowerSavingModeObserver$lambda$2(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;Z)V
    .locals 1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v0, "Ultra power saving Mode changed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->hide()V

    return-void
.end method

.method private final removeAllMessages()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mController:Lcom/sec/android/app/sbrowser/media/assistant/MAController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->removeAllMessages()V

    :cond_0
    return-void
.end method

.method private final removeObservers()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mUltraPowerSavingModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mIsAddedObserver:Z

    return-void
.end method

.method private final rotateScreen()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v1, "rotateScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private static final show$lambda$3(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->showInternal()V

    return-void
.end method

.method private final showInternal()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isMuted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isGestureOnlyEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mController:Lcom/sec/android/app/sbrowser/media/assistant/MAController;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->showVAView()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final showPopupPlayerSnackBar(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mPopupPlayerSnackBar:LH6/o;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, v0, LH6/m;->i:LH6/l;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mPopupPlayerSnackBar:LH6/o;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LH6/m;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v1, v0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mPopupPlayerSnackBar:LH6/o;

    invoke-virtual {p1}, LH6/o;->l()V

    return-void
.end method

.method private final start(I)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isInvalidMediaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->terrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->destroySelectActionMode()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v1, "start : "

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isGestureOnlyEnabled:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    const v0, 0x1020002

    const v1, 0x7f1406fd

    const/4 v2, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;->startGesture()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->hide()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    goto :goto_0

    :cond_3
    const-string p1, "2088"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->main(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->startSmartView()V

    goto :goto_0

    :cond_4
    const-string p1, "2151"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->main(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->rotateScreen()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->startPopup()V

    goto :goto_0

    :cond_6
    const-string p1, "2091"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->main(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->requestFullscreen()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->adjustScreenOrientation()V

    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mController:Lcom/sec/android/app/sbrowser/media/assistant/MAController;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->hideVAView()V

    return-void
.end method

.method private final startPopup()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isMSE()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isPopupModeSupported(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAppPinned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v1, "Not supported popup play when app is pinned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1406ff

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->showPopupPlayerSnackBar(I)V

    return-void

    :cond_2
    const-string v1, "2090"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->main(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string v1, "dimension"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v2, "startPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isValid(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p0, "Video info is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isPopupModeReady(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->terrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->terrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->exitFullscreen()V

    :cond_8
    sget-object v1, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;-><init>(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;->isPlaying()Z

    move-result p0

    invoke-virtual {v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->startPopup(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;Z)V

    return-void

    :cond_9
    :goto_1
    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v1, "Not supported popup play for MSE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f140700

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->showPopupPlayerSnackBar(I)V

    return-void
.end method

.method private final startSmartView()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v1, "startSmartView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->getInstance()Lcom/sec/android/app/sbrowser/media/common/WfdUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->startMirroring(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mController:Lcom/sec/android/app/sbrowser/media/assistant/MAController;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->isVAShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mController:Lcom/sec/android/app/sbrowser/media/assistant/MAController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->hideVAView()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->removeObservers()V

    return-void
.end method

.method public final getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isInvalidMediaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    return-object p0
.end method

.method public final hide()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->removeAllMessages()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mController:Lcom/sec/android/app/sbrowser/media/assistant/MAController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->hideVAView()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->removeObservers()V

    return-void
.end method

.method public final isGestureOnlyEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isGestureOnlyEnabled:Z

    return p0
.end method

.method public final resetGestureEnabled()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isGestureOnlyEnabled:Z

    return-void
.end method

.method public final show()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isInvalidMediaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->addObservers()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->removeAllMessages()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->TAG:Ljava/lang/String;

    const-string v1, "updateMediaInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->hide()V

    :cond_0
    return-void
.end method
