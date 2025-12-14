.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0014B\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;",
        "Landroid/widget/ListView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;",
        "onTouchEventListener",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;",
        "getOnTouchEventListener",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;",
        "setOnTouchEventListener",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;)V",
        "OnTouchEventListener",
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
.field private onTouchEventListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getOnTouchEventListener()Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;->onTouchEventListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;->onTouchEventListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setOnTouchEventListener(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;->onTouchEventListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;

    return-void
.end method
