.class public final Lm/w;
.super Lm/p;
.source "SourceFile"

# interfaces
.implements Ls/g;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final x0:LN/A;

.field public static final y0:[I

.field public static final z0:Z


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/view/View;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public X:Z

.field public Y:[Lm/v;

.field public Z:Lm/v;

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Landroid/content/res/Configuration;

.field public h0:I

.field public i0:I

.field public final j:Ljava/lang/Object;

.field public j0:I

.field public final k:Landroid/content/Context;

.field public k0:Z

.field public l:Landroid/view/Window;

.field public l0:Lm/t;

.field public m:Lm/s;

.field public m0:Lm/t;

.field public final n:Ljava/lang/Object;

.field public n0:Z

.field public o:Lm/b;

.field public o0:I

.field public p:Lr/k;

.field public final p0:Lm/q;

.field public q:Ljava/lang/CharSequence;

.field public q0:Z

.field public r:Lt/Z;

.field public r0:Landroid/graphics/Rect;

.field public s:LO9/a;

.field public s0:Landroid/graphics/Rect;

.field public t:LP7/c;

.field public t0:Lm/A;

.field public u:Lr/b;

.field public u0:Landroid/window/OnBackInvokedDispatcher;

.field public v:Landroidx/appcompat/widget/ActionBarContextView;

.field public v0:Landroidx/activity/x;

.field public w:Landroid/widget/PopupWindow;

.field public w0:Z

.field public x:Lm/q;

.field public y:Lf1/Z;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    sput-object v0, Lm/w;->x0:LN/A;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lm/w;->y0:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lm/w;->z0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lm/o;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm/w;->y:Lf1/Z;

    const/16 v1, -0x64

    iput v1, p0, Lm/w;->h0:I

    new-instance v2, Lm/q;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lm/q;-><init>(Lm/w;I)V

    iput-object v2, p0, Lm/w;->p0:Lm/q;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lm/w;->w0:Z

    iput-object p1, p0, Lm/w;->k:Landroid/content/Context;

    iput-object p3, p0, Lm/w;->n:Ljava/lang/Object;

    iput-object p4, p0, Lm/w;->j:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Lm/n;

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Lm/n;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm/n;->getDelegate()Lm/p;

    move-result-object p1

    check-cast p1, Lm/w;

    iget p1, p1, Lm/w;->h0:I

    iput p1, p0, Lm/w;->h0:I

    :cond_2
    iget p1, p0, Lm/w;->h0:I

    if-ne p1, v1, :cond_3

    sget-object p1, Lm/w;->x0:LN/A;

    iget-object p3, p0, Lm/w;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lm/w;->h0:I

    iget-object p3, p0, Lm/w;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lm/w;->r(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lt/w;->c()V

    return-void
.end method

.method public static s(Landroid/content/Context;)Lb1/e;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lm/p;->c:Lb1/e;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb1/e;->a(Ljava/lang/String;)Lb1/e;

    move-result-object p0

    iget-object v0, v0, Lb1/e;->a:Lb1/f;

    iget-object v1, v0, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lb1/e;->b:Lb1/e;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    iget-object v4, p0, Lb1/e;->a:Lb1/f;

    iget-object v4, v4, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-ge v2, v4, :cond_5

    iget-object v3, v0, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, v0, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, p0, Lb1/e;->a:Lb1/f;

    iget-object v4, v4, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    new-instance v0, Lb1/e;

    new-instance v2, Lb1/f;

    invoke-direct {v2, v1}, Lb1/f;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v0, v2}, Lb1/e;-><init>(Lb1/f;)V

    :goto_2
    iget-object v1, v0, Lb1/e;->a:Lb1/f;

    iget-object v1, v1, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, v0

    :goto_3
    return-object p0
.end method

.method public static w(Landroid/content/Context;ILb1/e;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p4, 0x0

    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p0, p3

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p2, :cond_4

    iget-object p0, p2, Lb1/e;->a:Lb1/f;

    iget-object p0, p0, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Lm/w;->l:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lm/w;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm/w;->r(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Lm/w;->l:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final B(Landroid/content/Context;)LJ8/i;
    .locals 3

    iget-object v0, p0, Lm/w;->l0:Lm/t;

    if-nez v0, :cond_1

    new-instance v0, Lm/t;

    sget-object v1, LZ3/x;->e:LZ3/x;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, LZ3/x;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, LZ3/x;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, LZ3/x;->e:LZ3/x;

    :cond_0
    sget-object p1, LZ3/x;->e:LZ3/x;

    invoke-direct {v0, p0, p1}, Lm/t;-><init>(Lm/w;LZ3/x;)V

    iput-object v0, p0, Lm/w;->l0:Lm/t;

    :cond_1
    iget-object p0, p0, Lm/w;->l0:Lm/t;

    return-object p0
.end method

.method public final C(I)Lm/v;
    .locals 4

    iget-object v0, p0, Lm/w;->Y:[Lm/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p1, :cond_2

    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Lm/v;

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lm/w;->Y:[Lm/v;

    move-object v0, v2

    :cond_2
    aget-object p0, v0, p1

    if-nez p0, :cond_3

    new-instance p0, Lm/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm/v;->a:I

    iput-boolean v1, p0, Lm/v;->n:Z

    aput-object p0, v0, p1

    :cond_3
    return-object p0
.end method

.method public final D()V
    .locals 3

    invoke-virtual {p0}, Lm/w;->z()V

    iget-boolean v0, p0, Lm/w;->F:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lm/w;->o:Lm/b;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm/w;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Lm/F;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lm/w;->G:Z

    invoke-direct {v1, v0, v2}, Lm/F;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lm/w;->o:Lm/b;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Lm/F;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lm/F;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lm/w;->o:Lm/b;

    :cond_2
    :goto_0
    iget-object v0, p0, Lm/w;->o:Lm/b;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lm/w;->q0:Z

    invoke-virtual {v0, p0}, Lm/b;->m(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final E(I)V
    .locals 3

    iget v0, p0, Lm/w;->o0:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lm/w;->o0:I

    iget-boolean p1, p0, Lm/w;->n0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lm/w;->p0:Lm/q;

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lm/w;->n0:Z

    :cond_0
    return-void
.end method

.method public final F(ILandroid/content/Context;)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lm/w;->m0:Lm/t;

    if-nez p1, :cond_0

    new-instance p1, Lm/t;

    invoke-direct {p1, p0, p2}, Lm/t;-><init>(Lm/w;Landroid/content/Context;)V

    iput-object p1, p0, Lm/w;->m0:Lm/t;

    :cond_0
    iget-object p0, p0, Lm/w;->m0:Lm/t;

    invoke-virtual {p0}, Lm/t;->i()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p2}, Lm/w;->B(Landroid/content/Context;)LJ8/i;

    move-result-object p0

    invoke-virtual {p0}, LJ8/i;->i()I

    move-result p0

    return p0

    :cond_4
    return p1

    :cond_5
    return v1
.end method

.method public final G()Z
    .locals 5

    iget-boolean v0, p0, Lm/w;->c0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lm/w;->c0:Z

    invoke-virtual {p0, v1}, Lm/w;->C(I)Lm/v;

    move-result-object v2

    iget-boolean v3, v2, Lm/v;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v4}, Lm/w;->v(Lm/v;Z)V

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lm/w;->u:Lr/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lr/b;->a()V

    return v4

    :cond_2
    invoke-virtual {p0}, Lm/w;->D()V

    iget-object p0, p0, Lm/w;->o:Lm/b;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lm/b;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method public final H(Lm/v;Landroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lm/v;->m:Z

    if-nez v2, :cond_1b

    iget-boolean v2, v0, Lm/w;->f0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v2, v1, Lm/v;->a:I

    iget-object v3, v0, Lm/w;->k:Landroid/content/Context;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v1, Lm/v;->h:Ls/i;

    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1, v5}, Lm/w;->v(Lm/v;Z)V

    return-void

    :cond_2
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p2}, Lm/w;->J(Lm/v;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    iget-object v6, v1, Lm/v;->e:Lm/u;

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v6, :cond_6

    iget-boolean v9, v1, Lm/v;->n:Z

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, v1, Lm/v;->g:Landroid/view/View;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_18

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_18

    move v10, v6

    goto/16 :goto_7

    :cond_6
    :goto_0
    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lm/w;->D()V

    iget-object v6, v0, Lm/w;->o:Lm/b;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lm/b;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v6

    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v10, 0x7f040005

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_9

    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    const v10, 0x7f0403dd

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_a
    const v6, 0x7f150510

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v6, Lr/d;

    invoke-direct {v6, v3, v7}, Lr/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lr/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v6, v1, Lm/v;->j:Lr/d;

    sget-object v3, Lk/a;->j:[I

    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v6, 0x66

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lm/v;->b:I

    const/16 v6, 0x8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lm/v;->d:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Lm/u;

    iget-object v6, v1, Lm/v;->j:Lr/d;

    invoke-direct {v3, v0, v6}, Lm/u;-><init>(Lm/w;Lr/d;)V

    iput-object v3, v1, Lm/v;->e:Lm/u;

    const/16 v3, 0x51

    iput v3, v1, Lm/v;->c:I

    goto :goto_4

    :cond_b
    iget-boolean v3, v1, Lm/v;->n:Z

    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, v1, Lm/v;->e:Lm/u;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    :goto_4
    iget-object v3, v1, Lm/v;->g:Landroid/view/View;

    if-eqz v3, :cond_d

    iput-object v3, v1, Lm/v;->f:Landroid/view/View;

    goto :goto_5

    :cond_d
    iget-object v3, v1, Lm/v;->h:Ls/i;

    if-nez v3, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object v3, v0, Lm/w;->t:LP7/c;

    if-nez v3, :cond_f

    new-instance v3, LP7/c;

    const/16 v6, 0x11

    invoke-direct {v3, v6, v0}, LP7/c;-><init>(ILjava/lang/Object;)V

    iput-object v3, v0, Lm/w;->t:LP7/c;

    :cond_f
    iget-object v3, v0, Lm/w;->t:LP7/c;

    iget-object v6, v1, Lm/v;->i:Ls/e;

    if-nez v6, :cond_10

    new-instance v6, Ls/e;

    iget-object v9, v1, Lm/v;->j:Lr/d;

    invoke-direct {v6, v9}, Ls/e;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lm/v;->i:Ls/e;

    iput-object v3, v6, Ls/e;->e:Ls/s;

    iget-object v3, v1, Lm/v;->h:Ls/i;

    iget-object v9, v3, Ls/i;->a:Landroid/content/Context;

    invoke-virtual {v3, v6, v9}, Ls/i;->b(Ls/t;Landroid/content/Context;)V

    :cond_10
    iget-object v3, v1, Lm/v;->i:Ls/e;

    iget-object v6, v1, Lm/v;->e:Lm/u;

    iget-object v9, v3, Ls/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_12

    iget-object v9, v3, Ls/e;->b:Landroid/view/LayoutInflater;

    const v10, 0x7f0e0006

    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v6, v3, Ls/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v6, v3, Ls/e;->f:Ls/d;

    if-nez v6, :cond_11

    new-instance v6, Ls/d;

    invoke-direct {v6, v3}, Ls/d;-><init>(Ls/e;)V

    iput-object v6, v3, Ls/e;->f:Ls/d;

    :cond_11
    iget-object v6, v3, Ls/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v3, Ls/e;->f:Ls/d;

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, v3, Ls/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v3, v3, Ls/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v3, v1, Lm/v;->f:Landroid/view/View;

    if-eqz v3, :cond_1a

    :goto_5
    iget-object v3, v1, Lm/v;->f:Landroid/view/View;

    if-nez v3, :cond_13

    goto/16 :goto_8

    :cond_13
    iget-object v3, v1, Lm/v;->g:Landroid/view/View;

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    iget-object v3, v1, Lm/v;->i:Ls/e;

    iget-object v6, v3, Ls/e;->f:Ls/d;

    if-nez v6, :cond_15

    new-instance v6, Ls/d;

    invoke-direct {v6, v3}, Ls/d;-><init>(Ls/e;)V

    iput-object v6, v3, Ls/e;->f:Ls/d;

    :cond_15
    iget-object v3, v3, Ls/e;->f:Ls/d;

    invoke-virtual {v3}, Ls/d;->getCount()I

    move-result v3

    if-lez v3, :cond_1a

    :goto_6
    iget-object v3, v1, Lm/v;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_16

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v6, v1, Lm/v;->b:I

    iget-object v9, v1, Lm/v;->e:Lm/u;

    invoke-virtual {v9, v6}, Lm/u;->setBackgroundResource(I)V

    iget-object v6, v1, Lm/v;->f:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v9, v6, Landroid/view/ViewGroup;

    if-eqz v9, :cond_17

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v9, v1, Lm/v;->f:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v6, v1, Lm/v;->e:Lm/u;

    iget-object v9, v1, Lm/v;->f:Landroid/view/View;

    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Lm/v;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Lm/v;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_18
    move v10, v8

    :goto_7
    iput-boolean v7, v1, Lm/v;->l:Z

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v6, v1, Lm/v;->c:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v6, v1, Lm/v;->d:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v6, v1, Lm/v;->e:Lm/u;

    invoke-interface {v4, v6, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v1, Lm/v;->m:Z

    if-nez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lm/w;->L()V

    :cond_19
    return-void

    :cond_1a
    :goto_8
    iput-boolean v5, v1, Lm/v;->n:Z

    :cond_1b
    :goto_9
    return-void
.end method

.method public final I(Lm/v;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lm/v;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lm/w;->J(Lm/v;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Lm/v;->h:Ls/i;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Ls/i;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final J(Lm/v;Landroid/view/KeyEvent;)Z
    .locals 12

    iget-boolean v0, p0, Lm/w;->f0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lm/v;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lm/w;->Z:Lm/v;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lm/w;->v(Lm/v;Z)V

    :cond_2
    iget-object v0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget v3, p1, Lm/v;->a:I

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Lm/v;->g:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Lm/w;->r:Lt/Z;

    if-eqz v6, :cond_6

    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast v6, Lt/l1;

    iput-boolean v2, v6, Lt/l1;->l:Z

    :cond_6
    iget-object v6, p1, Lm/v;->g:Landroid/view/View;

    if-nez v6, :cond_1e

    if-eqz v5, :cond_7

    iget-object v6, p0, Lm/w;->o:Lm/b;

    instance-of v6, v6, Lm/C;

    if-nez v6, :cond_1e

    :cond_7
    iget-object v6, p1, Lm/v;->h:Ls/i;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    iget-boolean v8, p1, Lm/v;->o:Z

    if-eqz v8, :cond_18

    :cond_8
    if-nez v6, :cond_11

    iget-object v6, p0, Lm/w;->k:Landroid/content/Context;

    if-eqz v3, :cond_9

    if-ne v3, v4, :cond_d

    :cond_9
    iget-object v4, p0, Lm/w;->r:Lt/Z;

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f04000c

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    const v10, 0x7f04000d

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_c

    if-nez v9, :cond_b

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v9, :cond_d

    new-instance v4, Lr/d;

    invoke-direct {v4, v6, v1}, Lr/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lr/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_d
    new-instance v4, Ls/i;

    invoke-direct {v4, v6}, Ls/i;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Ls/i;->e:Ls/g;

    iget-object v6, p1, Lm/v;->h:Ls/i;

    if-ne v4, v6, :cond_e

    goto :goto_3

    :cond_e
    if-eqz v6, :cond_f

    iget-object v8, p1, Lm/v;->i:Ls/e;

    invoke-virtual {v6, v8}, Ls/i;->r(Ls/t;)V

    :cond_f
    iput-object v4, p1, Lm/v;->h:Ls/i;

    iget-object v6, p1, Lm/v;->i:Ls/e;

    if-eqz v6, :cond_10

    iget-object v8, v4, Ls/i;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Ls/i;->b(Ls/t;Landroid/content/Context;)V

    :cond_10
    :goto_3
    iget-object v4, p1, Lm/v;->h:Ls/i;

    if-nez v4, :cond_11

    return v1

    :cond_11
    if-eqz v5, :cond_13

    iget-object v4, p0, Lm/w;->r:Lt/Z;

    if-eqz v4, :cond_13

    iget-object v6, p0, Lm/w;->s:LO9/a;

    if-nez v6, :cond_12

    new-instance v6, LO9/a;

    const/16 v8, 0x11

    invoke-direct {v6, v8, p0}, LO9/a;-><init>(ILjava/lang/Object;)V

    iput-object v6, p0, Lm/w;->s:LO9/a;

    :cond_12
    iget-object v6, p1, Lm/v;->h:Ls/i;

    iget-object v8, p0, Lm/w;->s:LO9/a;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f(Ls/i;Ls/s;)V

    :cond_13
    iget-object v4, p1, Lm/v;->h:Ls/i;

    invoke-virtual {v4}, Ls/i;->w()V

    iget-object v4, p1, Lm/v;->h:Ls/i;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object p2, p1, Lm/v;->h:Ls/i;

    if-nez p2, :cond_14

    goto :goto_4

    :cond_14
    if-eqz p2, :cond_15

    iget-object v0, p1, Lm/v;->i:Ls/e;

    invoke-virtual {p2, v0}, Ls/i;->r(Ls/t;)V

    :cond_15
    iput-object v7, p1, Lm/v;->h:Ls/i;

    :goto_4
    if-eqz v5, :cond_16

    iget-object p1, p0, Lm/w;->r:Lt/Z;

    if-eqz p1, :cond_16

    iget-object p0, p0, Lm/w;->s:LO9/a;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f(Ls/i;Ls/s;)V

    :cond_16
    return v1

    :cond_17
    iput-boolean v1, p1, Lm/v;->o:Z

    :cond_18
    iget-object v3, p1, Lm/v;->h:Ls/i;

    invoke-virtual {v3}, Ls/i;->w()V

    iget-object v3, p1, Lm/v;->p:Landroid/os/Bundle;

    if-eqz v3, :cond_19

    iget-object v4, p1, Lm/v;->h:Ls/i;

    invoke-virtual {v4, v3}, Ls/i;->s(Landroid/os/Bundle;)V

    iput-object v7, p1, Lm/v;->p:Landroid/os/Bundle;

    :cond_19
    iget-object v3, p1, Lm/v;->g:Landroid/view/View;

    iget-object v4, p1, Lm/v;->h:Ls/i;

    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz v5, :cond_1a

    iget-object p2, p0, Lm/w;->r:Lt/Z;

    if-eqz p2, :cond_1a

    iget-object p0, p0, Lm/w;->s:LO9/a;

    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f(Ls/i;Ls/s;)V

    :cond_1a
    iget-object p0, p1, Lm/v;->h:Ls/i;

    invoke-virtual {p0}, Ls/i;->v()V

    return v1

    :cond_1b
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_5

    :cond_1c
    const/4 p2, -0x1

    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1d

    move p2, v2

    goto :goto_6

    :cond_1d
    move p2, v1

    :goto_6
    iget-object v0, p1, Lm/v;->h:Ls/i;

    invoke-virtual {v0, p2}, Ls/i;->setQwertyMode(Z)V

    iget-object p2, p1, Lm/v;->h:Ls/i;

    invoke-virtual {p2}, Ls/i;->v()V

    :cond_1e
    iput-boolean v2, p1, Lm/v;->k:Z

    iput-boolean v1, p1, Lm/v;->l:Z

    iput-object p1, p0, Lm/w;->Z:Lm/v;

    return v2
.end method

.method public final K()V
    .locals 1

    iget-boolean p0, p0, Lm/w;->z:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final L()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lm/w;->u0:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lm/w;->C(I)Lm/v;

    move-result-object v0

    iget-boolean v0, v0, Lm/v;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lm/w;->u:Lr/b;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lm/w;->v0:Landroidx/activity/x;

    if-nez v0, :cond_3

    iget-object v0, p0, Lm/w;->u0:Landroid/window/OnBackInvokedDispatcher;

    new-instance v1, Landroidx/activity/x;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Landroidx/activity/x;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lj9/b;->e(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    invoke-static {v0, v1}, Lj9/b;->k(Landroid/window/OnBackInvokedDispatcher;Landroidx/activity/x;)V

    iput-object v1, p0, Lm/w;->v0:Landroidx/activity/x;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lm/w;->v0:Landroidx/activity/x;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lm/w;->u0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v1}, Lj9/b;->e(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    invoke-static {v1, v0}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lm/w;->v0:Landroidx/activity/x;

    :cond_4
    :goto_2
    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lm/w;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Lm/w;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ls/i;Landroid/view/MenuItem;)Z
    .locals 6

    iget-object v0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lm/w;->f0:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ls/i;->k()Ls/i;

    move-result-object p1

    iget-object p0, p0, Lm/w;->Y:[Lm/v;

    if-eqz p0, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Lm/v;->h:Ls/i;

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    iget p0, v4, Lm/v;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final c(Ls/i;)V
    .locals 5

    iget-object p1, p0, Lm/w;->r:Lt/Z;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast p1, Lt/l1;

    iget-object p1, p1, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lm/w;->k:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lm/w;->r:Lt/Z;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast p1, Lt/l1;

    iget-object p1, p1, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Lm/w;->r:Lt/Z;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast v2, Lt/l1;

    iget-object v2, v2, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Lm/w;->r:Lt/Z;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast v0, Lt/l1;

    iget-object v0, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    iget-boolean v0, p0, Lm/w;->f0:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lm/w;->C(I)Lm/v;

    move-result-object p0

    iget-object p0, p0, Lm/v;->h:Ls/i;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lm/w;->f0:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lm/w;->n0:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lm/w;->o0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lm/w;->p0:Lm/q;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Lm/q;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Lm/w;->C(I)Lm/v;

    move-result-object v0

    iget-object v2, v0, Lm/v;->h:Ls/i;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lm/v;->o:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lm/v;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lm/v;->h:Ls/i;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p0, p0, Lm/w;->r:Lt/Z;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast p0, Lt/l1;

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lm/w;->C(I)Lm/v;

    move-result-object p1

    iput-boolean v0, p1, Lm/v;->n:Z

    invoke-virtual {p0, p1, v1}, Lm/w;->v(Lm/v;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm/w;->H(Lm/v;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lm/w;->o:Lm/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm/w;->D()V

    iget-object v0, p0, Lm/w;->o:Lm/b;

    invoke-virtual {v0}, Lm/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm/w;->E(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/w;->d0:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lm/w;->q(ZZ)Z

    invoke-virtual {p0}, Lm/w;->A()V

    iget-object v1, p0, Lm/w;->j:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, LU0/c;->c(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lm/w;->o:Lm/b;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lm/w;->q0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Lm/b;->m(Z)V

    :cond_1
    :goto_1
    sget-object v1, Lm/p;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lm/p;->i(Lm/w;)V

    sget-object v2, Lm/p;->g:LN/g;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, LN/g;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lm/w;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lm/w;->g0:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Lm/w;->e0:Z

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lm/w;->j:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lm/p;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lm/p;->i(Lm/w;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lm/w;->n0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lm/w;->p0:Lm/q;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/w;->f0:Z

    iget v0, p0, Lm/w;->h0:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lm/w;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lm/w;->x0:LN/A;

    iget-object v1, p0, Lm/w;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lm/w;->h0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lm/w;->x0:LN/A;

    iget-object v1, p0, Lm/w;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lm/w;->o:Lm/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lm/b;->h()V

    :cond_3
    iget-object v0, p0, Lm/w;->l0:Lm/t;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LJ8/i;->e()V

    :cond_4
    iget-object p0, p0, Lm/w;->m0:Lm/t;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, LJ8/i;->e()V

    :cond_5
    return-void
.end method

.method public final h()V
    .locals 5

    invoke-virtual {p0}, Lm/w;->D()V

    iget-object v0, p0, Lm/w;->o:Lm/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lm/b;->v(Z)V

    :cond_0
    iget-object v0, p0, Lm/w;->Y:[Lm/v;

    if-eqz v0, :cond_1

    array-length v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lm/w;->v(Lm/v;Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final j(I)Z
    .locals 5

    const/16 v0, 0x6d

    const/16 v1, 0x6c

    const/16 v2, 0x8

    const-string v3, "AppCompatDelegate"

    if-ne p1, v2, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lm/w;->J:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget-boolean v2, p0, Lm/w;->F:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Lm/w;->F:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Lm/w;->K()V

    iput-boolean v4, p0, Lm/w;->G:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Lm/w;->K()V

    iput-boolean v4, p0, Lm/w;->F:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Lm/w;->K()V

    iput-boolean v4, p0, Lm/w;->H:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Lm/w;->K()V

    iput-boolean v4, p0, Lm/w;->E:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Lm/w;->K()V

    iput-boolean v4, p0, Lm/w;->D:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Lm/w;->K()V

    iput-boolean v4, p0, Lm/w;->J:Z

    return v4
.end method

.method public final k(I)V
    .locals 2

    invoke-virtual {p0}, Lm/w;->z()V

    iget-object v0, p0, Lm/w;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lm/w;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lm/w;->m:Lm/s;

    iget-object p0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lm/s;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lm/w;->z()V

    iget-object v0, p0, Lm/w;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lm/w;->m:Lm/s;

    iget-object p0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lm/s;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final m(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lm/w;->z()V

    iget-object v0, p0, Lm/w;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lm/w;->m:Lm/s;

    iget-object p0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lm/s;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lm/w;->q:Ljava/lang/CharSequence;

    iget-object v0, p0, Lm/w;->r:Lt/Z;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lt/Z;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm/w;->o:Lm/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lm/b;->x(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lm/w;->B:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    const/4 p1, 0x3

    const/4 v0, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lm/w;->t0:Lm/A;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    sget-object v4, Lk/a;->j:[I

    iget-object v6, p0, Lm/w;->k:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v7, 0x90

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v7, :cond_0

    new-instance v4, Lm/A;

    invoke-direct {v4}, Lm/A;-><init>()V

    iput-object v4, p0, Lm/w;->t0:Lm/A;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/A;

    iput-object v4, p0, Lm/w;->t0:Lm/A;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failed to instantiate custom view inflater "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Falling back to default."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppCompatDelegate"

    invoke-static {v7, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Lm/A;

    invoke-direct {v4}, Lm/A;-><init>()V

    iput-object v4, p0, Lm/w;->t0:Lm/A;

    :cond_1
    :goto_0
    iget-object p0, p0, Lm/w;->t0:Lm/A;

    sget v4, Lt/m1;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lk/a;->B:[I

    invoke-virtual {p3, p4, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_2

    const-string v7, "AppCompatViewInflater"

    const-string v8, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v6, :cond_4

    instance-of v4, p3, Lr/d;

    if-eqz v4, :cond_3

    move-object v4, p3

    check-cast v4, Lr/d;

    iget v4, v4, Lr/d;->a:I

    if-eq v4, v6, :cond_4

    :cond_3
    new-instance v4, Lr/d;

    invoke-direct {v4, p3, v6}, Lr/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object v4, p3

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_2
    move v1, v0

    goto/16 :goto_3

    :sswitch_0
    const-string v1, "Button"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "EditText"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "AutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_4
    const-string v6, "ImageView"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_2

    :sswitch_5
    const-string v1, "ToggleButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_6
    const-string v1, "RadioButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x6

    goto :goto_3

    :sswitch_7
    const-string v1, "Spinner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x5

    goto :goto_3

    :sswitch_8
    const-string v1, "ImageButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x4

    goto :goto_3

    :sswitch_9
    const-string v1, "TextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    move v1, p1

    goto :goto_3

    :sswitch_a
    const-string v1, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_b
    const-string v1, "CheckedTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_2

    :cond_f
    move v1, v3

    goto :goto_3

    :sswitch_c
    const-string v1, "RatingBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_2

    :cond_10
    move v1, v2

    :cond_11
    :goto_3
    packed-switch v1, :pswitch_data_0

    move-object v1, v5

    goto :goto_4

    :pswitch_0
    invoke-virtual {p0, v4, p4}, Lm/A;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lt/s;

    move-result-object v1

    goto :goto_4

    :pswitch_1
    new-instance v1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {v1, v4, p4}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0, v4, p4}, Lm/A;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v1

    goto :goto_4

    :pswitch_3
    invoke-virtual {p0, v4, p4}, Lm/A;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lt/q;

    move-result-object v1

    goto :goto_4

    :pswitch_4
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v1, v4, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_5
    new-instance v1, Lt/X;

    invoke-direct {v1, v4, p4}, Lt/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {p0, v4, p4}, Lm/A;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lt/E;

    move-result-object v1

    goto :goto_4

    :pswitch_7
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v1, v4, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_8
    new-instance v1, Lt/z;

    invoke-direct {v1, v4, p4}, Lt/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_9
    invoke-virtual {p0, v4, p4}, Lm/A;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    goto :goto_4

    :pswitch_a
    new-instance v1, Lt/B;

    invoke-direct {v1, v4, p4}, Lt/B;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_b
    new-instance v1, Lt/t;

    invoke-direct {v1, v4, p4}, Lt/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_c
    new-instance v1, Lt/F;

    invoke-direct {v1, v4, p4}, Lt/F;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v1, :cond_16

    if-eq p3, v4, :cond_16

    iget-object p3, p0, Lm/A;->a:[Ljava/lang/Object;

    const-string v1, "view"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p2, "class"

    invoke-interface {p4, v5, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_12
    :try_start_1
    aput-object v4, p3, v2

    aput-object p4, p3, v3

    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_15

    move v0, v2

    :goto_5
    sget-object v1, Lm/A;->d:[Ljava/lang/String;

    if-ge v0, p1, :cond_14

    aget-object v1, v1, v0

    invoke-virtual {p0, v4, p2, v1}, Lm/A;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_13

    aput-object v5, p3, v2

    aput-object v5, p3, v3

    move-object v5, v1

    goto :goto_7

    :cond_13
    add-int/2addr v0, v3

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_14
    aput-object v5, p3, v2

    aput-object v5, p3, v3

    goto :goto_7

    :cond_15
    :try_start_2
    invoke-virtual {p0, v4, p2, v5}, Lm/A;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    aput-object v5, p3, v2

    aput-object v5, p3, v3

    move-object v5, p0

    goto :goto_7

    :goto_6
    aput-object v5, p3, v2

    aput-object v5, p3, v3

    throw p0

    :catch_0
    aput-object v5, p3, v2

    aput-object v5, p3, v3

    :goto_7
    move-object v1, v5

    :cond_16
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of p1, p0, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_8

    :cond_17
    sget-object p1, Lm/A;->c:[I

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    new-instance p2, Lm/z;

    invoke-direct {p2, v1, p1}, Lm/z;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    :goto_8
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_c
        -0x56c015e7 -> :sswitch_b
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_9
        -0x37e04bb3 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lm/w;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lr/a;)Lr/b;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_16

    iget-object v2, p0, Lm/w;->u:Lr/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lr/b;->a()V

    :cond_0
    new-instance v2, LA7/h;

    invoke-direct {v2, p0, p1, v0}, LA7/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lm/w;->D()V

    iget-object p1, p0, Lm/w;->o:Lm/b;

    iget-object v3, p0, Lm/w;->n:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lm/b;->z(LA7/h;)Lr/b;

    move-result-object p1

    iput-object p1, p0, Lm/w;->u:Lr/b;

    if-eqz p1, :cond_1

    invoke-interface {v3, p1}, Lm/o;->onSupportActionModeStarted(Lr/b;)V

    :cond_1
    iget-object p1, p0, Lm/w;->u:Lr/b;

    if-nez p1, :cond_15

    iget-object p1, p0, Lm/w;->y:Lf1/Z;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lf1/Z;->b()V

    :cond_2
    iget-object p1, p0, Lm/w;->u:Lr/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lr/b;->a()V

    :cond_3
    iget-boolean p1, p0, Lm/w;->f0:Z

    const/4 v4, 0x0

    if-nez p1, :cond_4

    :try_start_0
    invoke-interface {v3, v2}, Lm/o;->onWindowStartingSupportActionMode(Lr/a;)Lr/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_5

    iput-object p1, p0, Lm/w;->u:Lr/b;

    goto/16 :goto_7

    :cond_5
    iget-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lm/w;->I:Z

    iget-object v5, p0, Lm/w;->k:Landroid/content/Context;

    if-eqz p1, :cond_7

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f04000c

    invoke-virtual {v6, v7, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Lr/d;

    invoke-direct {v6, v5, v0}, Lr/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lr/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v6

    :cond_6
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v6, v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x7f04001b

    invoke-direct {v6, v5, v4, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lm/w;->w:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v6, p0, Lm/w;->w:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v6, p0, Lm/w;->w:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f040006

    invoke-virtual {v6, v7, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iget-object v5, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object p1, p0, Lm/w;->w:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance p1, Lm/q;

    invoke-direct {p1, p0, v1}, Lm/q;-><init>(Lm/w;I)V

    iput-object p1, p0, Lm/w;->x:Lm/q;

    goto/16 :goto_4

    :cond_7
    iget-object p1, p0, Lm/w;->A:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "collapsing_toolbar"

    const-string v9, "id"

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lm/w;->A:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sesl_toolbar_container"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v7, v9, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v6, p0, Lm/w;->A:Landroid/view/ViewGroup;

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    :cond_8
    const p1, 0x7f0b0067

    if-nez v6, :cond_9

    iget-object v6, p0, Lm/w;->A:Landroid/view/ViewGroup;

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    goto :goto_1

    :cond_9
    iget-boolean v7, p0, Lm/w;->H:Z

    if-eqz v7, :cond_a

    iget-object v6, p0, Lm/w;->A:Landroid/view/ViewGroup;

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    goto :goto_1

    :cond_a
    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    :goto_1
    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lm/w;->D()V

    iget-object v6, p0, Lm/w;->o:Lm/b;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lm/b;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_2

    :cond_b
    move-object v6, v4

    :goto_2
    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    move-object v5, v6

    :goto_3
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_d
    :goto_4
    iget-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lm/w;->y:Lf1/Z;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lf1/Z;->b()V

    :cond_e
    iget-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    new-instance p1, Lr/g;

    iget-object v5, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v5, p1, Lr/g;->c:Landroid/content/Context;

    iput-object v6, p1, Lr/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v2, p1, Lr/g;->e:LA7/h;

    new-instance v5, Ls/i;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Ls/i;-><init>(Landroid/content/Context;)V

    iput v1, v5, Ls/i;->l:I

    iput-object v5, p1, Lr/g;->h:Ls/i;

    iput-object p1, v5, Ls/i;->e:Ls/g;

    iget-object v2, v2, LA7/h;->a:Ljava/lang/Object;

    check-cast v2, Lr/a;

    invoke-interface {v2, p1, v5}, Lr/a;->i(Lr/b;Ls/i;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lr/g;->i()V

    iget-object v2, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lr/b;)V

    iput-object p1, p0, Lm/w;->u:Lr/b;

    iget-boolean p1, p0, Lm/w;->z:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lm/w;->A:Landroid/view/ViewGroup;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v1

    goto :goto_5

    :cond_f
    move p1, v0

    :goto_5
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_10

    iget-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lf1/W;->a(Landroid/view/View;)Lf1/Z;

    move-result-object p1

    invoke-virtual {p1, v2}, Lf1/Z;->a(F)V

    iput-object p1, p0, Lm/w;->y:Lf1/Z;

    new-instance v0, Lm/r;

    invoke-direct {v0, v1, p0}, Lm/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lf1/Z;->d(Lf1/a0;)V

    goto :goto_6

    :cond_10
    iget-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/M;->c(Landroid/view/View;)V

    :cond_11
    :goto_6
    iget-object p1, p0, Lm/w;->w:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lm/w;->x:Lm/q;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_12
    iput-object v4, p0, Lm/w;->u:Lr/b;

    :cond_13
    :goto_7
    iget-object p1, p0, Lm/w;->u:Lr/b;

    if-eqz p1, :cond_14

    invoke-interface {v3, p1}, Lm/o;->onSupportActionModeStarted(Lr/b;)V

    :cond_14
    invoke-virtual {p0}, Lm/w;->L()V

    iget-object p1, p0, Lm/w;->u:Lr/b;

    iput-object p1, p0, Lm/w;->u:Lr/b;

    :cond_15
    invoke-virtual {p0}, Lm/w;->L()V

    iget-object p0, p0, Lm/w;->u:Lr/b;

    return-object p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActionMode callback can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(ZZ)Z
    .locals 27

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lm/w;->f0:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget v0, v1, Lm/w;->h0:I

    const/16 v3, -0x64

    if-eq v0, v3, :cond_1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    sget v0, Lm/p;->b:I

    goto :goto_0

    :goto_1
    iget-object v4, v1, Lm/w;->k:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Lm/w;->F(ILandroid/content/Context;)I

    move-result v5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const/4 v7, 0x0

    if-ge v0, v6, :cond_2

    invoke-static {v4}, Lm/w;->s(Landroid/content/Context;)Lb1/e;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v7

    :goto_2
    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb1/e;->a(Ljava/lang/String;)Lb1/e;

    move-result-object v0

    :cond_3
    move-object v6, v0

    invoke-static {v4, v5, v6, v7, v2}, Lm/w;->w(Landroid/content/Context;ILb1/e;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v8

    iget-boolean v0, v1, Lm/w;->k0:Z

    iget-object v15, v1, Lm/w;->j:Ljava/lang/Object;

    const-string v14, "AppCompatDelegate"

    const/4 v13, 0x1

    if-nez v0, :cond_5

    instance-of v0, v15, Landroid/app/Activity;

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    :try_start_0
    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x100c0000

    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, v1, Lm/w;->j0:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v9, "Exception while getting ActivityInfo"

    invoke-static {v14, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v2, v1, Lm/w;->j0:I

    :cond_5
    :goto_3
    iput-boolean v13, v1, Lm/w;->k0:Z

    iget v0, v1, Lm/w;->j0:I

    :goto_4
    iget-object v9, v1, Lm/w;->g0:Landroid/content/res/Configuration;

    if-nez v9, :cond_6

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    :cond_6
    iget v10, v9, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, 0x30

    iget v11, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v12, v11, 0x30

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lb1/e;->a(Ljava/lang/String;)Lb1/e;

    move-result-object v11

    if-nez v6, :cond_7

    move-object v9, v7

    goto :goto_5

    :cond_7
    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lb1/e;->a(Ljava/lang/String;)Lb1/e;

    move-result-object v9

    :goto_5
    if-eq v10, v12, :cond_8

    const/16 v16, 0x200

    move/from16 v2, v16

    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v11, v9}, Lb1/e;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    or-int/lit16 v2, v2, 0x2004

    :cond_9
    not-int v13, v0

    and-int/2addr v13, v2

    if-eqz v13, :cond_a

    if-eqz p1, :cond_a

    iget-boolean v13, v1, Lm/w;->d0:Z

    if-eqz v13, :cond_a

    sget-boolean v13, Lm/w;->z0:Z

    if-nez v13, :cond_b

    iget-boolean v7, v1, Lm/w;->e0:Z

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v26, v3

    move-object v3, v9

    move/from16 v25, v12

    move-object/from16 p1, v15

    goto/16 :goto_a

    :cond_b
    :goto_6
    instance-of v7, v15, Landroid/app/Activity;

    if-eqz v7, :cond_a

    move-object v7, v15

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isChild()Z

    move-result v16

    if-nez v16, :cond_a

    move-object/from16 v16, v9

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v17, v14

    const/16 v14, 0x1f

    if-lt v9, v14, :cond_c

    and-int/lit16 v9, v2, 0x2000

    if-eqz v9, :cond_c

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    and-int/lit16 v8, v0, 0x200

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    and-int/lit8 v14, v0, 0x4

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    goto :goto_8

    :cond_e
    const/4 v14, 0x0

    :goto_8
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move/from16 v18, v12

    and-int/lit16 v12, v0, 0x2000

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    goto :goto_9

    :cond_f
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    iget-boolean v12, v1, Lm/w;->d0:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-boolean v12, v1, Lm/w;->e0:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v13, v16

    move/from16 v25, v18

    move-object v12, v13

    move/from16 v26, v3

    move-object v3, v13

    move-object v13, v8

    move-object/from16 v8, v17

    move-object/from16 p1, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, p1

    move-object/from16 v20, v24

    filled-new-array/range {v9 .. v20}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "updateAppConfiguration attempting to recreate Activity [currentNightMode:%s, newNightMode:%s, currentLocales:%s, newLocales:%s, activityHandlingNightModeChanges:%s, activityHandlingLocalesChanges:%s, activityHandlingLayoutDirectionChanges:%s, baseContextAttached:%s, created:%s, canReturnDifferentContext:%s, host:%s], application configuration [%s]"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/app/Activity;->recreate()V

    const/4 v13, 0x1

    goto :goto_b

    :goto_a
    const/4 v13, 0x0

    :goto_b
    if-nez v13, :cond_15

    if-eqz v2, :cond_15

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_10

    const/16 v21, 0x1

    goto :goto_c

    :cond_10
    const/16 v21, 0x0

    :goto_c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, -0x31

    or-int v8, v25, v8

    iput v8, v7, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v3, :cond_11

    iget-object v8, v3, Lb1/e;->a:Lb1/f;

    iget-object v8, v8, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v8}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_11
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget v0, v1, Lm/w;->i0:I

    if-eqz v0, :cond_12

    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v8, v1, Lm/w;->i0:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_d

    :cond_12
    const/4 v9, 0x1

    :goto_d
    move-object/from16 v8, p1

    if-eqz v21, :cond_14

    instance-of v0, v8, Landroid/app/Activity;

    if-eqz v0, :cond_14

    move-object v15, v8

    check-cast v15, Landroid/app/Activity;

    instance-of v0, v15, Landroidx/lifecycle/J;

    if-eqz v0, :cond_13

    move-object v0, v15

    check-cast v0, Landroidx/lifecycle/J;

    invoke-interface {v0}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/L;

    iget-object v0, v0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v10, Landroidx/lifecycle/C;->CREATED:Landroidx/lifecycle/C;

    invoke-virtual {v0, v10}, Landroidx/lifecycle/C;->a(Landroidx/lifecycle/C;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v15, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_e

    :cond_13
    iget-boolean v0, v1, Lm/w;->e0:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Lm/w;->f0:Z

    if-nez v0, :cond_14

    invoke-virtual {v15, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_14
    :goto_e
    move v13, v9

    goto :goto_f

    :cond_15
    move-object/from16 v8, p1

    :goto_f
    if-eqz v13, :cond_17

    instance-of v0, v8, Lm/n;

    if-eqz v0, :cond_17

    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_16

    move-object v15, v8

    check-cast v15, Lm/n;

    invoke-virtual {v15, v5}, Lm/n;->onNightModeChanged(I)V

    :cond_16
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_17

    move-object v15, v8

    check-cast v15, Lm/n;

    invoke-virtual {v15, v6}, Lm/n;->onLocalesChanged(Lb1/e;)V

    :cond_17
    if-eqz v3, :cond_18

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb1/e;->a(Ljava/lang/String;)Lb1/e;

    move-result-object v0

    iget-object v0, v0, Lb1/e;->a:Lb1/f;

    iget-object v0, v0, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    :cond_18
    if-nez v26, :cond_19

    invoke-virtual {v1, v4}, Lm/w;->B(Landroid/content/Context;)LJ8/i;

    move-result-object v0

    invoke-virtual {v0}, LJ8/i;->r()V

    goto :goto_10

    :cond_19
    iget-object v0, v1, Lm/w;->l0:Lm/t;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, LJ8/i;->e()V

    :cond_1a
    :goto_10
    const/4 v0, 0x3

    move/from16 v2, v26

    if-ne v2, v0, :cond_1c

    iget-object v0, v1, Lm/w;->m0:Lm/t;

    if-nez v0, :cond_1b

    new-instance v0, Lm/t;

    invoke-direct {v0, v1, v4}, Lm/t;-><init>(Lm/w;Landroid/content/Context;)V

    iput-object v0, v1, Lm/w;->m0:Lm/t;

    :cond_1b
    iget-object v0, v1, Lm/w;->m0:Lm/t;

    invoke-virtual {v0}, LJ8/i;->r()V

    goto :goto_11

    :cond_1c
    iget-object v0, v1, Lm/w;->m0:Lm/t;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, LJ8/i;->e()V

    :cond_1d
    :goto_11
    return v13
.end method

.method public final r(Landroid/view/Window;)V
    .locals 7

    iget-object v0, p0, Lm/w;->l:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Lm/s;

    if-nez v2, :cond_5

    new-instance v1, Lm/s;

    invoke-direct {v1, p0, v0}, Lm/s;-><init>(Lm/w;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lm/w;->m:Lm/s;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    sget-object v0, Lm/w;->y0:[I

    iget-object v1, p0, Lm/w;->k:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lt/w;->a()Lt/w;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lt/w;->a:Lt/z0;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v3, v6}, Lt/z0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lm/w;->l:Landroid/view/Window;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lm/w;->u0:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lm/w;->v0:Landroidx/activity/x;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lj9/b;->e(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    invoke-static {p1, v0}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    iput-object v2, p0, Lm/w;->v0:Landroidx/activity/x;

    :cond_2
    iget-object p1, p0, Lm/w;->j:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lj9/b;->d(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Lm/w;->u0:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lm/w;->u0:Landroid/window/OnBackInvokedDispatcher;

    :goto_1
    invoke-virtual {p0}, Lm/w;->L()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t(ILm/v;Ls/i;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lm/w;->Y:[Lm/v;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Lm/v;->h:Ls/i;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lm/v;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Lm/w;->f0:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lm/w;->m:Lm/s;

    iget-object p0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p2, Lm/s;->e:Z

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p2, Lm/s;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    iput-boolean v1, p2, Lm/s;->e:Z

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final u(Ls/i;)V
    .locals 2

    iget-boolean v0, p0, Lm/w;->X:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/w;->X:Z

    iget-object v0, p0, Lm/w;->r:Lt/Z;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast v0, Lt/l1;

    iget-object v0, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    iget-object v0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lm/w;->f0:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lm/w;->X:Z

    return-void
.end method

.method public final v(Lm/v;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Lm/v;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lm/w;->r:Lt/Z;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast v0, Lt/l1;

    iget-object v0, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lm/v;->h:Ls/i;

    invoke-virtual {p0, p1}, Lm/w;->u(Ls/i;)V

    return-void

    :cond_0
    iget-object v0, p0, Lm/w;->k:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p1, Lm/v;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lm/v;->e:Lm/u;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lm/v;->e:Lm/u;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p1, Lm/v;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lm/w;->t(ILm/v;Ls/i;)V

    :cond_2
    const/4 p2, 0x0

    iput-boolean p2, p1, Lm/v;->k:Z

    iput-boolean p2, p1, Lm/v;->l:Z

    iput-boolean p2, p1, Lm/v;->m:Z

    iput-object v1, p1, Lm/v;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lm/v;->n:Z

    iget-object p2, p0, Lm/w;->Z:Lm/v;

    if-ne p2, p1, :cond_3

    iput-object v1, p0, Lm/w;->Z:Lm/v;

    :cond_3
    iget p1, p1, Lm/v;->a:I

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lm/w;->L()V

    :cond_4
    return-void
.end method

.method public final x(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lm/w;->j:Ljava/lang/Object;

    instance-of v1, v0, Lf1/k;

    if-nez v1, :cond_0

    instance-of v0, v0, Lm/y;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x52

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lm/w;->m:Lm/s;

    iget-object v4, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v3, v0, Lm/s;->d:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, v0, Lm/s;->d:Z

    if-eqz v4, :cond_2

    return v3

    :catchall_0
    move-exception p0

    iput-boolean v1, v0, Lm/s;->d:Z

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_7

    if-eq v0, v5, :cond_5

    if-eq v0, v2, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lm/w;->C(I)Lm/v;

    move-result-object v0

    iget-boolean v1, v0, Lm/v;->m:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, v0, p1}, Lm/w;->J(Lm/v;Landroid/view/KeyEvent;)Z

    :cond_4
    :goto_0
    move v1, v3

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lm/w;->c0:Z

    goto/16 :goto_5

    :cond_7
    if-eq v0, v5, :cond_11

    if-eq v0, v2, :cond_8

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lm/w;->u:Lr/b;

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v1}, Lm/w;->C(I)Lm/v;

    move-result-object v0

    iget-object v2, p0, Lm/w;->r:Lt/Z;

    iget-object v4, p0, Lm/w;->k:Landroid/content/Context;

    if-eqz v2, :cond_b

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast v2, Lt/l1;

    iget-object v2, v2, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lm/w;->r:Lt/Z;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast v2, Lt/l1;

    iget-object v2, v2, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lm/w;->f0:Z

    if-nez v2, :cond_e

    invoke-virtual {p0, v0, p1}, Lm/w;->J(Lm/v;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lm/w;->r:Lt/Z;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast p0, Lt/l1;

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result p0

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lm/w;->r:Lt/Z;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lt/a0;

    check-cast p0, Lt/l1;

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    move-result p0

    goto :goto_4

    :cond_b
    iget-boolean v2, v0, Lm/v;->m:Z

    if-nez v2, :cond_f

    iget-boolean v5, v0, Lm/v;->l:Z

    if-eqz v5, :cond_c

    goto :goto_3

    :cond_c
    iget-boolean v2, v0, Lm/v;->k:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lm/v;->o:Z

    if-eqz v2, :cond_d

    iput-boolean v1, v0, Lm/v;->k:Z

    invoke-virtual {p0, v0, p1}, Lm/w;->J(Lm/v;Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    :cond_d
    move v2, v3

    :goto_2
    if-eqz v2, :cond_e

    invoke-virtual {p0, v0, p1}, Lm/w;->H(Lm/v;Landroid/view/KeyEvent;)V

    move p0, v3

    goto :goto_4

    :cond_e
    move p0, v1

    goto :goto_4

    :cond_f
    :goto_3
    invoke-virtual {p0, v0, v3}, Lm/w;->v(Lm/v;Z)V

    move p0, v2

    :goto_4
    if-eqz p0, :cond_4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_10
    const-string p0, "AppCompatDelegate"

    const-string p1, "Couldn\'t get audio manager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lm/w;->G()Z

    move-result p0

    if-eqz p0, :cond_12

    goto/16 :goto_0

    :cond_12
    :goto_5
    return v1
.end method

.method public final y(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lm/w;->C(I)Lm/v;

    move-result-object v0

    iget-object v1, v0, Lm/v;->h:Ls/i;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lm/v;->h:Ls/i;

    invoke-virtual {v2, v1}, Ls/i;->t(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lm/v;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lm/v;->h:Ls/i;

    invoke-virtual {v1}, Ls/i;->w()V

    iget-object v1, v0, Lm/v;->h:Ls/i;

    invoke-virtual {v1}, Ls/i;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lm/v;->o:Z

    iput-boolean v1, v0, Lm/v;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lm/w;->r:Lt/Z;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lm/w;->C(I)Lm/v;

    move-result-object v0

    iput-boolean p1, v0, Lm/v;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lm/w;->J(Lm/v;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final z()V
    .locals 12

    const/16 v0, 0x12

    iget-boolean v1, p0, Lm/w;->z:Z

    if-nez v1, :cond_1c

    sget-object v1, Lk/a;->j:[I

    iget-object v2, p0, Lm/w;->k:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x91

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v5, 0x9a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v7, 0x6c

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {p0, v8}, Lm/w;->j(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v7}, Lm/w;->j(I)Z

    :cond_1
    :goto_0
    const/16 v4, 0x92

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v5, 0x6d

    if-eqz v4, :cond_2

    invoke-virtual {p0, v5}, Lm/w;->j(I)Z

    :cond_2
    const/16 v4, 0x93

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lm/w;->j(I)Z

    :cond_3
    invoke-virtual {v3, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lm/w;->I:Z

    const/16 v4, 0x56

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lm/w;->w0:Z

    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lm/w;->A()V

    iget-object v3, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-boolean v4, p0, Lm/w;->J:Z

    const/4 v9, 0x0

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lm/w;->I:Z

    if-eqz v4, :cond_5

    const v4, 0x7f0e0848

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-boolean v6, p0, Lm/w;->G:Z

    iput-boolean v6, p0, Lm/w;->F:Z

    goto/16 :goto_2

    :cond_5
    iget-boolean v3, p0, Lm/w;->F:Z

    if-eqz v3, :cond_9

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v10, 0x7f04000c

    invoke-virtual {v4, v10, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_6

    new-instance v4, Lr/d;

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v4, v2, v3}, Lr/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    move-object v4, v2

    :goto_1
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e0870

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0b03d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lt/Z;

    iput-object v4, p0, Lm/w;->r:Lt/Z;

    iget-object v10, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v10

    invoke-interface {v4, v10}, Lt/Z;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v4, p0, Lm/w;->G:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lm/w;->r:Lt/Z;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c(I)V

    :cond_7
    iget-boolean v4, p0, Lm/w;->D:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lm/w;->r:Lt/Z;

    const/4 v5, 0x2

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c(I)V

    :cond_8
    iget-boolean v4, p0, Lm/w;->E:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lm/w;->r:Lt/Z;

    const/4 v5, 0x5

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c(I)V

    goto :goto_2

    :cond_9
    move-object v3, v9

    goto :goto_2

    :cond_a
    iget-boolean v4, p0, Lm/w;->H:Z

    if-eqz v4, :cond_b

    const v4, 0x7f0e086f

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_b
    const v4, 0x7f0e086e

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :cond_c
    :goto_2
    if-eqz v3, :cond_1a

    new-instance v4, LI3/d;

    invoke-direct {v4, v0, p0}, LI3/d;-><init>(ILjava/lang/Object;)V

    sget-object v5, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v3, v4}, Lf1/O;->m(Landroid/view/View;Lf1/v;)V

    iget-object v4, p0, Lm/w;->r:Lt/Z;

    if-nez v4, :cond_d

    const v4, 0x7f0b0d66

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lm/w;->B:Landroid/widget/TextView;

    :cond_d
    const-string v4, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v5, "ViewUtils"

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "makeOptionalFitsSystemWindows"

    invoke-virtual {v10, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v10, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3

    :catch_0
    move-exception v10

    goto :goto_4

    :catch_1
    move-exception v10

    goto :goto_5

    :cond_e
    :goto_3
    invoke-virtual {v10, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    invoke-static {v5, v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    invoke-static {v5, v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v4, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const v4, 0x7f0b0049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v5, p0, Lm/w;->l:Landroid/view/Window;

    const v10, 0x1020002

    invoke-virtual {v5, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_10

    :goto_7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_f
    const/4 v11, -0x1

    invoke-virtual {v5, v11}, Landroid/view/View;->setId(I)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setId(I)V

    instance-of v11, v5, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_10

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object v5, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v5, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v5, LJ7/c;

    invoke-direct {v5, v0, p0}, LJ7/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Lt/Y;)V

    iput-object v3, p0, Lm/w;->A:Landroid/view/ViewGroup;

    iget-object v0, p0, Lm/w;->j:Ljava/lang/Object;

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_11

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lm/w;->q:Ljava/lang/CharSequence;

    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lm/w;->r:Lt/Z;

    if-eqz v3, :cond_12

    invoke-interface {v3, v0}, Lt/Z;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    iget-object v3, p0, Lm/w;->o:Lm/b;

    if-eqz v3, :cond_13

    invoke-virtual {v3, v0}, Lm/b;->x(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_13
    iget-object v3, p0, Lm/w;->B:Landroid/widget/TextView;

    if-eqz v3, :cond_14

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_9
    iget-object v0, p0, Lm/w;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v3, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v10, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v10, v4, v5, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_15
    invoke-virtual {v2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x98

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x99

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v2, 0x97

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v2, 0x94

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    const/16 v2, 0x95

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iput-boolean v8, p0, Lm/w;->z:Z

    invoke-virtual {p0, v6}, Lm/w;->C(I)Lm/v;

    move-result-object v0

    iget-boolean v1, p0, Lm/w;->f0:Z

    if-nez v1, :cond_1c

    iget-object v0, v0, Lm/v;->h:Ls/i;

    if-nez v0, :cond_1c

    invoke-virtual {p0, v7}, Lm/w;->E(I)V

    goto :goto_a

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lm/w;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lm/w;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lm/w;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lm/w;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lm/w;->J:Z

    const-string v2, " }"

    invoke-static {v2, v1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->k(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "createSubDecor: mContext = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppCompatDelegate"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_a
    return-void
.end method
