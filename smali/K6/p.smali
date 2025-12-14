.class public final LK6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LK6/p;->a:I

    iput-object p2, p0, LK6/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget p1, p0, LK6/p;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LK6/p;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/a;

    iget-object p1, p0, Lcom/google/android/material/textfield/a;->u:LAa/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/a;->t:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/a;->u:LAa/a;

    new-instance v0, Lg1/b;

    invoke-direct {v0, p0}, Lg1/b;-><init>(LAa/a;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget v0, p0, LK6/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK6/p;->b:Ljava/lang/Object;

    check-cast v0, Ls/y;

    iget-object v1, v0, Ls/y;->r:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Ls/y;->r:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v1, v0, Ls/y;->r:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Ls/y;->l:LH6/q;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LK6/p;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/a;

    iget-object p1, p0, Lcom/google/android/material/textfield/a;->u:LAa/a;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/a;->t:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_2

    new-instance v0, Lg1/b;

    invoke-direct {v0, p1}, Lg1/b;-><init>(LAa/a;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
