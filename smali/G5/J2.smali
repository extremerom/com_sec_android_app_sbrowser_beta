.class public LG5/J2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ4/b;
.implements LT2/g;
.implements LRd/p;
.implements Lm4/a;
.implements LW3/u;
.implements LW3/E;
.implements LR5/c;
.implements Lf1/v;
.implements Ll6/h;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, La0/V;->f:La0/V;

    const/4 v0, 0x0

    invoke-static {v0, p1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LG5/J2;->a:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, LG5/J2;->a:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LG5/J2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll7/a;)I
    .locals 3

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Li7/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Ll7/t;

    const-string v1, "not found"

    const-string v2, "cst == null"

    if-eqz v0, :cond_2

    iget-object p0, p0, Li7/f;->e:Li7/B;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    check-cast p1, Ll7/t;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/o;

    if-eqz p0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of v0, p1, Ll7/u;

    if-eqz v0, :cond_5

    iget-object p0, p0, Li7/f;->f:Li7/B;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Li7/C;->f()V

    move-object v0, p1

    check-cast v0, Ll7/u;

    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    iget-object v0, v0, Ll7/u;->a:Lm7/c;

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/o;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    instance-of v0, p1, Ll7/q;

    if-eqz v0, :cond_8

    iget-object p0, p0, Li7/f;->i:Li7/v;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object p0, p0, Li7/v;->f:Ljava/util/TreeMap;

    check-cast p1, Ll7/q;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/o;

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    instance-of v0, p1, Ll7/h;

    if-eqz v0, :cond_b

    iget-object p0, p0, Li7/f;->h:Li7/l;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object p0, p0, Li7/l;->f:Ljava/util/TreeMap;

    check-cast p1, Ll7/h;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/o;

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    invoke-virtual {p0}, Li7/o;->f()I

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, LM2/f;

    iget-object p0, p0, LM2/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(LQd/u;I)V
    .locals 0

    instance-of p2, p1, LQd/n;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, LQd/n;

    invoke-virtual {p1}, LQd/u;->o()LQd/u;

    move-result-object p1

    iget-object p2, p2, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-boolean p2, p2, Lorg/jsoup/parser/F;->c:Z

    if-eqz p2, :cond_1

    instance-of p2, p1, LQd/w;

    if-nez p2, :cond_0

    instance-of p2, p1, LQd/n;

    if-eqz p2, :cond_1

    check-cast p1, LQd/n;

    iget-object p1, p1, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-boolean p1, p1, Lorg/jsoup/parser/F;->d:Z

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-static {p0}, LQd/w;->C(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public create()Ljava/lang/Object;
    .locals 2

    new-instance v0, LS3/l;

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, LG5/g4;

    iget-object v1, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v1, LS3/o;

    iget-object p0, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    invoke-direct {v0, v1, p0}, LS3/l;-><init>(LS3/o;LZ3/x;)V

    return-object v0
.end method

.method public d(Landroid/net/Uri;)Lcom/bumptech/glide/load/data/e;
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/data/m;

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/ContentResolver;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lcom/bumptech/glide/load/data/b;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public e(LT2/f;)V
    .locals 5

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, LM2/f;

    iget-object v0, p0, LM2/f;->d:[I

    array-length v0, v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, LM2/f;->d:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, LT2/f;->l(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, LM2/f;->h:[[B

    aget-object v3, v3, v2

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, LT2/f;->f0(I[B)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, LM2/f;->g:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, LT2/f;->U(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, LM2/f;->f:[D

    aget-wide v3, v3, v2

    invoke-interface {p1, v3, v4, v2}, LT2/f;->n0(DI)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, LM2/f;->e:[J

    aget-wide v3, v3, v2

    invoke-interface {p1, v2, v3, v4}, LT2/f;->i(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public f(LQd/u;I)V
    .locals 1

    instance-of p2, p1, LQd/w;

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    check-cast p1, LQd/w;

    invoke-virtual {p1}, LQd/t;->z()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, LQd/u;->a:LQd/u;

    invoke-static {v0}, LQd/n;->H(LQd/u;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of p1, p1, LQd/d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LQd/w;->C(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p2, p0, p1}, LPd/b;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of p2, p1, LQd/n;

    if-eqz p2, :cond_4

    check-cast p1, LQd/n;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p1, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-boolean p2, p2, Lorg/jsoup/parser/F;->c:Z

    if-nez p2, :cond_3

    const-string p2, "br"

    invoke-virtual {p1}, LQd/n;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {p0}, LQd/w;->C(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    return-void
.end method

.method public g()V
    .locals 2

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, LO9/a;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    new-instance v0, LO7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LF6/e;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LI4/e;

    invoke-direct {v2, p0, v0, v1}, LI4/e;-><init>(Landroid/content/Context;LQ4/a;LQ4/a;)V

    return-object v2
.end method

.method public h(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->c:LN/f;

    invoke-virtual {v0, p1}, LN/A;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "The "

    const-string v0, " key cannot be used to put a Bitmap"

    invoke-static {p2, p1, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->c:LN/f;

    invoke-virtual {v0, p1}, LN/A;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "The "

    const-string v0, " key cannot be used to put a String"

    invoke-static {p2, p1, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-object v0, p0

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, LFa/a;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LFa/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 4

    invoke-static {}, Lcom/google/android/material/appbar/AppBarLayout;->access$000()I

    move-result p1

    iget-object v0, p2, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {v0, p1}, Lf1/u0;->f(I)LX0/b;

    move-result-object p1

    invoke-static {}, Lcom/google/android/material/appbar/AppBarLayout;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object v0

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout;->access$200(Lcom/google/android/material/appbar/AppBarLayout;)LX0/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LX0/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout;->access$300(Lcom/google/android/material/appbar/AppBarLayout;)LX0/b;

    move-result-object v1

    invoke-virtual {p1, v1}, LX0/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/google/android/material/appbar/AppBarLayout;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onApplyWindowInsets] sysInsets : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", tappableInsets : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout;->access$500(Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout;->access$500(Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N()V

    invoke-virtual {v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->a0()V

    iget-object v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Lc6/r;->t()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->access$302(Lcom/google/android/material/appbar/AppBarLayout;LX0/b;)LX0/b;

    invoke-static {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->access$202(Lcom/google/android/material/appbar/AppBarLayout;LX0/b;)LX0/b;

    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout;->onWindowInsetChanged(Lf1/w0;)Lf1/w0;

    move-result-object p0

    return-object p0
.end method

.method public onComplete(LR5/h;)V
    .locals 2

    invoke-virtual {p1}, LR5/h;->l()Z

    move-result v0

    iget-object p0, p0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, LZ5/o;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR5/h;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, LY5/k;->A0(LZ5/o;Z[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LR5/h;->h()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "WearableLS"

    const-string v1, "Failed to resolve future, sending null response"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LY5/k;->A0(LZ5/o;Z[B)V

    :goto_0
    return-void
.end method

.method public y(LW3/z;)LW3/t;
    .locals 0

    new-instance p1, LW3/F;

    invoke-direct {p1, p0}, LW3/F;-><init>(LW3/E;)V

    return-object p1
.end method
