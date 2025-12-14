.class public final synthetic Lcom/sec/android/app/sbrowser/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/e;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/e;->b:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/e;->a:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/e;->b:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->l(Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
