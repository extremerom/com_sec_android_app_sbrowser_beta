.class Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->setupAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->b(Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;F)V

    const-string p0, "FlatStatusBarRenderer"

    const-string p1, "mProgress onAnimationEnd"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "FlatStatusBarRenderer"

    const-string v0, "mProgress onAnimationStart"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->b(Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;F)V

    return-void
.end method
