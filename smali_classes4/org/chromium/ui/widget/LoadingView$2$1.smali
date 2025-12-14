.class Lorg/chromium/ui/widget/LoadingView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/widget/LoadingView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/ui/widget/LoadingView$2;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/widget/LoadingView$2;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/widget/LoadingView$2$1;->this$1:Lorg/chromium/ui/widget/LoadingView$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/LoadingView$2$1;->this$1:Lorg/chromium/ui/widget/LoadingView$2;

    iget-object p0, p0, Lorg/chromium/ui/widget/LoadingView$2;->this$0:Lorg/chromium/ui/widget/LoadingView;

    invoke-static {p0}, Lorg/chromium/ui/widget/LoadingView;->e(Lorg/chromium/ui/widget/LoadingView;)V

    return-void
.end method
