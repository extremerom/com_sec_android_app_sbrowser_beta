.class public final LG6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LG6/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LG6/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG6/f;->e:Ljava/lang/Object;

    new-instance p1, LH6/p;

    const/16 v0, 0xe

    invoke-direct {p1, v0, p0}, LH6/p;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LG6/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LG6/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG6/f;->e:Ljava/lang/Object;

    new-instance p1, LG6/e;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LG6/f;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lc5/L;
    .locals 4

    iget-object v0, p0, LG6/f;->d:Ljava/lang/Object;

    check-cast v0, Lc5/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Z)V

    new-instance v0, Lc5/L;

    iget-object v1, p0, LG6/f;->e:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/common/Feature;

    iget-boolean v2, p0, LG6/f;->b:Z

    iget v3, p0, LG6/f;->c:I

    invoke-direct {v0, p0, v1, v2, v3}, Lc5/L;-><init>(LG6/f;[Lcom/google/android/gms/common/Feature;ZI)V

    return-object v0
.end method

.method public b(I)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, LG6/f;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, LG6/f;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, LG6/f;->c:I

    iget-boolean p1, p0, LG6/f;->b:Z

    if-nez p1, :cond_1

    iget-object p1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, LG6/f;->d:Ljava/lang/Object;

    check-cast v1, LH6/p;

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, LG6/f;->b:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, LG6/f;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, LG6/f;->c:I

    iget-boolean p1, p0, LG6/f;->b:Z

    if-nez p1, :cond_3

    iget-object p1, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, LG6/f;->d:Ljava/lang/Object;

    check-cast v1, LG6/e;

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, LG6/f;->b:Z

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
