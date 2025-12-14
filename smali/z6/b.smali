.class public final Lz6/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:LK6/j;

.field public final synthetic b:Lcom/samsung/android/scloud/lib/setting/e;

.field public final synthetic c:Lw6/k;

.field public final synthetic d:Lf1/y;


# direct methods
.method public constructor <init>(LK6/j;Lcom/samsung/android/scloud/lib/setting/e;Lw6/k;Lf1/y;)V
    .locals 0

    iput-object p1, p0, Lz6/b;->a:LK6/j;

    iput-object p2, p0, Lz6/b;->b:Lcom/samsung/android/scloud/lib/setting/e;

    iput-object p3, p0, Lz6/b;->c:Lw6/k;

    iput-object p4, p0, Lz6/b;->d:Lf1/y;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz6/b;->b:Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v1, v0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lz6/b;->a:LK6/j;

    invoke-virtual {p0, v1, p1}, LK6/j;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    sget-object p0, LA6/b;->a:LA6/b;

    const-string p1, "view"

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, LA6/b;->a(ILandroid/view/View;)V

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ldb/r;->a:Ldb/r;

    iget-object v0, p0, Lz6/b;->d:Lf1/y;

    invoke-virtual {v0, p1}, Lf1/y;->accept(Ljava/lang/Object;)V

    sget-object p1, LA6/b;->a:LA6/b;

    iget-object p0, p0, Lz6/b;->b:Lcom/samsung/android/scloud/lib/setting/e;

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    const-string v0, "view"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x6c

    invoke-virtual {p1, v0, p0}, LA6/b;->a(ILandroid/view/View;)V

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lz6/b;->b:Lcom/samsung/android/scloud/lib/setting/e;

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lz6/b;->c:Lw6/k;

    invoke-virtual {p0, p1}, Lw6/k;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method
