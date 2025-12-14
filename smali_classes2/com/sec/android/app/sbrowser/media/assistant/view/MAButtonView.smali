.class public final Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$Companion;,
        Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;,
        Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$Position;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0007\u0018\u0000 \u0080\u00012\u00020\u0001:\u0006\u0081\u0001\u0082\u0001\u0080\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J!\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0018\u0010\nJ\r\u0010\u0019\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\nJ\u0017\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001aH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0013\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\"\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008%\u0010\nJ\u000f\u0010&\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008&\u0010\nJ\u000f\u0010\'\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\'\u0010\nJ\u000f\u0010(\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008(\u0010\nJ\u0019\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0019\u0010.\u001a\u00020-2\u0008\u0010,\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00080\u0010\nJ\u000f\u00101\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00081\u0010\nJ\u000f\u00102\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00082\u0010\nJ\u000f\u00103\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00083\u0010\nJ\u000f\u00104\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00084\u0010\nJ\u000f\u00105\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00085\u0010\nJ\u0017\u00107\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u000206H\u0002\u00a2\u0006\u0004\u00087\u00108R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00109R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010:R\u0014\u0010<\u001a\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010=R\u0014\u0010@\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR$\u0010D\u001a\u0012\u0012\u0004\u0012\u00020)0Bj\u0008\u0012\u0004\u0012\u00020)`C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010G\u001a\u0004\u0018\u00010F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0018\u0010I\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010AR\u0014\u0010J\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0014\u0010M\u001a\u00020L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0018\u0010O\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010KR\u0018\u0010Q\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010RR\u0014\u0010T\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008T\u0010:R\u0014\u0010V\u001a\u00020U8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0014\u0010X\u001a\u00020L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008X\u0010NR\u0016\u0010Y\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0016\u0010[\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010ZR\u0016\u0010\\\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010ZR\u0016\u0010]\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010ZR\u0018\u0010^\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0018\u0010`\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0018\u0010b\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010_R\u001c\u0010c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008c\u0010d\u0012\u0004\u0008e\u0010\nR\u0014\u0010i\u001a\u00020f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010hR$\u0010o\u001a\u00020\u000b2\u0006\u0010j\u001a\u00020\u000b8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010nR\u0014\u0010s\u001a\u00020p8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010rR\u0014\u0010u\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010lR\u0014\u0010w\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010lR\u0014\u0010y\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010lR\u0014\u0010z\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010{R\u0014\u0010~\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010}R\u0014\u0010\u007f\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010}\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/app/Activity;",
        "mActivity",
        "Landroid/os/Handler;",
        "mHandler",
        "<init>",
        "(Landroid/app/Activity;Landroid/os/Handler;)V",
        "Ldb/r;",
        "updateButtonView",
        "()V",
        "",
        "id",
        "",
        "enable",
        "setEnabledById",
        "(IZ)Z",
        "dimmed",
        "setDimmedById",
        "Landroid/graphics/Rect;",
        "videoRect",
        "contentViewRect",
        "show",
        "(Landroid/graphics/Rect;Landroid/graphics/Rect;)V",
        "hide",
        "registerHoverListener",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "dispatchGenericMotionEvent",
        "(Landroid/view/MotionEvent;)Z",
        "",
        "getAvailableItems",
        "()[Ljava/lang/Integer;",
        "initializeChildItems",
        "initialize",
        "setChildItemsListener",
        "updateChildItemsVisibility",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;",
        "getItemById",
        "(I)Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;",
        "videoVisibleRect",
        "Landroid/graphics/PointF;",
        "retrievePosition",
        "(Landroid/graphics/Rect;)Landroid/graphics/PointF;",
        "hideVAView",
        "removeViewFromParent",
        "startDrag",
        "showRemoveButton",
        "moveToNewPosition",
        "hideRemoveButton",
        "Landroid/view/DragEvent;",
        "getVAViewRect",
        "(Landroid/view/DragEvent;)Landroid/graphics/Rect;",
        "Landroid/app/Activity;",
        "Landroid/os/Handler;",
        "Landroid/view/animation/Animation;",
        "mShowAnimation",
        "Landroid/view/animation/Animation;",
        "mHideAnimation",
        "Landroid/view/View;",
        "mButtonMainView",
        "Landroid/view/View;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "mVAItems",
        "Ljava/util/ArrayList;",
        "Landroid/widget/LinearLayout;",
        "mVAView",
        "Landroid/widget/LinearLayout;",
        "mVAPreview",
        "mMainLayout",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/ViewStub;",
        "mVAPreviewStub",
        "Landroid/view/ViewStub;",
        "mRemoveButtonLayout",
        "Landroid/widget/ImageView;",
        "mRemoveButton",
        "Landroid/widget/ImageView;",
        "mRemoveButtonBin",
        "mHideHandler",
        "Ljava/lang/Runnable;",
        "mHideRunnable",
        "Ljava/lang/Runnable;",
        "mRemoveButtonLayoutStub",
        "mIsMediaAssistantButtonMoving",
        "Z",
        "mIsOnShowButtonAnimation",
        "mIsOnRemoveButtonAnimating",
        "mInsideRemoveView",
        "mLastVideoRect",
        "Landroid/graphics/Rect;",
        "mPreviewPosition",
        "Landroid/graphics/PointF;",
        "mContentViewRect",
        "mPosition",
        "I",
        "getMPosition$annotations",
        "Landroid/content/SharedPreferences;",
        "getSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "position",
        "getPrefVideoAssistantPosition",
        "()I",
        "setPrefVideoAssistantPosition",
        "(I)V",
        "prefVideoAssistantPosition",
        "Landroid/view/View$OnLayoutChangeListener;",
        "getOnLayoutChangeListener",
        "()Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChangeListener",
        "getVAViewWidth",
        "vAViewWidth",
        "getVAViewHeight",
        "vAViewHeight",
        "getNavigationBarMargin",
        "navigationBarMargin",
        "isShownNavigationBar",
        "()Z",
        "getAllowedPosition",
        "()Landroid/graphics/Rect;",
        "allowedPosition",
        "vAViewRect",
        "Companion",
        "Position",
        "DragListener",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_ITEM:I

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final availableItems:[Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mButtonMainView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mContentViewRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mHideAnimation:Landroid/view/animation/Animation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mHideHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mHideRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mInsideRemoveView:Z

.field private mIsMediaAssistantButtonMoving:Z

.field private mIsOnRemoveButtonAnimating:Z

.field private mIsOnShowButtonAnimation:Z

.field private mLastVideoRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mMainLayout:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPosition:I

.field private mPreviewPosition:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRemoveButton:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRemoveButtonBin:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRemoveButtonLayout:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mRemoveButtonLayoutStub:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mShowAnimation:Landroid/view/animation/Animation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mVAItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mVAPreview:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mVAPreviewStub:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mVAView:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->Companion:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->$stable:I

    const-string v0, "[MM]MAButtonView"

    sput-object v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->availableItems:[Ljava/lang/Integer;

    array-length v0, v0

    sput v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->MAX_ITEM:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mActivity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mHandler"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHandler:Landroid/os/Handler;

    const p2, 0x7f0e04b4

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v0, "inflate(...)"

    invoke-static {p2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mButtonMainView:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAItems:Ljava/util/ArrayList;

    const v0, 0x7f0b06ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b06ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mMainLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0b06f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAPreviewStub:Landroid/view/ViewStub;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/assistant/view/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/media/assistant/view/a;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    const v0, 0x7f0b06f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayoutStub:Landroid/view/ViewStub;

    const/4 p2, 0x3

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPosition:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->initialize()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->initializeChildItems()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->updateButtonView()V

    const p2, 0x7f010030

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->loadAnimation(Landroid/app/Activity;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mShowAnimation:Landroid/view/animation/Animation;

    const p2, 0x7f01002f

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->loadAnimation(Landroid/app/Activity;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$1;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private static final _get_onLayoutChangeListener_$lambda$4(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;IIIIIIII)V
    .locals 10

    move-object v0, p0

    sget-object v1, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->TAG:Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "OnLayoutChange: old(%d,%d,%d,%d), new(%d,%d,%d,%d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Rect;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->hideVAView()V

    const-wide/16 v1, 0x1

    move-wide v3, v1

    :goto_0
    const-wide/16 v5, 0x6

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isVideoAssistantEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xc8

    mul-long/2addr v6, v3

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    add-long/2addr v3, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->_get_onLayoutChangeListener_$lambda$4(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static final synthetic access$getMActivity$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getMButtonMainView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mButtonMainView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMHandler$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMHideHandler$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMHideRunnable$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getMInsideRemoveView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mInsideRemoveView:Z

    return p0
.end method

.method public static final synthetic access$getMIsOnRemoveButtonAnimating$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mIsOnRemoveButtonAnimating:Z

    return p0
.end method

.method public static final synthetic access$getMLastVideoRect$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mLastVideoRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getMMainLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mMainLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic access$getMPreviewPosition$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPreviewPosition:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static final synthetic access$getMRemoveButton$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic access$getMRemoveButtonLayoutStub$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/ViewStub;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayoutStub:Landroid/view/ViewStub;

    return-object p0
.end method

.method public static final synthetic access$getMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAPreview:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMVAPreviewStub$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/ViewStub;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAPreviewStub:Landroid/view/ViewStub;

    return-object p0
.end method

.method public static final synthetic access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getVAViewHeight(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getVAViewHeight()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getVAViewRect(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/DragEvent;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getVAViewRect(Landroid/view/DragEvent;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVAViewWidth(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getVAViewWidth()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$hideRemoveButton(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->hideRemoveButton()V

    return-void
.end method

.method public static final synthetic access$moveToNewPosition(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->moveToNewPosition()V

    return-void
.end method

.method public static final synthetic access$removeViewFromParent(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->removeViewFromParent()V

    return-void
.end method

.method public static final synthetic access$retrievePosition(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->retrievePosition(Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setMInsideRemoveView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mInsideRemoveView:Z

    return-void
.end method

.method public static final synthetic access$setMIsMediaAssistantButtonMoving$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mIsMediaAssistantButtonMoving:Z

    return-void
.end method

.method public static final synthetic access$setMIsOnRemoveButtonAnimating$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mIsOnRemoveButtonAnimating:Z

    return-void
.end method

.method public static final synthetic access$setMIsOnShowButtonAnimation$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mIsOnShowButtonAnimation:Z

    return-void
.end method

.method public static final synthetic access$setMPosition$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPosition:I

    return-void
.end method

.method public static final synthetic access$setMPreviewPosition$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPreviewPosition:Landroid/graphics/PointF;

    return-void
.end method

.method public static final synthetic access$setMRemoveButton$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButton:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic access$setMRemoveButtonBin$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonBin:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic access$setMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static final synthetic access$setMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAPreview:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$showRemoveButton(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->showRemoveButton()V

    return-void
.end method

.method public static final synthetic access$startDrag(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->startDrag()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->initialize$lambda$1(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->initialize$lambda$2(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->initialize$lambda$3(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->registerHoverListener$lambda$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final getAllowedPosition()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0715d5

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0708fc

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isFocusLayoutType(Landroid/app/Activity;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v0

    add-int/2addr v2, v0

    move v0, v4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isTabBar1LineLayout(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0714c4

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0701e3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    sget-object v1, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f071646

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mButtonMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getVAViewHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mButtonMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getVAViewWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getNavigationBarMargin()I

    move-result p0

    sub-int/2addr v2, p0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private final getItemById(I)Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "iterator(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->id()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic getMPosition$annotations()V
    .locals 0

    return-void
.end method

.method private final getNavigationBarMargin()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getNavBarModeForActivity(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->isShownNavigationBar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isNavigationBarHideEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->deviceHasBackKey()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getNavBarSize(Landroid/app/Activity;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final getOnLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/context_menu/a;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private final getPrefVideoAssistantPosition()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "video_assistant_position"

    const/4 v1, 0x3

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const-string v0, "video_assistant_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getVAViewHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f070901

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f070900

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result p0

    add-int/2addr v0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method private final getVAViewRect()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    add-int/2addr p0, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private final getVAViewRect(Landroid/view/DragEvent;)Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f070900

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v0, 0x4

    sub-int/2addr v1, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, v0, v1

    sub-int v4, p1, p0

    add-int/2addr v0, v1

    add-int/2addr p1, p0

    invoke-direct {v2, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private final getVAViewWidth()I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f070900

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f070901

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result p0

    add-int/2addr p0, v0

    add-int/2addr p0, v0

    mul-int/2addr p0, v1

    add-int/2addr p0, v0

    add-int/2addr p0, v0

    return p0
.end method

.method private final hideRemoveButton()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mIsOnRemoveButtonAnimating:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$hideRemoveButton$1;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private final hideVAView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final initialize()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/assistant/view/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/assistant/view/c;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/assistant/view/c;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mMainLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/assistant/view/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/assistant/view/c;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getOnLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mMainLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private static final initialize$lambda$1(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->startDrag()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final initialize$lambda$2(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->updateButtonView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x0

    return p0
.end method

.method private static final initialize$lambda$3(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mIsOnShowButtonAnimation:Z

    return p0
.end method

.method private final initializeChildItems()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->availableItems:[Ljava/lang/Integer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    sget v6, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->MAX_ITEM:I

    if-ge v0, v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/MAItemFactory;->create(ILandroid/app/Activity;)Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->getView()Landroid/view/View;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v4, v6}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->setChildItemsListener()V

    return-void
.end method

.method private final isShownNavigationBar()Z
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getNavBarModeForActivity(Landroid/app/Activity;)I

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    const/4 v4, 0x2

    if-eq p0, v4, :cond_1

    const/4 v4, 0x3

    if-eq p0, v4, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-eq p0, v0, :cond_3

    goto :goto_0

    :cond_1
    iget p0, v0, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-eq p0, v0, :cond_3

    goto :goto_0

    :cond_2
    iget p0, v0, Landroid/graphics/Rect;->left:I

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method private static final mHideRunnable$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->hide()V

    return-void
.end method

.method private final moveToNewPosition()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3f947ae1    # 1.16f

    const v3, 0x3d8f5c29    # 0.07f

    const v4, 0x3f5eb852    # 0.87f

    invoke-static {v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->create(FFFF)Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPosition:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->setPrefVideoAssistantPosition(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPreviewPosition:Landroid/graphics/PointF;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPreviewPosition:Landroid/graphics/PointF;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private static final registerHoverListener$lambda$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final removeViewFromParent()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewManager"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final retrievePosition(Landroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getAllowedPosition()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPosition:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getVAViewWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    float-to-double v3, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    :goto_1
    float-to-double v3, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-float v1, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0708fe

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPosition:I

    if-eq v4, v2, :cond_3

    const/4 v2, 0x3

    if-ne v4, v2, :cond_2

    goto :goto_3

    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getVAViewHeight()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, p1

    cmpg-float v0, p0, v0

    if-gez v0, :cond_4

    :goto_2
    int-to-float p0, p1

    goto :goto_4

    :cond_3
    :goto_3
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v3

    int-to-float p0, p0

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, p1

    cmpl-float v0, p0, v0

    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private final setChildItemsListener()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$1;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->setOnClickListener(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$2;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->setOnLongClickListener(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setPrefVideoAssistantPosition(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "video_assistant_position"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final showRemoveButton()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f070911

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mContentViewRect:Landroid/graphics/Rect;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mRemoveButtonLayout:Landroid/widget/FrameLayout;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private final startDrag()V
    .locals 9

    new-instance v0, Landroid/content/ClipData$Item;

    const-string v1, "MediaAssistantLabel"

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "text/plain"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/content/ClipData;

    invoke-direct {v5, v1, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    new-instance v6, Landroid/view/View$DragShadowBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    sget-object v3, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->startDrag(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method

.method private final updateChildItemsVisibility()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "iterator(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->updateImageButtonVisibility()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getVAViewRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final getAvailableItems()[Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->availableItems:[Ljava/lang/Integer;

    return-object p0
.end method

.method public final hide()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->TAG:Ljava/lang/String;

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mIsMediaAssistantButtonMoving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->hide(Z)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->hideVAView()V

    return-void
.end method

.method public final registerHoverListener()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public final setDimmedById(IZ)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getItemById(I)Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->isDimmed()Z

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->setDimmed(Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setEnabledById(IZ)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getItemById(I)Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->isEnabled()Z

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final show(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p0, p1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->updateChildItemsVisibility()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mContentViewRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mLastVideoRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getPrefVideoAssistantPosition()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mPosition:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->retrievePosition(Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    const-wide/16 v2, 0xbb8

    const/4 v0, 0x0

    if-nez p2, :cond_3

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    cmpg-float p2, p2, v4

    if-nez p2, :cond_2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    cmpg-float p1, p1, p2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2, v4}, Landroid/view/View;->setX(F)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->updateButtonView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "iterator(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string v4, "next(...)"

    invoke-static {p2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->show(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateButtonView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mVAView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1406fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method
