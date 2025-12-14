.class Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2$1;->this$0:Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2$1;->this$0:Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;

    iget-object v0, v0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p0, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2$1;->this$0:Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;

    iget-object p0, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;->val$contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
