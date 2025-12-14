.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$show$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$show$1",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;",
        "Landroid/view/MotionEvent;",
        "event",
        "Ldb/r;",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)V",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$show$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$show$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->access$onTouchMotionEvent(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;Landroid/view/MotionEvent;)V

    return-void
.end method
