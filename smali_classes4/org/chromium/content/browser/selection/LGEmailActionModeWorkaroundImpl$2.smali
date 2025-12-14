.class Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->allowActionModeDestroyOnNonUiThread(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$contentContainer:Landroid/view/ViewGroup;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;->val$contentContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    new-instance p1, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2$1;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2$1;-><init>(Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;)V

    const/4 p0, 0x7

    invoke-static {p0, p1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method
